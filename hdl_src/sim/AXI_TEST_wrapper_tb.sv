`timescale 1ns / 1ps

import axi_vip_pkg::*;
import AXI_TEST_axi_vip_0_0_pkg::*;
import AXI_TEST_axi_vip_1_0_pkg::*;

import AXI_package::*;
import instruction_package::*;

bit aclk = 0, aresetn = 0;

xil_axi_resp_t 	resp;
bit[31:0]  addr, data, base_addr = 32'hA000_0000, switch_state;

module AXI_TEST_wrapper_tb();
    parameter CLOCK_SEMI_PERIOD = 5  ;
    parameter CC_ID_BITS =        3  ;
    parameter BB_N = 1;

AXI_TEST_wrapper UUT
(
    .clk                (aclk),
    .reset              (aresetn)
);

always #5ns aclk = ~aclk;

initial begin
    //Assert the reset
    aresetn = 0;
    #340ns
    // Release the reset
    aresetn = 1;
end

AXI_TEST_axi_vip_0_0_mst_t          master_agent;
AXI_TEST_axi_vip_1_0_slv_mem_t      slave_agent;

task write_file( int fp,
                     input  reg [REG_WIDTH-1:0] start_address ,
                     output reg [REG_WIDTH-1:0] address);
    begin
        int c;
        reg [INSTRUCTION_WIDTH-1:0] instr_0, instr_1;
        reg [REG_WIDTH-1:0] data;
        reg [REG_WIDTH-1:0] address_register;
        reg                 flag;
        
        flag    = 1'b1;  
        address = start_address;
        
        while (! $feof(fp)) 
        begin
            //SCAN FILE 
            c = $fscanf(fp,"%x\n", instr_0);
            if( ! $feof(fp) )
            begin
                c = $fscanf(fp,"%x\n", instr_1);
            end
            else
            begin
                instr_1         = {INSTRUCTION_WIDTH{1'b0}};
            end
            //$display("%h,%h", instr_1, instr_0);

            //BUILD INSTRUCTION
            data              = {instr_1, instr_0};
            //SET ADDRESS
            address_register  = address + 32'h4000_0000;

            slave_agent.mem_model.backdoor_memory_write  (
              .addr (address_register),
              .payload (data),
              .strb (4'b1111)
            );

            address += 4;
        end
    end
endtask

task write_string_file( int fp,
                     input  reg [REG_WIDTH-1:0] start_address ,
                     output reg [REG_WIDTH-1:0] address_cur );
    begin
        int bytes_read;
        reg [7:0]           c [3:0];
        reg [REG_WIDTH-1:0]   data;
        reg [REG_WIDTH-1:0] address_register;
        reg                   flag;
        reg [REG_WIDTH-1:0] tmp_address;
        flag    = 1'b1;  
        tmp_address  = start_address;
        address_cur  = start_address;
        
        while (! $feof(fp)) 
        begin
            for(int i = 0; i < 4 ; i++)
            begin
                if( ! $feof(fp))
                begin
                    bytes_read = $fscanf(fp,"%d\n", c[i]);
                    tmp_address+=1;
                    if(bytes_read == -1)begin
                        c[i] = {8{1'b0}};
                        
                    end
                end
                else
                begin
                    c[i]       = {8{1'b0}};
                end
            end
                
            $display("%d,%d,%d,%d",c[3], c[2], c[1], c[0]);
            //PACKING 4 chars at a time
            data                = {c[3], c[2], c[1], c[0]};
            //SET ADDRESS
            address_register  = address_cur + 32'h4000_0000;

            slave_agent.mem_model.backdoor_memory_write  (
              .addr (address_register),
              .payload (data),
              .strb (4'b1111)
            );
            address_cur        = tmp_address;
        end
        
    end
endtask

task read_status(output logic [32-1:0] status);
  begin
    master_agent.AXI4LITE_READ_BURST(base_addr + 32'h5*4,0,data,resp);
    status = data;
  end
endtask

task wait_status(input  reg [REG_WIDTH-1:0] status);
    begin
        reg [REG_WIDTH-1:0] status_out;
        read_status(status_out);
        while( status_out != status )
        begin
            read_status(status_out);
            @(posedge aclk);
        end 
    end
endtask

task check_memory();
    integer i;
    begin
        xil_axi_ulong mem_rd_addr;
		bit [32-1:0] mem_rd_data;
        for (i = 0 ; i < 4096 ; i=i+4 ) begin
            mem_rd_addr = 32'h4000_0000 + i;
            mem_rd_data = slave_agent.mem_model.backdoor_memory_read(mem_rd_addr);
            $display("rd_addr = %h, data = %h",mem_rd_addr,mem_rd_data);
        end

    end
endtask

task write(input logic [32-1:0] data_in, input logic [32-1:0] addr_in);
begin
    addr = addr_in;
    data = data_in;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
end
endtask

task read(input logic [32-1:0] addr);
  begin
  
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    $display("%h", data);
    
  end
  endtask

initial begin
    int fp_code , fp_string;
    reg [REG_WIDTH-1:0] start_code  ,   end_code;
    reg [REG_WIDTH-1:0] start_string,   end_string;
    reg [REG_WIDTH-1:0] cc_taken;
    reg [REG_WIDTH-1:0] fifoSize;
    reg [REG_WIDTH-1:0] fifoFulls;

    reg [REG_WIDTH-1:0] cache_miss;
    reg [REG_WIDTH-1:0] cache_hits;

    reg [REG_WIDTH-1:0] fetch_ccs;
    reg [REG_WIDTH-1:0] exe1_ccs;
    reg [REG_WIDTH-1:0] exe2_ccs;

    reg [REG_WIDTH-1:0] fetch_stalls;
    reg [REG_WIDTH-1:0] exe1_stalls;
    reg [REG_WIDTH-1:0] exe2_stalls;

    //Create slave agent
    slave_agent = new("slave vip agent", UUT.AXI_TEST_i.axi_vip_1.inst.IF);
    slave_agent.start_slave();

    slave_agent.mem_model.set_memory_fill_policy(XIL_AXI_MEMORY_FILL_FIXED);
    slave_agent.mem_model.set_default_memory_value(32'hdeadbeef);
    
    // Create master agent
    master_agent = new("master vip agent", UUT.AXI_TEST_i.axi_vip_0.inst.IF);
    master_agent.start_master();

    wait (aresetn == 1'b1);
    
    //fill memory of slave agent
    fp_code= $fopen("/home/feder34/git/cicero_general/cicero/scripts/generate_single/regex.txt","r");
    if (fp_code==0)
    begin
        $display("Could not open file '%s' for reading","regex.txt");
        $stop;     
    end
    start_code = 32'h0000_0000;
    //write string
    $display("writing code from %h",start_code);
    write_file(fp_code, start_code , end_code );

    fp_string= $fopen("/home/feder34/git/cicero_general/cicero/scripts/generate_single/input.csv","r");
    if (fp_string==0)
    begin
        $display("Could not open file '%s' for reading","input.csv");
        $stop;     
    end

    start_string = end_code;
    while(start_string[0+:CC_ID_BITS]!==0)
    begin
        start_string = start_string + 1;
    end 
    //write string
    $display("writing string from %h",start_string);
    write_string_file(fp_string, start_string, end_string);
    $display("wrote string and code");
    
    check_memory();

    #500ns
    
    //WILL READ CODE FROM ADDRESS 0
    write(32'h4000_0000, 32'h0*4); //WRITE RADDR
    @(posedge aclk);
    write(CMD_SET_ADDRESS, 32'h4*4); //SET RADDR
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);
    write((end_string-start_code)/4, 32'h0*4); //WRITE RLEN
    @(posedge aclk);
    write(CMD_SET_LEN, 32'h4*4); //SET RLEN
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);
    write(CMD_START_FETCH, 32'h4*4); //START FETCH PROCESS
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);

    
    wait_status(STATUS_IDLE);
    $display("%h, %h", start_string, end_string);
    write(start_string, 32'h2*4); //WRITE START CC POINTER
    @(posedge aclk);
    write(end_string, 32'h3*4); //WRITE END CC POINTER
    @(posedge aclk);
    write(CMD_START, 32'h4*4);     //CMD_START
    @(posedge aclk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge aclk);
    
    wait_status(STATUS_ACCEPTED);
    
    #500ns
    $finish;
end

endmodule
