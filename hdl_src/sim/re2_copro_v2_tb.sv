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
  parameter CC_ID_BITS =        2  ;
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
  
  
  task write(input logic [32-1:0] data, input logic [32-1:0] addr); 
  begin
    $display("Writing 0x%08x to address 0x%08x", data, addr);
    
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
  
task mem_read_emulator();
integer i;
begin
    wait (m00_axi_arvalid); // Wait for master to start read
    m00_axi_arready <= 1;
    @(posedge clk);
    m00_axi_arready <= 0;
    
    // Respond with 10 dummy values
    for (i = 0; i < 10; i = i + 1) begin
        @(posedge clk);
        m00_axi_rvalid <= 1;
        m00_axi_rdata  <= 32'hDEADBEEF; // Fixed value
        m00_axi_rlast  <= (i == 9);     // Last beat on final iteration
    
        wait (m00_axi_rready);
        @(posedge clk);
        m00_axi_rvalid <= 0;
        m00_axi_rlast  <= 0;
    end 

end
endtask

  // Reset sequence
  initial begin
    rst = 1;
    @(posedge clk);
    rst = 0;
    @(posedge clk);
    rst = 1;
    @(posedge clk);
    
    //WILL WRITE DEADBEEF AT ADDRESS 0 VIA AXI4-LITE
    
    write(CMD_RESET, 32'h4*4); //RESET CICERO
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    write(32'b0, 32'h1*4); //WRITE ADDRESS
    @(posedge clk);
    write(CMD_WRITE, 32'h4*4); //CMD_WRITE
    @(posedge clk);
    write(32'hDEADBEEF, 32'h0*4); //WRITE_DATA
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    
    //WILL READ 10 WORDS FROM ADDRESS 0
    write(32'b0, 32'h0*4); //WRITE RADDR
    @(posedge clk);
    write(CMD_SET_ADDRESS, 32'h4*4); //SET RADDR
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    write(32'hA, 32'h0*4); //WRITE RLEN
    @(posedge clk);
    write(CMD_SET_LEN, 32'h4*4); //SET RLEN
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    write(CMD_START_FETCH, 32'h4*4); //START FETCH PROCESS
    @(posedge clk);
    write(CMD_NOP, 32'h4*4); //CMD_NOP
    @(posedge clk);
    
    mem_read_emulator();
    @(posedge clk);

    
    $finish;
  end

endmodule

