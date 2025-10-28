//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Thu Aug 28 10:47:23 2025
//Host        : feder34-Desktop running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target AXI_TEST.bd
//Design      : AXI_TEST
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "AXI_TEST,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=AXI_TEST,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "AXI_TEST.hwdef" *) 
module AXI_TEST
   (clk,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN AXI_TEST_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;

  wire aclk_0_1;
  wire aresetn_0_1;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]re2_copro_0_M00_AXI_ARADDR;
  wire [1:0]re2_copro_0_M00_AXI_ARBURST;
  wire [3:0]re2_copro_0_M00_AXI_ARCACHE;
  wire [0:0]re2_copro_0_M00_AXI_ARID;
  wire [7:0]re2_copro_0_M00_AXI_ARLEN;
  wire [2:0]re2_copro_0_M00_AXI_ARPROT;
  wire [3:0]re2_copro_0_M00_AXI_ARQOS;
  wire re2_copro_0_M00_AXI_ARREADY;
  wire [0:0]re2_copro_0_M00_AXI_ARUSER;
  wire re2_copro_0_M00_AXI_ARVALID;
  wire [31:0]re2_copro_0_M00_AXI_RDATA;
  wire [0:0]re2_copro_0_M00_AXI_RID;
  wire re2_copro_0_M00_AXI_RLAST;
  wire re2_copro_0_M00_AXI_RREADY;
  wire [1:0]re2_copro_0_M00_AXI_RRESP;
  wire [0:0]re2_copro_0_M00_AXI_RUSER;
  wire re2_copro_0_M00_AXI_RVALID;

  assign aclk_0_1 = clk;
  assign aresetn_0_1 = reset;
  AXI_TEST_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  AXI_TEST_axi_vip_1_0 axi_vip_1
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .s_axi_araddr(re2_copro_0_M00_AXI_ARADDR),
        .s_axi_arburst(re2_copro_0_M00_AXI_ARBURST),
        .s_axi_arcache(re2_copro_0_M00_AXI_ARCACHE),
        .s_axi_arid(re2_copro_0_M00_AXI_ARID),
        .s_axi_arlen(re2_copro_0_M00_AXI_ARLEN),
        .s_axi_arprot(re2_copro_0_M00_AXI_ARPROT),
        .s_axi_arqos(re2_copro_0_M00_AXI_ARQOS),
        .s_axi_arready(re2_copro_0_M00_AXI_ARREADY),
        .s_axi_aruser(re2_copro_0_M00_AXI_ARUSER),
        .s_axi_arvalid(re2_copro_0_M00_AXI_ARVALID),
        .s_axi_rdata(re2_copro_0_M00_AXI_RDATA),
        .s_axi_rid(re2_copro_0_M00_AXI_RID),
        .s_axi_rlast(re2_copro_0_M00_AXI_RLAST),
        .s_axi_rready(re2_copro_0_M00_AXI_RREADY),
        .s_axi_rresp(re2_copro_0_M00_AXI_RRESP),
        .s_axi_ruser(re2_copro_0_M00_AXI_RUSER),
        .s_axi_rvalid(re2_copro_0_M00_AXI_RVALID));
  AXI_TEST_re2_copro_0_0 re2_copro_0
       (.m00_axi_aclk(aclk_0_1),
        .m00_axi_araddr(re2_copro_0_M00_AXI_ARADDR),
        .m00_axi_arburst(re2_copro_0_M00_AXI_ARBURST),
        .m00_axi_arcache(re2_copro_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(aresetn_0_1),
        .m00_axi_arid(re2_copro_0_M00_AXI_ARID),
        .m00_axi_arlen(re2_copro_0_M00_AXI_ARLEN),
        .m00_axi_arprot(re2_copro_0_M00_AXI_ARPROT),
        .m00_axi_arqos(re2_copro_0_M00_AXI_ARQOS),
        .m00_axi_arready(re2_copro_0_M00_AXI_ARREADY),
        .m00_axi_aruser(re2_copro_0_M00_AXI_ARUSER),
        .m00_axi_arvalid(re2_copro_0_M00_AXI_ARVALID),
        .m00_axi_awready(1'b0),
        .m00_axi_bid(1'b0),
        .m00_axi_bresp({1'b0,1'b0}),
        .m00_axi_buser(1'b0),
        .m00_axi_bvalid(1'b0),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(re2_copro_0_M00_AXI_RDATA),
        .m00_axi_rid(re2_copro_0_M00_AXI_RID),
        .m00_axi_rlast(re2_copro_0_M00_AXI_RLAST),
        .m00_axi_rready(re2_copro_0_M00_AXI_RREADY),
        .m00_axi_rresp(re2_copro_0_M00_AXI_RRESP),
        .m00_axi_ruser(re2_copro_0_M00_AXI_RUSER),
        .m00_axi_rvalid(re2_copro_0_M00_AXI_RVALID),
        .m00_axi_wready(1'b0),
        .s00_axi_aclk(aclk_0_1),
        .s00_axi_araddr(axi_vip_0_M_AXI_ARADDR[4:0]),
        .s00_axi_aresetn(aresetn_0_1),
        .s00_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .s00_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .s00_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .s00_axi_awaddr(axi_vip_0_M_AXI_AWADDR[4:0]),
        .s00_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .s00_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .s00_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .s00_axi_bready(axi_vip_0_M_AXI_BREADY),
        .s00_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .s00_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .s00_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .s00_axi_rready(axi_vip_0_M_AXI_RREADY),
        .s00_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .s00_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .s00_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .s00_axi_wready(axi_vip_0_M_AXI_WREADY),
        .s00_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .s00_axi_wvalid(axi_vip_0_M_AXI_WVALID));
endmodule
