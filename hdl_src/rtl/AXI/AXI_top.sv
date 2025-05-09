//include "AXI_package.sv"
import AXI_package::*;

//component intended to decouple the regex_coprocessor and the AXI interface.
//It contains the memory of the regex_coprocessor so that is possible to show outside the content of the memory
//It implements some commands that are intended to drive the regex_coprocessor and other component from software. 

module AXI_top #(
    parameter BB_N                      = 1,
    parameter CC_ID_BITS                = 3
)
(
    input  logic                 clk,
    input  logic                 rst,
    input  logic [REG_WIDTH-1:0] data_in_register,
    input  logic [REG_WIDTH-1:0] address_register,
//  input  logic [REG_WIDTH-1:0] start_pc_register,
    input  logic [REG_WIDTH-1:0] start_cc_pointer_register,
    input  logic [REG_WIDTH-1:0] end_cc_pointer_register,
    input  logic [REG_WIDTH-1:0] cmd_register,
    output logic [REG_WIDTH-1:0] status_register,
    output logic [REG_WIDTH-1:0] data_o_register
);

localparam CHARACTER_WIDTH           = 8;
// This constant is also used in the engine, but is not properly propagated!
localparam INSTRUCTION_SIZE          = 16;

`define max(a,b) ((a) > (b) ? (a) : (b))

logic rst_master;
///// AXI
logic [REG_WIDTH-1:0]   status_register_next;

///// BRAM
parameter BRAM_WRITE_WIDTH           = 32;
parameter BRAM_WRITE_ADDR_WIDTH      = 10;
parameter BRAM_READ_WIDTH = `max(64, CHARACTER_WIDTH * (2 ** CC_ID_BITS));
// Solve for x (=BRAM_READ_ADDR_WIDTH) in the equation:
// 2^x * BRAM_READ_WIDTH = 2^BRAM_WRITE_ADDR_WIDTH * BRAM_WRITE_WIDTH
// => x = log2(2^BRAM_WRITE_ADDR_WIDTH * BRAM_WRITE_WIDTH / BRAM_READ_WIDTH)
parameter BRAM_READ_ADDR_WIDTH       = $clog2((2 ** BRAM_WRITE_ADDR_WIDTH) * BRAM_WRITE_WIDTH / BRAM_READ_WIDTH);

if ( (2**BRAM_READ_ADDR_WIDTH) * BRAM_READ_WIDTH != (2**BRAM_WRITE_ADDR_WIDTH) * BRAM_WRITE_WIDTH )
    $fatal("Addressable write space is different from addressable read space");


localparam BYTE_ADDR_OFFSET_IN_REG   =  $clog2(BRAM_READ_WIDTH/REG_WIDTH);

logic     [ BRAM_READ_WIDTH       -1:0 ] bram_r;
logic     [ BRAM_READ_ADDR_WIDTH  -1:0 ] bram_r_addr;
logic                                    bram_r_valid;
logic     [ BRAM_WRITE_ADDR_WIDTH -1:0 ] bram_w_addr;
logic     [ BRAM_WRITE_WIDTH      -1:0 ] bram_w;
logic                                    bram_w_valid;

///// Coprocessor
localparam BB_N_X                    = 0;
localparam BB_N_Y                    = 0;
localparam FIFO_COUNT_WIDTH          = 5;
localparam CHANNEL_COUNT_WIDTH       = 4;
localparam LATENCY_COUNT_WIDTH       = FIFO_COUNT_WIDTH + CC_ID_BITS;
localparam CACHE_WIDTH_BITS          = 4;
localparam CACHE_BLOCK_WIDTH_BITS    = `max(2, $clog2(BRAM_READ_WIDTH / INSTRUCTION_SIZE));
localparam BASIC_BLOCK_PIPELINED     = 1;
localparam PC_WIDTH                  = 9;


logic                                   memory_addr_from_coprocessor_ready;
logic     [ BRAM_READ_ADDR_WIDTH-1:0]   memory_addr_from_coprocessor;
logic                                   memory_addr_from_coprocessor_valid;
logic                                   start_valid,start_ready, done, accept, error;
//logic             [PC_WIDTH-1:0] start_pc; 


/////performance counters
logic     [REG_WIDTH-1:0]               elapsed_cc, elapsed_cc_next;
logic     [FIFO_COUNT_WIDTH-1:0]        max_fifo_data[(2**CC_ID_BITS)-1:0];
logic     [31:0]                        cache_hits[(2**CC_ID_BITS)-1:0];   
logic     [31:0]                        cache_miss[(2**CC_ID_BITS)-1:0];   
logic     [31: 0]                       fetch_ccs[(2 ** CC_ID_BITS) -1:0];
logic     [31: 0]                       exe1_ccs[(2 ** CC_ID_BITS) -1:0];
logic     [31: 0]                       exe2_ccs[(2 ** CC_ID_BITS) -1:0];  


assign rst_master = rst || (cmd_register==CMD_RESET);

///// Sequential logic 
always_ff @(posedge clk) 
begin 
    if(rst_master == 1'b1)
    begin
        status_register <= STATUS_IDLE;
        elapsed_cc      <= {(REG_WIDTH){1'b0}};
    end
    else
    begin
        status_register <= status_register_next;
        elapsed_cc      <= elapsed_cc_next;
    end
end

//// Combinational logic

always_comb 
begin
    status_register_next               = status_register;

    elapsed_cc_next                    = elapsed_cc;

    data_o_register                    = {(REG_WIDTH        ){1'b0} };

    bram_r_addr                        = { (BRAM_READ_ADDR_WIDTH)  {1'b0} };
    bram_r_valid                       = 1'b0;
    bram_w_addr                        = { (BRAM_WRITE_ADDR_WIDTH) {1'b0} };
    bram_w                             = { (BRAM_WRITE_WIDTH){1'b0} };
    bram_w_valid                       = 1'b0;

    memory_addr_from_coprocessor_ready = 1'b0;
    
    start_valid                        = 1'b0;

    case(status_register)
    STATUS_IDLE:
    begin   
        case(cmd_register) 
            CMD_WRITE: // to write the content of memory write in sequence addr_0, cmd_write, data_0, 
            begin      // addr_1, data_1, ..., cmd_nop.
                
                bram_w_addr         = address_register[0+:BRAM_WRITE_ADDR_WIDTH]; //use low
                bram_w_valid        = 1'b1;
                bram_w              = data_in_register[0+:BRAM_WRITE_WIDTH];
            end
            CMD_READ:
            begin      
                bram_r_addr         = address_register[BYTE_ADDR_OFFSET_IN_REG+:BRAM_READ_ADDR_WIDTH]; //use low
                bram_r_valid        = 1'b1;
                memory_addr_from_coprocessor_ready = 1'b0;
                data_o_register     = bram_r[address_register[0+:BYTE_ADDR_OFFSET_IN_REG]*REG_WIDTH+:REG_WIDTH];
            end
            CMD_START:
            begin
                //start_pc            = start_pc_register[0+:PC_WIDTH];
                start_valid         = 1'b1;
                bram_r_addr         = memory_addr_from_coprocessor;
                bram_r_valid        = memory_addr_from_coprocessor_valid;
                memory_addr_from_coprocessor_ready = 1'b1;
                elapsed_cc_next     = {(REG_WIDTH){1'b0}};

                if( start_ready )
                begin
                    status_register_next = STATUS_RUNNING;
                end
            end
            CMD_READ_ELAPSED_CLOCK:
            begin
                data_o_register     = elapsed_cc;
            end
        endcase
    end
    STATUS_ACCEPTED, STATUS_REJECTED, STATUS_ERROR:
    begin   
        case(cmd_register)
        CMD_WRITE: // to write the content of memory write in sequence addr_0, cmd_write, data_0, 
        begin      // addr_1, data_1, ..., cmd_nop.
            
            bram_w_addr         = address_register[0+:BRAM_WRITE_ADDR_WIDTH]; //use low
            bram_w_valid        = 1'b1;
            bram_w              = data_in_register[0+:BRAM_WRITE_WIDTH];
        end
        CMD_READ:
        begin      
            bram_r_addr         = address_register[BYTE_ADDR_OFFSET_IN_REG+:BRAM_READ_ADDR_WIDTH]; //use low
            bram_r_valid        = 1'b1;
            memory_addr_from_coprocessor_ready = 1'b0;
            data_o_register     = bram_r[address_register[0+:BYTE_ADDR_OFFSET_IN_REG]*REG_WIDTH+:REG_WIDTH];
        end
        CMD_RESTART:
        begin
            status_register_next = STATUS_IDLE;
        end
        CMD_READ_ELAPSED_CLOCK:
        begin
            data_o_register     = elapsed_cc;
        end
        CMD_READ_FIFO_COUNT:
        begin
            if(data_in_register < 2**CC_ID_BITS)
            begin
                data_o_register     = max_fifo_data[data_in_register];
            end
        end
        CMD_READ_CACHE_HITS:
        begin
            if(data_in_register < 2**CC_ID_BITS)
            begin
                data_o_register     = cache_hits[data_in_register];
            end
        end
        CMD_READ_CACHE_MISS:
        begin
            if(data_in_register < 2**CC_ID_BITS)
            begin
                data_o_register     = cache_miss[data_in_register];
            end
        end
        CMD_READ_FETCH_CLOCK:
        begin
            if(data_in_register < 2**CC_ID_BITS)
            begin
                data_o_register     = fetch_ccs[data_in_register];
            end
        end
        CMD_READ_EXE1_CLOCK:
        begin
            if(data_in_register < 2**CC_ID_BITS)
            begin
                data_o_register     = exe1_ccs[data_in_register];
            end
        end
        CMD_READ_EXE2_CLOCK:
        begin
            if(data_in_register < 2**CC_ID_BITS)
            begin
                data_o_register     = exe2_ccs[data_in_register];
            end
        end
        endcase
    end
    STATUS_RUNNING:
    begin 
        // leave memory control to coprocessor
        bram_r_addr          = memory_addr_from_coprocessor;
        bram_r_valid         = memory_addr_from_coprocessor_valid;
        memory_addr_from_coprocessor_ready = 1'b1;
        if(error)
        begin
            status_register_next = STATUS_ERROR;
        end
        else if( done )
        begin
            if(accept)  status_register_next = STATUS_ACCEPTED;
            else        status_register_next = STATUS_REJECTED;
        end
        

        if (&elapsed_cc == 1'b0)   
        begin //if counter has not saturated
            elapsed_cc_next = elapsed_cc + 1;
        end                             
    end
    endcase

end

//////////////////////////
//   Module instances   //
//////////////////////////

bram #(
    .READ_WIDTH      ( BRAM_READ_WIDTH      ),            
    .READ_ADDR_WIDTH ( BRAM_READ_ADDR_WIDTH ),            
    .WRITE_WIDTH     ( BRAM_WRITE_WIDTH     ),       
    .WRITE_ADDR_WIDTH( BRAM_WRITE_ADDR_WIDTH)   
) abram (
    .clk             (     clk               ),
    .rst             (     rst_master      ),
    .r_addr          (     bram_r_addr       ),
    .r_data          (     bram_r            ),
    .r_valid         (     bram_r_valid      ),
    .w_addr          (     bram_w_addr       ),
    .w_data          (     bram_w            ),
    .w_valid         (     bram_w_valid      )
);

coprocessor_top#(
    .PC_WIDTH               (PC_WIDTH                               ),
    .CHARACTER_WIDTH        (CHARACTER_WIDTH                        ),
    .MEMORY_WIDTH           (BRAM_READ_WIDTH                        ),
    .MEMORY_ADDR_WIDTH      (BRAM_READ_ADDR_WIDTH                   ), 
    .LATENCY_COUNT_WIDTH    (LATENCY_COUNT_WIDTH                    ),
    .FIFO_COUNT_WIDTH       (FIFO_COUNT_WIDTH                       ),
    .CHANNEL_COUNT_WIDTH    (CHANNEL_COUNT_WIDTH                    ),
    .BB_N                   (BB_N                                   ),
    .BB_N_X                 (BB_N_X                                 ),
    .BB_N_Y                 (BB_N_Y                                 ),
    .CACHE_BLOCK_WIDTH_BITS (CACHE_BLOCK_WIDTH_BITS                 ),      
    .CACHE_WIDTH_BITS       (CACHE_WIDTH_BITS                       ),
    .BASIC_BLOCK_PIPELINED  (BASIC_BLOCK_PIPELINED                  ),
    .REG_WIDTH              (REG_WIDTH                              ),
    .CC_ID_BITS             (CC_ID_BITS                             )
)a_regex_coprocessor (
    .clk                    (clk                                    ),
    .rst                    (rst_master                             ),
    .memory_ready           (memory_addr_from_coprocessor_ready     ),
    .memory_addr            (memory_addr_from_coprocessor           ),
    .memory_data            (bram_r                                 ),
    .memory_valid           (memory_addr_from_coprocessor_valid     ),
    .ready                  (start_ready                            ),
    .valid                  (start_valid                            ),
    .done                   (done                                   ),
    .accept                 (accept                                 ),
    .error                  (error                                  ),
    .start_cc_pointer       (start_cc_pointer_register              ),
    .end_cc_pointer         (end_cc_pointer_register                ),
    .max_fifo_data          (max_fifo_data                          ),
    .cache_hits             (cache_hits                             ),
    .cache_miss             (cache_miss                             ),
    .fetch_ccs              (fetch_ccs),
    .exe1_ccs               (exe1_ccs),
    .exe2_ccs               (exe2_ccs)
);

endmodule
