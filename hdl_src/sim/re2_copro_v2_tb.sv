//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 09:51:32 AM
// Design Name: 
// Module Name: re2_copro_v2_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import AXI_package::*;
import instruction_package::*;

`timescale 1ns / 1ps

module re2_copro_v2_tb;

  // Parameters
  localparam integer C_S00_AXI_DATA_WIDTH = 32;
  localparam integer C_S00_AXI_ADDR_WIDTH = 5;
  localparam integer C_M00_AXI_TARGET_SLAVE_BASE_ADDR = 32'h40000000;
  localparam integer C_M00_AXI_BURST_LEN = 16;
  localparam integer C_M00_AXI_ID_WIDTH = 1;
  localparam integer C_M00_AXI_ADDR_WIDTH = 32;
  localparam integer C_M00_AXI_DATA_WIDTH = 32;
  localparam integer C_M00_AXI_AWUSER_WIDTH = 0;
  localparam integer C_M00_AXI_ARUSER_WIDTH = 0;
  localparam integer C_M00_AXI_WUSER_WIDTH = 0;
  localparam integer C_M00_AXI_RUSER_WIDTH = 0;
  localparam integer C_M00_AXI_BUSER_WIDTH = 0;
  parameter CC_ID_BITS =        3  ;
  parameter BB_N = 1;

  // Clocks and resets
  reg clk = 0;
  reg rst = 0;

  always #5 clk = ~clk;

  // AXI-Lite Slave Interface S00_AXI
  reg [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr = 0;
  reg [2 : 0] s00_axi_awprot = 0;
  reg s00_axi_awvalid = 0;
  wire s00_axi_awready;
  reg [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata = 0;
  reg [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb = 0;
  reg s00_axi_wvalid = 0;
  wire s00_axi_wready;
  wire [1 : 0] s00_axi_bresp;
  wire s00_axi_bvalid;
  reg s00_axi_bready = 0;
  reg [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr = 0;
  reg [2 : 0] s00_axi_arprot = 0;
  reg s00_axi_arvalid = 0;
  wire s00_axi_arready;
  wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata;
  wire [1 : 0] s00_axi_rresp;
  wire s00_axi_rvalid;
  reg s00_axi_rready = 0;

  // AXI Master Interface M00_AXI
  reg m00_axi_init_axi_txn = 0;
  wire m00_axi_txn_done;
  wire m00_axi_error;
  wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid;
  wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr;
  wire [7 : 0] m00_axi_awlen;
  wire [2 : 0] m00_axi_awsize;
  wire [1 : 0] m00_axi_awburst;
  wire m00_axi_awlock;
  wire [3 : 0] m00_axi_awcache;
  wire [2 : 0] m00_axi_awprot;
  wire [3 : 0] m00_axi_awqos;
  wire [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser;
  wire m00_axi_awvalid;
  reg m00_axi_awready = 0;
  wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata;
  wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb;
  wire m00_axi_wlast;
  wire [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser;
  wire m00_axi_wvalid;
  reg m00_axi_wready = 0;
  reg [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid = 0;
  reg [1 : 0] m00_axi_bresp = 0;
  reg [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser = 0;
  reg m00_axi_bvalid = 0;
  wire m00_axi_bready;
  wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid;
  wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr;
  wire [7 : 0] m00_axi_arlen;
  wire [2 : 0] m00_axi_arsize;
  wire [1 : 0] m00_axi_arburst;
  wire m00_axi_arlock;
  wire [3 : 0] m00_axi_arcache;
  wire [2 : 0] m00_axi_arprot;
  wire [3 : 0] m00_axi_arqos;
  wire [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser;
  wire m00_axi_arvalid;
  reg m00_axi_arready = 0;
  reg [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid = 0;
  reg [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata = 0;
  reg [1 : 0] m00_axi_rresp = 0;
  reg m00_axi_rlast = 0;
  reg [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser = 0;
  reg m00_axi_rvalid = 0;
  wire m00_axi_rready;

  reg [31 : 0] mem [0: 1023];

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
            address_register  = address/4;
            //WRITE DATA TO SIMPLE MEMORY
            mem[address_register] = data;

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
                    tmp_address = tmp_address + 1;
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
            address_register  = address_cur / 4;
            //WRITE DATA TO SIMPLE MEMORY
            mem[address_register] = data;

            address_cur        = tmp_address;
        end
        
    end
  endtask
  // DUT instance
  re2_copro_v2 #(
    .C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
    .C_S00_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
    .C_M00_AXI_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
    .C_M00_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
    .C_M00_AXI_ID_WIDTH(C_M00_AXI_ID_WIDTH),
    .C_M00_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
    .C_M00_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
    .C_M00_AXI_AWUSER_WIDTH(C_M00_AXI_AWUSER_WIDTH),
    .C_M00_AXI_ARUSER_WIDTH(C_M00_AXI_ARUSER_WIDTH),
    .C_M00_AXI_WUSER_WIDTH(C_M00_AXI_WUSER_WIDTH),
    .C_M00_AXI_RUSER_WIDTH(C_M00_AXI_RUSER_WIDTH),
    .C_M00_AXI_BUSER_WIDTH(C_M00_AXI_BUSER_WIDTH)
  ) dut (
    .s00_axi_aclk(clk),
    .s00_axi_aresetn(rst),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready),

    .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
    .m00_axi_txn_done(m00_axi_txn_done),
    .m00_axi_error(m00_axi_error),
    .m00_axi_aclk(clk),
    .m00_axi_aresetn(rst),
    .m00_axi_awid(m00_axi_awid),
    .m00_axi_awaddr(m00_axi_awaddr),
    .m00_axi_awlen(m00_axi_awlen),
    .m00_axi_awsize(m00_axi_awsize),
    .m00_axi_awburst(m00_axi_awburst),
    .m00_axi_awlock(m00_axi_awlock),
    .m00_axi_awcache(m00_axi_awcache),
    .m00_axi_awprot(m00_axi_awprot),
    .m00_axi_awqos(m00_axi_awqos),
    .m00_axi_awuser(m00_axi_awuser),
    .m00_axi_awvalid(m00_axi_awvalid),
    .m00_axi_awready(m00_axi_awready),
    .m00_axi_wdata(m00_axi_wdata),
    .m00_axi_wstrb(m00_axi_wstrb),
    .m00_axi_wlast(m00_axi_wlast),
    .m00_axi_wuser(m00_axi_wuser),
    .m00_axi_wvalid(m00_axi_wvalid),
    .m00_axi_wready(m00_axi_wready),
    .m00_axi_bid(m00_axi_bid),
    .m00_axi_bresp(m00_axi_bresp),
    .m00_axi_buser(m00_axi_buser),
    .m00_axi_bvalid(m00_axi_bvalid),
    .m00_axi_bready(m00_axi_bready),
    .m00_axi_arid(m00_axi_arid),
    .m00_axi_araddr(m00_axi_araddr),
    .m00_axi_arlen(m00_axi_arlen),
    .m00_axi_arsize(m00_axi_arsize),
    .m00_axi_arburst(m00_axi_arburst),
    .m00_axi_arlock(m00_axi_arlock),
    .m00_axi_arcache(m00_axi_arcache),
    .m00_axi_arprot(m00_axi_arprot),
    .m00_axi_arqos(m00_axi_arqos),
    .m00_axi_aruser(m00_axi_aruser),
    .m00_axi_arvalid(m00_axi_arvalid),
    .m00_axi_arready(m00_axi_arready),
    .m00_axi_rid(m00_axi_rid),
    .m00_axi_rdata(m00_axi_rdata),
    .m00_axi_rresp(m00_axi_rresp),
    .m00_axi_rlast(m00_axi_rlast),
    .m00_axi_ruser(m00_axi_ruser),
    .m00_axi_rvalid(m00_axi_rvalid),
    .m00_axi_rready(m00_axi_rready)
  );
  
  task read(input logic [32-1:0] addr, output logic [31 : 0] out_reg);
  begin
    
    s00_axi_araddr <= addr;
    s00_axi_arvalid <= 1;
    s00_axi_rready <= 1;
    
    wait(s00_axi_arready);
    @(posedge clk);
    
    s00_axi_arvalid <= 0;
    
    wait(s00_axi_rvalid);
    
    out_reg <= s00_axi_rdata;
    @(posedge clk);
    
    s00_axi_arvalid <= 0;
    s00_axi_rready <= 0;
    
  end
  endtask
  
  task write(input logic [32-1:0] data, input logic [32-1:0] addr); 
  begin
    
    s00_axi_awaddr <= addr;
    s00_axi_wdata <= data;
    s00_axi_wstrb   <= 4'b1111;
    s00_axi_awvalid <= 1;
    s00_axi_wvalid <= 1;
    s00_axi_bready <= 1;

    wait (s00_axi_awready && s00_axi_wready);
    @(posedge clk);
    
    s00_axi_wvalid <= 0;
    s00_axi_awvalid <= 0;

    wait(s00_axi_bvalid);
    @(posedge clk);
    
    s00_axi_bready = 0;

    s00_axi_awaddr = 32'b0;
    s00_axi_wdata = 32'b0;
  end
  endtask
  
  task automatic mem_read_agent();
    integer i, burst_len;
    forever begin
    
      m00_axi_arready <= 1;
      wait (m00_axi_arvalid);
      //CASE RADDR
      m00_axi_arready <= 0;
      m00_axi_rvalid <= 1;
      burst_len = m00_axi_arlen + 1;
      wait(m00_axi_rready)
      //CASE RDATA
      for (i = 0; i < burst_len; i = i+1) begin
        m00_axi_rlast  <= (i == burst_len-1);
        m00_axi_rdata <= mem[i];
        m00_axi_rvalid <= 1;
      end
      m00_axi_rlast <= 0;
    end
  endtask

  initial begin
    fork
      mem_read_agent();   // background forever
    join_none
  end
      
  task read_status(output logic [32-1:0] status);
    begin
      s00_axi_araddr <= 32'h5*4;
      s00_axi_arvalid <= 1;
      s00_axi_rready <= 1;
      
      wait(s00_axi_arready);
      @(posedge clk);
      
      s00_axi_arvalid <= 0;
      
      wait(s00_axi_rvalid);
      
      status <= s00_axi_rdata;
      @(posedge clk);
      
      s00_axi_arvalid <= 0;
      s00_axi_rready <= 0;
    end
  endtask

  task get_cc_elapsed(output logic[REG_WIDTH-1:0] cc);
    begin
        write(CMD_READ_ELAPSED_CLOCK, 32'h4*4); // CMD_READ_ELAPSED_CLOCK;
        @(posedge clk);
        read(32'h6*4, cc);
        @(posedge clk);
        write(CMD_NOP, 32'h4*4); //CMD_NOP
    end
  endtask

  task get_fifo_sizing_report(input logic[REG_WIDTH-1: 0] fifoSelector, 
                              output logic[REG_WIDTH-1: 0] fifoSize,
                              output logic[REG_WIDTH-1: 0] fifoFulls);
  begin
      write(fifoSelector, 32'h0*4);
      @(posedge clk);
      write(CMD_READ_FIFO_COUNT, 32'h4*4);
      @(posedge clk);
      read(32'h6*4, fifoSize);
      @(posedge clk);
      write(CMD_READ_FIFO_FULLS, 32'h4*4);
      @(posedge clk);
      read(32'h6*4, fifoFulls);
      @(posedge clk);

      write(CMD_NOP, 32'h4*4); //CMD_NOP
  end
  endtask

  task get_hit_miss_report(input logic[REG_WIDTH-1: 0] coreSelector,
                            output logic[REG_WIDTH-1: 0] cacheHits,
                            output logic[REG_WIDTH-1: 0] cacheMiss);
  begin
      write(coreSelector, 32'h0*4);
      @(posedge clk)
      write(CMD_READ_CACHE_HITS, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, cacheHits);
      @(posedge clk)
      write(CMD_READ_CACHE_MISS, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, cacheMiss);
      @(posedge clk)
      write(CMD_NOP, 32'h4*4); //CMD_NOP
  end
  endtask

  task get_cycles_report(input logic[REG_WIDTH-1: 0] coreSelector,
                          output logic[REG_WIDTH-1: 0] fetch_ccs,
                          output logic[REG_WIDTH-1: 0] exe1_ccs,
                          output logic[REG_WIDTH-1: 0] exe2_ccs);
  begin
      write(coreSelector, 32'h0*4);
      @(posedge clk)
      write(CMD_READ_FETCH_CLOCK, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, fetch_ccs);
      @(posedge clk)
      write(CMD_READ_EXE1_CLOCK, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, exe1_ccs);
      @(posedge clk)
      write(CMD_READ_EXE2_CLOCK, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, exe2_ccs);
      @(posedge clk)
      write(CMD_NOP, 32'h4*4); //CMD_NOP
  end
  endtask

  task get_stalls_report(input logic[REG_WIDTH-1: 0] coreSelector,
                          output logic[REG_WIDTH-1: 0] fetch_stalls,
                          output logic[REG_WIDTH-1: 0] exe1_stalls,
                          output logic[REG_WIDTH-1: 0] exe2_stalls);
  begin
      write(coreSelector, 32'h0*4);
      @(posedge clk)
      write(CMD_READ_FETCH_STALLS, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, fetch_stalls);
      @(posedge clk)
      write(CMD_READ_EXE1_STALLS, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, exe1_stalls);
      @(posedge clk)
      write(CMD_READ_EXE2_STALLS, 32'h4*4);
      @(posedge clk)
      read(32'h6*4, exe2_stalls);
      @(posedge clk)
      write(CMD_NOP, 32'h4*4); //CMD_NOP
  end
  endtask

  task reset_perf_cntrs();
  begin
      write(CMD_RESET_PERF_CNTRS, 32'h4*4);
      @(posedge clk);
      write(CMD_NOP, 32'h4*4); //CMD_NOP
  end
  endtask
  
  task reset_cicero();
  begin
      write(CMD_RESET, 32'h4*4);
      @(posedge clk);
      write(CMD_NOP, 32'h4*4); //CMD_NOP
  end
  endtask

  task wait_status(input  reg [REG_WIDTH-1:0] status);
      begin
          reg [REG_WIDTH-1:0] status_out;
          read_status(status_out);
          while( status_out != status )
          begin
              read_status(status_out);
              @(posedge clk);
          end 
      end
  endtask

  task verify_code();
      integer j;
      begin
          reg [31 : 0] instr;
          for(j = 0; j < 256; j++)
          begin
            write(j, 32'h1*4); //WRITE RADDR
            @(posedge clk);
            write(CMD_READ, 32'h4*4); // READ MEM
            @(posedge clk);
            read(32'h6*4, instr);
            $display("%h", instr);
            @(posedge clk);
          end
      end
  endtask


  integer i;
  // Reset sequence
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

    //Initialize testbench memory with code and string to analyze
    fp_code= $fopen("/home/feder34/git/cicero/scripts/generate_single/regex.txt","r");
    if (fp_code==0)
    begin
        $display("Could not open file '%s' for reading","regex.txt");
        $stop;     
    end
    start_code = 32'h0000_0000;
    //write string
    $display("writing code from %h",start_code);
    write_file(fp_code, start_code , end_code );

    fp_string= $fopen("/home/feder34/git/cicero/scripts/generate_single/input.csv","r");
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


    //RESET
    rst = 1;
    @(posedge clk);
    rst = 0;
    @(posedge clk);
    rst = 1;
    @(posedge clk);
    
    write(CMD_RESTART, 32'h4*4);
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);

    reset_cicero();

    reset_perf_cntrs();
    
    //WILL READ CODE FROM ADDRESS 0
    write(32'h0, 32'h0*4); //WRITE RADDR
    @(posedge clk);
    write(CMD_SET_ADDRESS, 32'h4*4); //SET RADDR
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    write((end_string-start_code)/4, 32'h0*4); //WRITE RLEN
    @(posedge clk);
    write(CMD_SET_LEN, 32'h4*4); //SET RLEN
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    write(CMD_START_FETCH, 32'h4*4); //START FETCH PROCESS
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);

    wait_status(STATUS_IDLE);

    verify_code();

    $display("%h, %h", start_string, end_string);

    write(start_string, 32'h2*4); //WRITE START CC POINTER
    @(posedge clk);
    write(end_string, 32'h3*4); //WRITE END CC POINTER
    @(posedge clk);
    write(CMD_START, 32'h4*4);     //CMD_START
    @(posedge clk);
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    
    wait_status(STATUS_REJECTED);


    get_cc_elapsed(cc_taken);
    $display("cc taken: %d", cc_taken);
    for(int i = 0; i < 2**CC_ID_BITS; i++) begin
        get_fifo_sizing_report(i, fifoSize, fifoFulls);
        get_hit_miss_report(i, cache_hits, cache_miss);
        get_cycles_report(i, fetch_ccs, exe1_ccs, exe2_ccs);
        get_stalls_report(i, fetch_stalls, exe1_stalls, exe2_stalls);

        $display("---------------------------------------------");
        $display("core         %d:", i);
        $display("fifo statistics:");
        $display("max size:     %d", fifoSize);
        $display("full events:  %d", fifoFulls);
        $display("cache statistics:");
        $display("hits:         %d", cache_hits);
        $display("miss:         %d", cache_miss);
        $display("clock cycles per stage:");
        $display("fetch cycles: %d", fetch_ccs);
        $display("fetch stalls: %d", fetch_stalls);
        $display("exe1  cycles: %d", exe1_ccs);
        $display("exe1  stalls: %d", exe1_stalls);
        $display("exe2  cycles: %d", exe2_ccs);
        $display("exe2  stalls: %d", exe2_stalls);
    end
    $display("---------------------------------------------");
    
    
    $finish;
  end

endmodule

