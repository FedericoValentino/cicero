// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Aug  4 15:36:14 2025
// Host        : feder34-Desktop running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ re2_copro_re2_copro_0_1_sim_netlist.v
// Design      : re2_copro_re2_copro_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro
   (axi_wlast_reg,
    m00_axi_wdata,
    s00_axi_rdata,
    m00_axi_wvalid,
    m00_axi_awvalid,
    m00_axi_txn_done,
    m00_axi_error,
    axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    m00_axi_awaddr,
    m00_axi_araddr,
    axi_arvalid_reg,
    axi_rready_reg,
    axi_bready_reg,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wstrb,
    m00_axi_wready,
    s00_axi_aclk,
    m00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    m00_axi_init_axi_txn,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    m00_axi_aresetn,
    m00_axi_awready,
    m00_axi_rlast,
    m00_axi_rvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_bvalid,
    s00_axi_bready,
    m00_axi_rresp,
    m00_axi_bresp);
  output axi_wlast_reg;
  output [31:0]m00_axi_wdata;
  output [31:0]s00_axi_rdata;
  output m00_axi_wvalid;
  output m00_axi_awvalid;
  output m00_axi_txn_done;
  output m00_axi_error;
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output [25:0]m00_axi_awaddr;
  output [25:0]m00_axi_araddr;
  output axi_arvalid_reg;
  output axi_rready_reg;
  output axi_bready_reg;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input [2:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input m00_axi_wready;
  input s00_axi_aclk;
  input m00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input m00_axi_init_axi_txn;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input m00_axi_aresetn;
  input m00_axi_awready;
  input m00_axi_rlast;
  input m00_axi_rvalid;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;
  input m00_axi_bvalid;
  input s00_axi_bready;
  input [0:0]m00_axi_rresp;
  input [0:0]m00_axi_bresp;

  wire axi_arready_reg;
  wire axi_arvalid_reg;
  wire axi_awready_reg;
  wire axi_bready_reg;
  wire axi_rready_reg;
  wire axi_rvalid_reg;
  wire axi_wlast_reg;
  wire m00_axi_aclk;
  wire [25:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [25:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_master_full_v2_M00_AXI re2_copro_master_full_v2_M00_AXI_inst
       (.axi_arvalid_reg_0(axi_arvalid_reg),
        .axi_awvalid_reg_0(m00_axi_awvalid),
        .axi_bready_reg_0(axi_bready_reg),
        .axi_rready_reg_0(axi_rready_reg),
        .axi_wlast_reg_0(axi_wlast_reg),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_slave_lite_v2_S00_AXI re2_copro_slave_lite_v2_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_master_full_v2_M00_AXI
   (m00_axi_wvalid,
    axi_awvalid_reg_0,
    m00_axi_txn_done,
    m00_axi_error,
    axi_wlast_reg_0,
    axi_bready_reg_0,
    axi_arvalid_reg_0,
    axi_rready_reg_0,
    m00_axi_wdata,
    m00_axi_awaddr,
    m00_axi_araddr,
    m00_axi_init_axi_txn,
    m00_axi_aclk,
    m00_axi_wready,
    m00_axi_bvalid,
    m00_axi_arready,
    m00_axi_rresp,
    m00_axi_bresp,
    m00_axi_rvalid,
    m00_axi_aresetn,
    m00_axi_awready,
    m00_axi_rlast,
    m00_axi_rdata);
  output m00_axi_wvalid;
  output axi_awvalid_reg_0;
  output m00_axi_txn_done;
  output m00_axi_error;
  output axi_wlast_reg_0;
  output axi_bready_reg_0;
  output axi_arvalid_reg_0;
  output axi_rready_reg_0;
  output [31:0]m00_axi_wdata;
  output [25:0]m00_axi_awaddr;
  output [25:0]m00_axi_araddr;
  input m00_axi_init_axi_txn;
  input m00_axi_aclk;
  input m00_axi_wready;
  input m00_axi_bvalid;
  input m00_axi_arready;
  input [0:0]m00_axi_rresp;
  input [0:0]m00_axi_bresp;
  input m00_axi_rvalid;
  input m00_axi_aresetn;
  input m00_axi_awready;
  input m00_axi_rlast;
  input [31:0]m00_axi_rdata;

  wire ERROR_i_1_n_0;
  wire \FSM_onehot_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[3]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[1] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[2] ;
  wire \FSM_sequential_state_read[0]_i_2_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_write[0]_i_2_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_write[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_write[1]_i_4_n_0 ;
  wire \FSM_sequential_state_write[1]_i_5_n_0 ;
  wire M_AXI_ARADDR_carry_i_1_n_0;
  wire M_AXI_ARADDR_carry_n_6;
  wire M_AXI_ARADDR_carry_n_7;
  wire M_AXI_AWADDR_carry_i_1_n_0;
  wire M_AXI_AWADDR_carry_n_6;
  wire M_AXI_AWADDR_carry_n_7;
  wire \axi_araddr[13]_i_2_n_0 ;
  wire [31:29]axi_araddr_reg;
  wire \axi_araddr_reg[13]_i_1_n_0 ;
  wire \axi_araddr_reg[13]_i_1_n_1 ;
  wire \axi_araddr_reg[13]_i_1_n_10 ;
  wire \axi_araddr_reg[13]_i_1_n_11 ;
  wire \axi_araddr_reg[13]_i_1_n_12 ;
  wire \axi_araddr_reg[13]_i_1_n_13 ;
  wire \axi_araddr_reg[13]_i_1_n_14 ;
  wire \axi_araddr_reg[13]_i_1_n_15 ;
  wire \axi_araddr_reg[13]_i_1_n_2 ;
  wire \axi_araddr_reg[13]_i_1_n_3 ;
  wire \axi_araddr_reg[13]_i_1_n_4 ;
  wire \axi_araddr_reg[13]_i_1_n_5 ;
  wire \axi_araddr_reg[13]_i_1_n_6 ;
  wire \axi_araddr_reg[13]_i_1_n_7 ;
  wire \axi_araddr_reg[13]_i_1_n_8 ;
  wire \axi_araddr_reg[13]_i_1_n_9 ;
  wire \axi_araddr_reg[21]_i_1_n_0 ;
  wire \axi_araddr_reg[21]_i_1_n_1 ;
  wire \axi_araddr_reg[21]_i_1_n_10 ;
  wire \axi_araddr_reg[21]_i_1_n_11 ;
  wire \axi_araddr_reg[21]_i_1_n_12 ;
  wire \axi_araddr_reg[21]_i_1_n_13 ;
  wire \axi_araddr_reg[21]_i_1_n_14 ;
  wire \axi_araddr_reg[21]_i_1_n_15 ;
  wire \axi_araddr_reg[21]_i_1_n_2 ;
  wire \axi_araddr_reg[21]_i_1_n_3 ;
  wire \axi_araddr_reg[21]_i_1_n_4 ;
  wire \axi_araddr_reg[21]_i_1_n_5 ;
  wire \axi_araddr_reg[21]_i_1_n_6 ;
  wire \axi_araddr_reg[21]_i_1_n_7 ;
  wire \axi_araddr_reg[21]_i_1_n_8 ;
  wire \axi_araddr_reg[21]_i_1_n_9 ;
  wire \axi_araddr_reg[28]_i_2_n_0 ;
  wire \axi_araddr_reg[28]_i_2_n_1 ;
  wire \axi_araddr_reg[28]_i_2_n_10 ;
  wire \axi_araddr_reg[28]_i_2_n_11 ;
  wire \axi_araddr_reg[28]_i_2_n_12 ;
  wire \axi_araddr_reg[28]_i_2_n_13 ;
  wire \axi_araddr_reg[28]_i_2_n_14 ;
  wire \axi_araddr_reg[28]_i_2_n_15 ;
  wire \axi_araddr_reg[28]_i_2_n_2 ;
  wire \axi_araddr_reg[28]_i_2_n_3 ;
  wire \axi_araddr_reg[28]_i_2_n_4 ;
  wire \axi_araddr_reg[28]_i_2_n_5 ;
  wire \axi_araddr_reg[28]_i_2_n_6 ;
  wire \axi_araddr_reg[28]_i_2_n_7 ;
  wire \axi_araddr_reg[28]_i_2_n_8 ;
  wire \axi_araddr_reg[28]_i_2_n_9 ;
  wire \axi_araddr_reg[30]_i_1_n_14 ;
  wire \axi_araddr_reg[30]_i_1_n_15 ;
  wire \axi_araddr_reg[30]_i_1_n_7 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_arvalid_i_2_n_0;
  wire axi_arvalid_reg_0;
  wire axi_awaddr;
  wire \axi_awaddr[13]_i_2_n_0 ;
  wire [31:29]axi_awaddr_reg;
  wire \axi_awaddr_reg[13]_i_1_n_0 ;
  wire \axi_awaddr_reg[13]_i_1_n_1 ;
  wire \axi_awaddr_reg[13]_i_1_n_10 ;
  wire \axi_awaddr_reg[13]_i_1_n_11 ;
  wire \axi_awaddr_reg[13]_i_1_n_12 ;
  wire \axi_awaddr_reg[13]_i_1_n_13 ;
  wire \axi_awaddr_reg[13]_i_1_n_14 ;
  wire \axi_awaddr_reg[13]_i_1_n_15 ;
  wire \axi_awaddr_reg[13]_i_1_n_2 ;
  wire \axi_awaddr_reg[13]_i_1_n_3 ;
  wire \axi_awaddr_reg[13]_i_1_n_4 ;
  wire \axi_awaddr_reg[13]_i_1_n_5 ;
  wire \axi_awaddr_reg[13]_i_1_n_6 ;
  wire \axi_awaddr_reg[13]_i_1_n_7 ;
  wire \axi_awaddr_reg[13]_i_1_n_8 ;
  wire \axi_awaddr_reg[13]_i_1_n_9 ;
  wire \axi_awaddr_reg[21]_i_1_n_0 ;
  wire \axi_awaddr_reg[21]_i_1_n_1 ;
  wire \axi_awaddr_reg[21]_i_1_n_10 ;
  wire \axi_awaddr_reg[21]_i_1_n_11 ;
  wire \axi_awaddr_reg[21]_i_1_n_12 ;
  wire \axi_awaddr_reg[21]_i_1_n_13 ;
  wire \axi_awaddr_reg[21]_i_1_n_14 ;
  wire \axi_awaddr_reg[21]_i_1_n_15 ;
  wire \axi_awaddr_reg[21]_i_1_n_2 ;
  wire \axi_awaddr_reg[21]_i_1_n_3 ;
  wire \axi_awaddr_reg[21]_i_1_n_4 ;
  wire \axi_awaddr_reg[21]_i_1_n_5 ;
  wire \axi_awaddr_reg[21]_i_1_n_6 ;
  wire \axi_awaddr_reg[21]_i_1_n_7 ;
  wire \axi_awaddr_reg[21]_i_1_n_8 ;
  wire \axi_awaddr_reg[21]_i_1_n_9 ;
  wire \axi_awaddr_reg[28]_i_3_n_0 ;
  wire \axi_awaddr_reg[28]_i_3_n_1 ;
  wire \axi_awaddr_reg[28]_i_3_n_10 ;
  wire \axi_awaddr_reg[28]_i_3_n_11 ;
  wire \axi_awaddr_reg[28]_i_3_n_12 ;
  wire \axi_awaddr_reg[28]_i_3_n_13 ;
  wire \axi_awaddr_reg[28]_i_3_n_14 ;
  wire \axi_awaddr_reg[28]_i_3_n_15 ;
  wire \axi_awaddr_reg[28]_i_3_n_2 ;
  wire \axi_awaddr_reg[28]_i_3_n_3 ;
  wire \axi_awaddr_reg[28]_i_3_n_4 ;
  wire \axi_awaddr_reg[28]_i_3_n_5 ;
  wire \axi_awaddr_reg[28]_i_3_n_6 ;
  wire \axi_awaddr_reg[28]_i_3_n_7 ;
  wire \axi_awaddr_reg[28]_i_3_n_8 ;
  wire \axi_awaddr_reg[28]_i_3_n_9 ;
  wire \axi_awaddr_reg[30]_i_1_n_14 ;
  wire \axi_awaddr_reg[30]_i_1_n_15 ;
  wire \axi_awaddr_reg[30]_i_1_n_7 ;
  wire axi_awvalid;
  wire axi_awvalid0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_3_n_0;
  wire axi_awvalid_reg_0;
  wire axi_bready;
  wire axi_bready_i_1_n_0;
  wire axi_bready_reg_0;
  wire axi_rready_i_1_n_0;
  wire axi_rready_reg_0;
  wire axi_wdata;
  wire \axi_wdata[15]_i_2_n_0 ;
  wire \axi_wdata[15]_i_3_n_0 ;
  wire \axi_wdata[15]_i_4_n_0 ;
  wire \axi_wdata[15]_i_5_n_0 ;
  wire \axi_wdata[15]_i_6_n_0 ;
  wire \axi_wdata[15]_i_7_n_0 ;
  wire \axi_wdata[15]_i_8_n_0 ;
  wire \axi_wdata[15]_i_9_n_0 ;
  wire \axi_wdata[23]_i_2_n_0 ;
  wire \axi_wdata[23]_i_3_n_0 ;
  wire \axi_wdata[23]_i_4_n_0 ;
  wire \axi_wdata[23]_i_5_n_0 ;
  wire \axi_wdata[23]_i_6_n_0 ;
  wire \axi_wdata[23]_i_7_n_0 ;
  wire \axi_wdata[23]_i_8_n_0 ;
  wire \axi_wdata[23]_i_9_n_0 ;
  wire \axi_wdata[31]_i_10_n_0 ;
  wire \axi_wdata[31]_i_3_n_0 ;
  wire \axi_wdata[31]_i_4_n_0 ;
  wire \axi_wdata[31]_i_5_n_0 ;
  wire \axi_wdata[31]_i_6_n_0 ;
  wire \axi_wdata[31]_i_7_n_0 ;
  wire \axi_wdata[31]_i_8_n_0 ;
  wire \axi_wdata[31]_i_9_n_0 ;
  wire \axi_wdata[7]_i_10_n_0 ;
  wire \axi_wdata[7]_i_2_n_0 ;
  wire \axi_wdata[7]_i_3_n_0 ;
  wire \axi_wdata[7]_i_4_n_0 ;
  wire \axi_wdata[7]_i_5_n_0 ;
  wire \axi_wdata[7]_i_6_n_0 ;
  wire \axi_wdata[7]_i_7_n_0 ;
  wire \axi_wdata[7]_i_8_n_0 ;
  wire \axi_wdata[7]_i_9_n_0 ;
  wire \axi_wdata_reg[15]_i_1_n_0 ;
  wire \axi_wdata_reg[15]_i_1_n_1 ;
  wire \axi_wdata_reg[15]_i_1_n_10 ;
  wire \axi_wdata_reg[15]_i_1_n_11 ;
  wire \axi_wdata_reg[15]_i_1_n_12 ;
  wire \axi_wdata_reg[15]_i_1_n_13 ;
  wire \axi_wdata_reg[15]_i_1_n_14 ;
  wire \axi_wdata_reg[15]_i_1_n_15 ;
  wire \axi_wdata_reg[15]_i_1_n_2 ;
  wire \axi_wdata_reg[15]_i_1_n_3 ;
  wire \axi_wdata_reg[15]_i_1_n_4 ;
  wire \axi_wdata_reg[15]_i_1_n_5 ;
  wire \axi_wdata_reg[15]_i_1_n_6 ;
  wire \axi_wdata_reg[15]_i_1_n_7 ;
  wire \axi_wdata_reg[15]_i_1_n_8 ;
  wire \axi_wdata_reg[15]_i_1_n_9 ;
  wire \axi_wdata_reg[23]_i_1_n_0 ;
  wire \axi_wdata_reg[23]_i_1_n_1 ;
  wire \axi_wdata_reg[23]_i_1_n_10 ;
  wire \axi_wdata_reg[23]_i_1_n_11 ;
  wire \axi_wdata_reg[23]_i_1_n_12 ;
  wire \axi_wdata_reg[23]_i_1_n_13 ;
  wire \axi_wdata_reg[23]_i_1_n_14 ;
  wire \axi_wdata_reg[23]_i_1_n_15 ;
  wire \axi_wdata_reg[23]_i_1_n_2 ;
  wire \axi_wdata_reg[23]_i_1_n_3 ;
  wire \axi_wdata_reg[23]_i_1_n_4 ;
  wire \axi_wdata_reg[23]_i_1_n_5 ;
  wire \axi_wdata_reg[23]_i_1_n_6 ;
  wire \axi_wdata_reg[23]_i_1_n_7 ;
  wire \axi_wdata_reg[23]_i_1_n_8 ;
  wire \axi_wdata_reg[23]_i_1_n_9 ;
  wire \axi_wdata_reg[31]_i_2_n_1 ;
  wire \axi_wdata_reg[31]_i_2_n_10 ;
  wire \axi_wdata_reg[31]_i_2_n_11 ;
  wire \axi_wdata_reg[31]_i_2_n_12 ;
  wire \axi_wdata_reg[31]_i_2_n_13 ;
  wire \axi_wdata_reg[31]_i_2_n_14 ;
  wire \axi_wdata_reg[31]_i_2_n_15 ;
  wire \axi_wdata_reg[31]_i_2_n_2 ;
  wire \axi_wdata_reg[31]_i_2_n_3 ;
  wire \axi_wdata_reg[31]_i_2_n_4 ;
  wire \axi_wdata_reg[31]_i_2_n_5 ;
  wire \axi_wdata_reg[31]_i_2_n_6 ;
  wire \axi_wdata_reg[31]_i_2_n_7 ;
  wire \axi_wdata_reg[31]_i_2_n_8 ;
  wire \axi_wdata_reg[31]_i_2_n_9 ;
  wire \axi_wdata_reg[7]_i_1_n_0 ;
  wire \axi_wdata_reg[7]_i_1_n_1 ;
  wire \axi_wdata_reg[7]_i_1_n_10 ;
  wire \axi_wdata_reg[7]_i_1_n_11 ;
  wire \axi_wdata_reg[7]_i_1_n_12 ;
  wire \axi_wdata_reg[7]_i_1_n_13 ;
  wire \axi_wdata_reg[7]_i_1_n_14 ;
  wire \axi_wdata_reg[7]_i_1_n_15 ;
  wire \axi_wdata_reg[7]_i_1_n_2 ;
  wire \axi_wdata_reg[7]_i_1_n_3 ;
  wire \axi_wdata_reg[7]_i_1_n_4 ;
  wire \axi_wdata_reg[7]_i_1_n_5 ;
  wire \axi_wdata_reg[7]_i_1_n_6 ;
  wire \axi_wdata_reg[7]_i_1_n_7 ;
  wire \axi_wdata_reg[7]_i_1_n_8 ;
  wire \axi_wdata_reg[7]_i_1_n_9 ;
  wire axi_wlast_i_1_n_0;
  wire axi_wlast_i_2_n_0;
  wire axi_wlast_i_3_n_0;
  wire axi_wlast_i_4_n_0;
  wire axi_wlast_reg_0;
  wire axi_wvalid;
  wire compare_done;
  wire compare_done_i_1_n_0;
  wire compare_done_i_2_n_0;
  wire error_reg;
  wire error_reg_i_1_n_0;
  wire error_reg_i_2_n_0;
  wire \expected_rdata[0]_i_3_n_0 ;
  wire [31:0]expected_rdata_reg;
  wire \expected_rdata_reg[0]_i_2_n_0 ;
  wire \expected_rdata_reg[0]_i_2_n_1 ;
  wire \expected_rdata_reg[0]_i_2_n_10 ;
  wire \expected_rdata_reg[0]_i_2_n_11 ;
  wire \expected_rdata_reg[0]_i_2_n_12 ;
  wire \expected_rdata_reg[0]_i_2_n_13 ;
  wire \expected_rdata_reg[0]_i_2_n_14 ;
  wire \expected_rdata_reg[0]_i_2_n_15 ;
  wire \expected_rdata_reg[0]_i_2_n_2 ;
  wire \expected_rdata_reg[0]_i_2_n_3 ;
  wire \expected_rdata_reg[0]_i_2_n_4 ;
  wire \expected_rdata_reg[0]_i_2_n_5 ;
  wire \expected_rdata_reg[0]_i_2_n_6 ;
  wire \expected_rdata_reg[0]_i_2_n_7 ;
  wire \expected_rdata_reg[0]_i_2_n_8 ;
  wire \expected_rdata_reg[0]_i_2_n_9 ;
  wire \expected_rdata_reg[16]_i_1_n_0 ;
  wire \expected_rdata_reg[16]_i_1_n_1 ;
  wire \expected_rdata_reg[16]_i_1_n_10 ;
  wire \expected_rdata_reg[16]_i_1_n_11 ;
  wire \expected_rdata_reg[16]_i_1_n_12 ;
  wire \expected_rdata_reg[16]_i_1_n_13 ;
  wire \expected_rdata_reg[16]_i_1_n_14 ;
  wire \expected_rdata_reg[16]_i_1_n_15 ;
  wire \expected_rdata_reg[16]_i_1_n_2 ;
  wire \expected_rdata_reg[16]_i_1_n_3 ;
  wire \expected_rdata_reg[16]_i_1_n_4 ;
  wire \expected_rdata_reg[16]_i_1_n_5 ;
  wire \expected_rdata_reg[16]_i_1_n_6 ;
  wire \expected_rdata_reg[16]_i_1_n_7 ;
  wire \expected_rdata_reg[16]_i_1_n_8 ;
  wire \expected_rdata_reg[16]_i_1_n_9 ;
  wire \expected_rdata_reg[24]_i_1_n_1 ;
  wire \expected_rdata_reg[24]_i_1_n_10 ;
  wire \expected_rdata_reg[24]_i_1_n_11 ;
  wire \expected_rdata_reg[24]_i_1_n_12 ;
  wire \expected_rdata_reg[24]_i_1_n_13 ;
  wire \expected_rdata_reg[24]_i_1_n_14 ;
  wire \expected_rdata_reg[24]_i_1_n_15 ;
  wire \expected_rdata_reg[24]_i_1_n_2 ;
  wire \expected_rdata_reg[24]_i_1_n_3 ;
  wire \expected_rdata_reg[24]_i_1_n_4 ;
  wire \expected_rdata_reg[24]_i_1_n_5 ;
  wire \expected_rdata_reg[24]_i_1_n_6 ;
  wire \expected_rdata_reg[24]_i_1_n_7 ;
  wire \expected_rdata_reg[24]_i_1_n_8 ;
  wire \expected_rdata_reg[24]_i_1_n_9 ;
  wire \expected_rdata_reg[8]_i_1_n_0 ;
  wire \expected_rdata_reg[8]_i_1_n_1 ;
  wire \expected_rdata_reg[8]_i_1_n_10 ;
  wire \expected_rdata_reg[8]_i_1_n_11 ;
  wire \expected_rdata_reg[8]_i_1_n_12 ;
  wire \expected_rdata_reg[8]_i_1_n_13 ;
  wire \expected_rdata_reg[8]_i_1_n_14 ;
  wire \expected_rdata_reg[8]_i_1_n_15 ;
  wire \expected_rdata_reg[8]_i_1_n_2 ;
  wire \expected_rdata_reg[8]_i_1_n_3 ;
  wire \expected_rdata_reg[8]_i_1_n_4 ;
  wire \expected_rdata_reg[8]_i_1_n_5 ;
  wire \expected_rdata_reg[8]_i_1_n_6 ;
  wire \expected_rdata_reg[8]_i_1_n_7 ;
  wire \expected_rdata_reg[8]_i_1_n_8 ;
  wire \expected_rdata_reg[8]_i_1_n_9 ;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire m00_axi_aclk;
  wire [25:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire [25:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire [0:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire [6:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire [6:0]p_0_in__1;
  wire p_17_in;
  wire read_burst_counter;
  wire \read_burst_counter[6]_i_3_n_0 ;
  wire [6:6]read_burst_counter_reg;
  wire [5:0]read_burst_counter_reg__0;
  wire read_index;
  wire \read_index[4]_i_3_n_0 ;
  wire [4:0]read_index_reg;
  wire read_mismatch;
  wire read_mismatch0;
  wire read_mismatch1;
  wire read_mismatch1_carry__0_i_1_n_0;
  wire read_mismatch1_carry__0_i_2_n_0;
  wire read_mismatch1_carry__0_i_3_n_0;
  wire read_mismatch1_carry__0_n_6;
  wire read_mismatch1_carry__0_n_7;
  wire read_mismatch1_carry_i_1_n_0;
  wire read_mismatch1_carry_i_2_n_0;
  wire read_mismatch1_carry_i_3_n_0;
  wire read_mismatch1_carry_i_4_n_0;
  wire read_mismatch1_carry_i_5_n_0;
  wire read_mismatch1_carry_i_6_n_0;
  wire read_mismatch1_carry_i_7_n_0;
  wire read_mismatch1_carry_i_8_n_0;
  wire read_mismatch1_carry_n_0;
  wire read_mismatch1_carry_n_1;
  wire read_mismatch1_carry_n_2;
  wire read_mismatch1_carry_n_3;
  wire read_mismatch1_carry_n_4;
  wire read_mismatch1_carry_n_5;
  wire read_mismatch1_carry_n_6;
  wire read_mismatch1_carry_n_7;
  wire reads_done;
  wire reads_done_i_1_n_0;
  wire [1:0]state_read;
  wire [1:0]state_read__0;
  wire [1:0]state_write;
  wire [1:0]state_write__0;
  wire write_burst_counter;
  wire [6:6]write_burst_counter_reg;
  wire [5:0]write_burst_counter_reg__0;
  wire [4:0]write_index;
  wire \write_index[4]_i_1_n_0 ;
  wire \write_index[4]_i_3_n_0 ;
  wire \write_index[4]_i_4_n_0 ;
  wire \write_index_reg_n_0_[0] ;
  wire \write_index_reg_n_0_[1] ;
  wire \write_index_reg_n_0_[2] ;
  wire \write_index_reg_n_0_[3] ;
  wire \write_index_reg_n_0_[4] ;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire [7:2]NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED;
  wire [7:3]NLW_M_AXI_ARADDR_carry_O_UNCONNECTED;
  wire [7:2]NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED;
  wire [7:3]NLW_M_AXI_AWADDR_carry_O_UNCONNECTED;
  wire [7:1]\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_expected_rdata_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:0]NLW_read_mismatch1_carry_O_UNCONNECTED;
  wire [7:3]NLW_read_mismatch1_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_read_mismatch1_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    ERROR_i_1
       (.I0(compare_done),
        .I1(error_reg),
        .O(ERROR_i_1_n_0));
  FDRE ERROR_reg
       (.C(m00_axi_aclk),
        .CE(compare_done_i_2_n_0),
        .D(ERROR_i_1_n_0),
        .Q(m00_axi_error),
        .R(compare_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF8A)) 
    \FSM_onehot_mst_exec_state[0]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I1(init_txn_ff2),
        .I2(init_txn_ff),
        .I3(compare_done),
        .O(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4F444444)) 
    \FSM_onehot_mst_exec_state[1]_i_1 
       (.I0(writes_done),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I2(init_txn_ff2),
        .I3(init_txn_ff),
        .I4(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .O(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_mst_exec_state[2]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I1(writes_done),
        .I2(reads_done),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_mst_exec_state[3]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(reads_done),
        .O(\FSM_onehot_mst_exec_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .S(compare_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .R(compare_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .R(compare_done_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[3]_i_1_n_0 ),
        .Q(compare_done),
        .R(compare_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F000100)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I1(compare_done),
        .I2(state_read[0]),
        .I3(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I4(state_read[1]),
        .I5(\FSM_sequential_state_read[0]_i_2_n_0 ),
        .O(state_read__0[0]));
  LUT6 #(
    .INIT(64'h000077770FFF0000)) 
    \FSM_sequential_state_read[0]_i_2 
       (.I0(m00_axi_arready),
        .I1(axi_arvalid_reg_0),
        .I2(m00_axi_rvalid),
        .I3(m00_axi_rlast),
        .I4(state_read[1]),
        .I5(state_read[0]),
        .O(\FSM_sequential_state_read[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \FSM_sequential_state_read[1]_i_1__0 
       (.I0(axi_arvalid_i_2_n_0),
        .I1(state_read[0]),
        .I2(m00_axi_aresetn),
        .I3(\FSM_sequential_state_write[1]_i_5_n_0 ),
        .I4(state_read[1]),
        .I5(axi_awvalid0),
        .O(\FSM_sequential_state_read[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "RDATA:10,RADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\FSM_sequential_state_read[1]_i_1__0_n_0 ),
        .D(state_read__0[0]),
        .Q(state_read[0]),
        .R(\FSM_sequential_state_write[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "RDATA:10,RADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\FSM_sequential_state_read[1]_i_1__0_n_0 ),
        .D(state_read__0[1]),
        .Q(state_read[1]),
        .R(\FSM_sequential_state_write[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \FSM_sequential_state_write[0]_i_1__0 
       (.I0(\FSM_sequential_state_write[0]_i_2_n_0 ),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I2(compare_done),
        .I3(state_write[1]),
        .I4(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I5(state_write[0]),
        .O(state_write__0[0]));
  LUT6 #(
    .INIT(64'h000077F7FFF00000)) 
    \FSM_sequential_state_write[0]_i_2 
       (.I0(m00_axi_awready),
        .I1(axi_awvalid_reg_0),
        .I2(axi_awvalid_i_3_n_0),
        .I3(\FSM_sequential_state_write[1]_i_4_n_0 ),
        .I4(state_write[1]),
        .I5(state_write[0]),
        .O(\FSM_sequential_state_write[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_write[1]_i_1__0 
       (.I0(init_txn_ff),
        .I1(init_txn_ff2),
        .O(\FSM_sequential_state_write[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h100010001000FFFF)) 
    \FSM_sequential_state_write[1]_i_2__0 
       (.I0(\FSM_sequential_state_write[1]_i_4_n_0 ),
        .I1(state_write[0]),
        .I2(m00_axi_aresetn),
        .I3(\FSM_sequential_state_write[1]_i_5_n_0 ),
        .I4(state_write[1]),
        .I5(axi_awvalid0),
        .O(\FSM_sequential_state_write[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000800080)) 
    \FSM_sequential_state_write[1]_i_3 
       (.I0(axi_awvalid_reg_0),
        .I1(m00_axi_awready),
        .I2(state_write[0]),
        .I3(state_write[1]),
        .I4(m00_axi_wready),
        .I5(axi_wlast_reg_0),
        .O(state_write__0[1]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_write[1]_i_4 
       (.I0(axi_wlast_reg_0),
        .I1(m00_axi_wready),
        .O(\FSM_sequential_state_write[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_write[1]_i_5 
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .O(\FSM_sequential_state_write[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "WDATA:10,WADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\FSM_sequential_state_write[1]_i_2__0_n_0 ),
        .D(state_write__0[0]),
        .Q(state_write[0]),
        .R(\FSM_sequential_state_write[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "WDATA:10,WADDR:01,IDLE:00" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\FSM_sequential_state_write[1]_i_2__0_n_0 ),
        .D(state_write__0[1]),
        .Q(state_write[1]),
        .R(\FSM_sequential_state_write[1]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 M_AXI_ARADDR_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED[7:2],M_AXI_ARADDR_carry_n_6,M_AXI_ARADDR_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_araddr_reg[30],1'b0}),
        .O({NLW_M_AXI_ARADDR_carry_O_UNCONNECTED[7:3],m00_axi_araddr[25:23]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,axi_araddr_reg[31],M_AXI_ARADDR_carry_i_1_n_0,axi_araddr_reg[29]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_ARADDR_carry_i_1
       (.I0(axi_araddr_reg[30]),
        .O(M_AXI_ARADDR_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 M_AXI_AWADDR_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED[7:2],M_AXI_AWADDR_carry_n_6,M_AXI_AWADDR_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_awaddr_reg[30],1'b0}),
        .O({NLW_M_AXI_AWADDR_carry_O_UNCONNECTED[7:3],m00_axi_awaddr[25:23]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,axi_awaddr_reg[31],M_AXI_AWADDR_carry_i_1_n_0,axi_awaddr_reg[29]}));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_AWADDR_carry_i_1
       (.I0(axi_awaddr_reg[30]),
        .O(M_AXI_AWADDR_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_araddr[13]_i_2 
       (.I0(m00_axi_araddr[0]),
        .O(\axi_araddr[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_araddr[28]_i_1 
       (.I0(state_read[1]),
        .I1(state_read[0]),
        .I2(axi_arvalid_reg_0),
        .I3(m00_axi_arready),
        .O(state_read__0[1]));
  FDRE \axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_11 ),
        .Q(m00_axi_araddr[4]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_10 ),
        .Q(m00_axi_araddr[5]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_9 ),
        .Q(m00_axi_araddr[6]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_8 ),
        .Q(m00_axi_araddr[7]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[13]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_araddr_reg[13]_i_1_n_0 ,\axi_araddr_reg[13]_i_1_n_1 ,\axi_araddr_reg[13]_i_1_n_2 ,\axi_araddr_reg[13]_i_1_n_3 ,\axi_araddr_reg[13]_i_1_n_4 ,\axi_araddr_reg[13]_i_1_n_5 ,\axi_araddr_reg[13]_i_1_n_6 ,\axi_araddr_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_araddr_reg[13]_i_1_n_8 ,\axi_araddr_reg[13]_i_1_n_9 ,\axi_araddr_reg[13]_i_1_n_10 ,\axi_araddr_reg[13]_i_1_n_11 ,\axi_araddr_reg[13]_i_1_n_12 ,\axi_araddr_reg[13]_i_1_n_13 ,\axi_araddr_reg[13]_i_1_n_14 ,\axi_araddr_reg[13]_i_1_n_15 }),
        .S({m00_axi_araddr[7:1],\axi_araddr[13]_i_2_n_0 }));
  FDRE \axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_15 ),
        .Q(m00_axi_araddr[8]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_14 ),
        .Q(m00_axi_araddr[9]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_13 ),
        .Q(m00_axi_araddr[10]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_12 ),
        .Q(m00_axi_araddr[11]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_11 ),
        .Q(m00_axi_araddr[12]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_10 ),
        .Q(m00_axi_araddr[13]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_9 ),
        .Q(m00_axi_araddr[14]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[21]_i_1_n_8 ),
        .Q(m00_axi_araddr[15]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[21]_i_1 
       (.CI(\axi_araddr_reg[13]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr_reg[21]_i_1_n_0 ,\axi_araddr_reg[21]_i_1_n_1 ,\axi_araddr_reg[21]_i_1_n_2 ,\axi_araddr_reg[21]_i_1_n_3 ,\axi_araddr_reg[21]_i_1_n_4 ,\axi_araddr_reg[21]_i_1_n_5 ,\axi_araddr_reg[21]_i_1_n_6 ,\axi_araddr_reg[21]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[21]_i_1_n_8 ,\axi_araddr_reg[21]_i_1_n_9 ,\axi_araddr_reg[21]_i_1_n_10 ,\axi_araddr_reg[21]_i_1_n_11 ,\axi_araddr_reg[21]_i_1_n_12 ,\axi_araddr_reg[21]_i_1_n_13 ,\axi_araddr_reg[21]_i_1_n_14 ,\axi_araddr_reg[21]_i_1_n_15 }),
        .S(m00_axi_araddr[15:8]));
  FDRE \axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_15 ),
        .Q(m00_axi_araddr[16]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_14 ),
        .Q(m00_axi_araddr[17]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_13 ),
        .Q(m00_axi_araddr[18]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_12 ),
        .Q(m00_axi_araddr[19]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_11 ),
        .Q(m00_axi_araddr[20]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_10 ),
        .Q(m00_axi_araddr[21]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_9 ),
        .Q(m00_axi_araddr[22]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[28]_i_2 
       (.CI(\axi_araddr_reg[21]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr_reg[28]_i_2_n_0 ,\axi_araddr_reg[28]_i_2_n_1 ,\axi_araddr_reg[28]_i_2_n_2 ,\axi_araddr_reg[28]_i_2_n_3 ,\axi_araddr_reg[28]_i_2_n_4 ,\axi_araddr_reg[28]_i_2_n_5 ,\axi_araddr_reg[28]_i_2_n_6 ,\axi_araddr_reg[28]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[28]_i_2_n_8 ,\axi_araddr_reg[28]_i_2_n_9 ,\axi_araddr_reg[28]_i_2_n_10 ,\axi_araddr_reg[28]_i_2_n_11 ,\axi_araddr_reg[28]_i_2_n_12 ,\axi_araddr_reg[28]_i_2_n_13 ,\axi_araddr_reg[28]_i_2_n_14 ,\axi_araddr_reg[28]_i_2_n_15 }),
        .S({axi_araddr_reg[29],m00_axi_araddr[22:16]}));
  FDRE \axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[28]_i_2_n_8 ),
        .Q(axi_araddr_reg[29]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[30]_i_1_n_15 ),
        .Q(axi_araddr_reg[30]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_araddr_reg[30]_i_1 
       (.CI(\axi_araddr_reg[28]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED [7:1],\axi_araddr_reg[30]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED [7:2],\axi_araddr_reg[30]_i_1_n_14 ,\axi_araddr_reg[30]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_araddr_reg[31:30]}));
  FDRE \axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[30]_i_1_n_14 ),
        .Q(axi_araddr_reg[31]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_15 ),
        .Q(m00_axi_araddr[0]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_14 ),
        .Q(m00_axi_araddr[1]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_13 ),
        .Q(m00_axi_araddr[2]),
        .R(axi_awvalid0));
  FDRE \axi_araddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(state_read__0[1]),
        .D(\axi_araddr_reg[13]_i_1_n_12 ),
        .Q(m00_axi_araddr[3]),
        .R(axi_awvalid0));
  LUT6 #(
    .INIT(64'hCF02FF02CB0AFB0A)) 
    axi_arvalid_i_1
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(state_read[1]),
        .I2(state_read[0]),
        .I3(axi_arvalid_reg_0),
        .I4(m00_axi_arready),
        .I5(axi_arvalid_i_2_n_0),
        .O(axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axi_arvalid_i_2
       (.I0(m00_axi_rvalid),
        .I1(m00_axi_rlast),
        .O(axi_arvalid_i_2_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(axi_arvalid_reg_0),
        .R(axi_awvalid0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr[13]_i_2 
       (.I0(m00_axi_awaddr[0]),
        .O(\axi_awaddr[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \axi_awaddr[28]_i_1 
       (.I0(init_txn_ff),
        .I1(init_txn_ff2),
        .I2(m00_axi_aresetn),
        .O(axi_awvalid0));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_awaddr[28]_i_2 
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(m00_axi_awready),
        .I3(axi_awvalid_reg_0),
        .O(axi_awaddr));
  FDRE \axi_awaddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_11 ),
        .Q(m00_axi_awaddr[4]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_10 ),
        .Q(m00_axi_awaddr[5]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_9 ),
        .Q(m00_axi_awaddr[6]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_8 ),
        .Q(m00_axi_awaddr[7]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[13]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[13]_i_1_n_0 ,\axi_awaddr_reg[13]_i_1_n_1 ,\axi_awaddr_reg[13]_i_1_n_2 ,\axi_awaddr_reg[13]_i_1_n_3 ,\axi_awaddr_reg[13]_i_1_n_4 ,\axi_awaddr_reg[13]_i_1_n_5 ,\axi_awaddr_reg[13]_i_1_n_6 ,\axi_awaddr_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_awaddr_reg[13]_i_1_n_8 ,\axi_awaddr_reg[13]_i_1_n_9 ,\axi_awaddr_reg[13]_i_1_n_10 ,\axi_awaddr_reg[13]_i_1_n_11 ,\axi_awaddr_reg[13]_i_1_n_12 ,\axi_awaddr_reg[13]_i_1_n_13 ,\axi_awaddr_reg[13]_i_1_n_14 ,\axi_awaddr_reg[13]_i_1_n_15 }),
        .S({m00_axi_awaddr[7:1],\axi_awaddr[13]_i_2_n_0 }));
  FDRE \axi_awaddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_15 ),
        .Q(m00_axi_awaddr[8]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_14 ),
        .Q(m00_axi_awaddr[9]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_13 ),
        .Q(m00_axi_awaddr[10]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_12 ),
        .Q(m00_axi_awaddr[11]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_11 ),
        .Q(m00_axi_awaddr[12]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_10 ),
        .Q(m00_axi_awaddr[13]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_9 ),
        .Q(m00_axi_awaddr[14]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[21]_i_1_n_8 ),
        .Q(m00_axi_awaddr[15]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[21]_i_1 
       (.CI(\axi_awaddr_reg[13]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[21]_i_1_n_0 ,\axi_awaddr_reg[21]_i_1_n_1 ,\axi_awaddr_reg[21]_i_1_n_2 ,\axi_awaddr_reg[21]_i_1_n_3 ,\axi_awaddr_reg[21]_i_1_n_4 ,\axi_awaddr_reg[21]_i_1_n_5 ,\axi_awaddr_reg[21]_i_1_n_6 ,\axi_awaddr_reg[21]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[21]_i_1_n_8 ,\axi_awaddr_reg[21]_i_1_n_9 ,\axi_awaddr_reg[21]_i_1_n_10 ,\axi_awaddr_reg[21]_i_1_n_11 ,\axi_awaddr_reg[21]_i_1_n_12 ,\axi_awaddr_reg[21]_i_1_n_13 ,\axi_awaddr_reg[21]_i_1_n_14 ,\axi_awaddr_reg[21]_i_1_n_15 }),
        .S(m00_axi_awaddr[15:8]));
  FDRE \axi_awaddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_15 ),
        .Q(m00_axi_awaddr[16]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_14 ),
        .Q(m00_axi_awaddr[17]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_13 ),
        .Q(m00_axi_awaddr[18]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_12 ),
        .Q(m00_axi_awaddr[19]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_11 ),
        .Q(m00_axi_awaddr[20]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_10 ),
        .Q(m00_axi_awaddr[21]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_9 ),
        .Q(m00_axi_awaddr[22]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[28]_i_3 
       (.CI(\axi_awaddr_reg[21]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[28]_i_3_n_0 ,\axi_awaddr_reg[28]_i_3_n_1 ,\axi_awaddr_reg[28]_i_3_n_2 ,\axi_awaddr_reg[28]_i_3_n_3 ,\axi_awaddr_reg[28]_i_3_n_4 ,\axi_awaddr_reg[28]_i_3_n_5 ,\axi_awaddr_reg[28]_i_3_n_6 ,\axi_awaddr_reg[28]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[28]_i_3_n_8 ,\axi_awaddr_reg[28]_i_3_n_9 ,\axi_awaddr_reg[28]_i_3_n_10 ,\axi_awaddr_reg[28]_i_3_n_11 ,\axi_awaddr_reg[28]_i_3_n_12 ,\axi_awaddr_reg[28]_i_3_n_13 ,\axi_awaddr_reg[28]_i_3_n_14 ,\axi_awaddr_reg[28]_i_3_n_15 }),
        .S({axi_awaddr_reg[29],m00_axi_awaddr[22:16]}));
  FDRE \axi_awaddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[28]_i_3_n_8 ),
        .Q(axi_awaddr_reg[29]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[30]_i_1_n_15 ),
        .Q(axi_awaddr_reg[30]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_awaddr_reg[30]_i_1 
       (.CI(\axi_awaddr_reg[28]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED [7:1],\axi_awaddr_reg[30]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED [7:2],\axi_awaddr_reg[30]_i_1_n_14 ,\axi_awaddr_reg[30]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_awaddr_reg[31:30]}));
  FDRE \axi_awaddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[30]_i_1_n_14 ),
        .Q(axi_awaddr_reg[31]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_15 ),
        .Q(m00_axi_awaddr[0]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_14 ),
        .Q(m00_axi_awaddr[1]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_13 ),
        .Q(m00_axi_awaddr[2]),
        .R(axi_awvalid0));
  FDRE \axi_awaddr_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_awaddr),
        .D(\axi_awaddr_reg[13]_i_1_n_12 ),
        .Q(m00_axi_awaddr[3]),
        .R(axi_awvalid0));
  LUT6 #(
    .INIT(64'hBBABABABBAAAAAAA)) 
    axi_awvalid_i_1
       (.I0(axi_awaddr),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(m00_axi_wready),
        .I4(axi_wlast_reg_0),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4000D555)) 
    axi_awvalid_i_2
       (.I0(state_write[0]),
        .I1(axi_awvalid_i_3_n_0),
        .I2(m00_axi_wready),
        .I3(axi_wlast_reg_0),
        .I4(state_write[1]),
        .O(axi_awvalid));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    axi_awvalid_i_3
       (.I0(write_burst_counter_reg__0[4]),
        .I1(write_burst_counter_reg__0[2]),
        .I2(write_burst_counter_reg__0[0]),
        .I3(write_burst_counter_reg__0[1]),
        .I4(write_burst_counter_reg__0[3]),
        .I5(write_burst_counter_reg__0[5]),
        .O(axi_awvalid_i_3_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(axi_awvalid_i_1_n_0),
        .D(axi_awvalid),
        .Q(axi_awvalid_reg_0),
        .R(axi_awvalid0));
  LUT6 #(
    .INIT(64'hAAAAAAAABB88AB88)) 
    axi_bready_i_1
       (.I0(axi_bready),
        .I1(axi_awaddr),
        .I2(m00_axi_bvalid),
        .I3(axi_bready_reg_0),
        .I4(state_write[1]),
        .I5(axi_wlast_i_4_n_0),
        .O(axi_bready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0880008000800080)) 
    axi_bready_i_2
       (.I0(axi_wlast_reg_0),
        .I1(m00_axi_wready),
        .I2(state_write[1]),
        .I3(state_write[0]),
        .I4(m00_axi_awready),
        .I5(axi_awvalid_reg_0),
        .O(axi_bready));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(axi_bready_reg_0),
        .R(axi_awvalid0));
  LUT6 #(
    .INIT(64'hFFAAFFFF0000C000)) 
    axi_rready_i_1
       (.I0(axi_arvalid_i_2_n_0),
        .I1(m00_axi_arready),
        .I2(axi_arvalid_reg_0),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .I5(axi_rready_reg_0),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready_reg_0),
        .R(axi_awvalid0));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_2 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[15]),
        .O(\axi_wdata[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_3 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[14]),
        .O(\axi_wdata[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_4 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[13]),
        .O(\axi_wdata[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_5 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[12]),
        .O(\axi_wdata[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_6 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[11]),
        .O(\axi_wdata[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_7 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[10]),
        .O(\axi_wdata[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_8 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[9]),
        .O(\axi_wdata[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[15]_i_9 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[8]),
        .O(\axi_wdata[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_2 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[23]),
        .O(\axi_wdata[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_3 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[22]),
        .O(\axi_wdata[23]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_4 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[21]),
        .O(\axi_wdata[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_5 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[20]),
        .O(\axi_wdata[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_6 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[19]),
        .O(\axi_wdata[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_7 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[18]),
        .O(\axi_wdata[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_8 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[17]),
        .O(\axi_wdata[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[23]_i_9 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[16]),
        .O(\axi_wdata[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0080F000)) 
    \axi_wdata[31]_i_1 
       (.I0(m00_axi_awready),
        .I1(axi_awvalid_reg_0),
        .I2(m00_axi_wready),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(axi_wdata));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_10 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[24]),
        .O(\axi_wdata[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_3 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[31]),
        .O(\axi_wdata[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_4 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[30]),
        .O(\axi_wdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_5 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[29]),
        .O(\axi_wdata[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_6 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[28]),
        .O(\axi_wdata[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_7 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[27]),
        .O(\axi_wdata[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_8 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[26]),
        .O(\axi_wdata[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[31]_i_9 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[25]),
        .O(\axi_wdata[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \axi_wdata[7]_i_10 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[0]),
        .O(\axi_wdata[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \axi_wdata[7]_i_2 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .O(\axi_wdata[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[7]_i_3 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[7]),
        .O(\axi_wdata[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[7]_i_4 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[6]),
        .O(\axi_wdata[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[7]_i_5 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[5]),
        .O(\axi_wdata[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[7]_i_6 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[4]),
        .O(\axi_wdata[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[7]_i_7 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[3]),
        .O(\axi_wdata[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[7]_i_8 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[2]),
        .O(\axi_wdata[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \axi_wdata[7]_i_9 
       (.I0(axi_awvalid_i_3_n_0),
        .I1(m00_axi_wready),
        .I2(axi_wlast_reg_0),
        .I3(m00_axi_wdata[1]),
        .O(\axi_wdata[7]_i_9_n_0 ));
  FDSE \axi_wdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_15 ),
        .Q(m00_axi_wdata[0]),
        .S(axi_awvalid0));
  FDRE \axi_wdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_13 ),
        .Q(m00_axi_wdata[10]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_12 ),
        .Q(m00_axi_wdata[11]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_11 ),
        .Q(m00_axi_wdata[12]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_10 ),
        .Q(m00_axi_wdata[13]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_9 ),
        .Q(m00_axi_wdata[14]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_8 ),
        .Q(m00_axi_wdata[15]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_wdata_reg[15]_i_1 
       (.CI(\axi_wdata_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_wdata_reg[15]_i_1_n_0 ,\axi_wdata_reg[15]_i_1_n_1 ,\axi_wdata_reg[15]_i_1_n_2 ,\axi_wdata_reg[15]_i_1_n_3 ,\axi_wdata_reg[15]_i_1_n_4 ,\axi_wdata_reg[15]_i_1_n_5 ,\axi_wdata_reg[15]_i_1_n_6 ,\axi_wdata_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[15]_i_1_n_8 ,\axi_wdata_reg[15]_i_1_n_9 ,\axi_wdata_reg[15]_i_1_n_10 ,\axi_wdata_reg[15]_i_1_n_11 ,\axi_wdata_reg[15]_i_1_n_12 ,\axi_wdata_reg[15]_i_1_n_13 ,\axi_wdata_reg[15]_i_1_n_14 ,\axi_wdata_reg[15]_i_1_n_15 }),
        .S({\axi_wdata[15]_i_2_n_0 ,\axi_wdata[15]_i_3_n_0 ,\axi_wdata[15]_i_4_n_0 ,\axi_wdata[15]_i_5_n_0 ,\axi_wdata[15]_i_6_n_0 ,\axi_wdata[15]_i_7_n_0 ,\axi_wdata[15]_i_8_n_0 ,\axi_wdata[15]_i_9_n_0 }));
  FDRE \axi_wdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_15 ),
        .Q(m00_axi_wdata[16]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_14 ),
        .Q(m00_axi_wdata[17]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_13 ),
        .Q(m00_axi_wdata[18]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_12 ),
        .Q(m00_axi_wdata[19]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_14 ),
        .Q(m00_axi_wdata[1]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_11 ),
        .Q(m00_axi_wdata[20]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_10 ),
        .Q(m00_axi_wdata[21]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_9 ),
        .Q(m00_axi_wdata[22]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[23]_i_1_n_8 ),
        .Q(m00_axi_wdata[23]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_wdata_reg[23]_i_1 
       (.CI(\axi_wdata_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_wdata_reg[23]_i_1_n_0 ,\axi_wdata_reg[23]_i_1_n_1 ,\axi_wdata_reg[23]_i_1_n_2 ,\axi_wdata_reg[23]_i_1_n_3 ,\axi_wdata_reg[23]_i_1_n_4 ,\axi_wdata_reg[23]_i_1_n_5 ,\axi_wdata_reg[23]_i_1_n_6 ,\axi_wdata_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[23]_i_1_n_8 ,\axi_wdata_reg[23]_i_1_n_9 ,\axi_wdata_reg[23]_i_1_n_10 ,\axi_wdata_reg[23]_i_1_n_11 ,\axi_wdata_reg[23]_i_1_n_12 ,\axi_wdata_reg[23]_i_1_n_13 ,\axi_wdata_reg[23]_i_1_n_14 ,\axi_wdata_reg[23]_i_1_n_15 }),
        .S({\axi_wdata[23]_i_2_n_0 ,\axi_wdata[23]_i_3_n_0 ,\axi_wdata[23]_i_4_n_0 ,\axi_wdata[23]_i_5_n_0 ,\axi_wdata[23]_i_6_n_0 ,\axi_wdata[23]_i_7_n_0 ,\axi_wdata[23]_i_8_n_0 ,\axi_wdata[23]_i_9_n_0 }));
  FDRE \axi_wdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_15 ),
        .Q(m00_axi_wdata[24]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_14 ),
        .Q(m00_axi_wdata[25]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_13 ),
        .Q(m00_axi_wdata[26]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_12 ),
        .Q(m00_axi_wdata[27]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_11 ),
        .Q(m00_axi_wdata[28]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_10 ),
        .Q(m00_axi_wdata[29]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_13 ),
        .Q(m00_axi_wdata[2]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_9 ),
        .Q(m00_axi_wdata[30]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[31]_i_2_n_8 ),
        .Q(m00_axi_wdata[31]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_wdata_reg[31]_i_2 
       (.CI(\axi_wdata_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED [7],\axi_wdata_reg[31]_i_2_n_1 ,\axi_wdata_reg[31]_i_2_n_2 ,\axi_wdata_reg[31]_i_2_n_3 ,\axi_wdata_reg[31]_i_2_n_4 ,\axi_wdata_reg[31]_i_2_n_5 ,\axi_wdata_reg[31]_i_2_n_6 ,\axi_wdata_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_wdata_reg[31]_i_2_n_8 ,\axi_wdata_reg[31]_i_2_n_9 ,\axi_wdata_reg[31]_i_2_n_10 ,\axi_wdata_reg[31]_i_2_n_11 ,\axi_wdata_reg[31]_i_2_n_12 ,\axi_wdata_reg[31]_i_2_n_13 ,\axi_wdata_reg[31]_i_2_n_14 ,\axi_wdata_reg[31]_i_2_n_15 }),
        .S({\axi_wdata[31]_i_3_n_0 ,\axi_wdata[31]_i_4_n_0 ,\axi_wdata[31]_i_5_n_0 ,\axi_wdata[31]_i_6_n_0 ,\axi_wdata[31]_i_7_n_0 ,\axi_wdata[31]_i_8_n_0 ,\axi_wdata[31]_i_9_n_0 ,\axi_wdata[31]_i_10_n_0 }));
  FDRE \axi_wdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_12 ),
        .Q(m00_axi_wdata[3]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_11 ),
        .Q(m00_axi_wdata[4]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_10 ),
        .Q(m00_axi_wdata[5]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_9 ),
        .Q(m00_axi_wdata[6]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[7]_i_1_n_8 ),
        .Q(m00_axi_wdata[7]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \axi_wdata_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_wdata_reg[7]_i_1_n_0 ,\axi_wdata_reg[7]_i_1_n_1 ,\axi_wdata_reg[7]_i_1_n_2 ,\axi_wdata_reg[7]_i_1_n_3 ,\axi_wdata_reg[7]_i_1_n_4 ,\axi_wdata_reg[7]_i_1_n_5 ,\axi_wdata_reg[7]_i_1_n_6 ,\axi_wdata_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_wdata[7]_i_2_n_0 }),
        .O({\axi_wdata_reg[7]_i_1_n_8 ,\axi_wdata_reg[7]_i_1_n_9 ,\axi_wdata_reg[7]_i_1_n_10 ,\axi_wdata_reg[7]_i_1_n_11 ,\axi_wdata_reg[7]_i_1_n_12 ,\axi_wdata_reg[7]_i_1_n_13 ,\axi_wdata_reg[7]_i_1_n_14 ,\axi_wdata_reg[7]_i_1_n_15 }),
        .S({\axi_wdata[7]_i_3_n_0 ,\axi_wdata[7]_i_4_n_0 ,\axi_wdata[7]_i_5_n_0 ,\axi_wdata[7]_i_6_n_0 ,\axi_wdata[7]_i_7_n_0 ,\axi_wdata[7]_i_8_n_0 ,\axi_wdata[7]_i_9_n_0 ,\axi_wdata[7]_i_10_n_0 }));
  FDRE \axi_wdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_15 ),
        .Q(m00_axi_wdata[8]),
        .R(axi_awvalid0));
  FDRE \axi_wdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(axi_wdata),
        .D(\axi_wdata_reg[15]_i_1_n_14 ),
        .Q(m00_axi_wdata[9]),
        .R(axi_awvalid0));
  LUT6 #(
    .INIT(64'h0C080C780C0C0C78)) 
    axi_wlast_i_1
       (.I0(axi_wlast_i_2_n_0),
        .I1(axi_wlast_i_3_n_0),
        .I2(axi_wlast_reg_0),
        .I3(axi_wlast_i_4_n_0),
        .I4(axi_awaddr),
        .I5(m00_axi_wready),
        .O(axi_wlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    axi_wlast_i_2
       (.I0(\write_index_reg_n_0_[0] ),
        .I1(\write_index_reg_n_0_[1] ),
        .I2(\write_index_reg_n_0_[2] ),
        .I3(\write_index_reg_n_0_[4] ),
        .I4(\write_index_reg_n_0_[3] ),
        .O(axi_wlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_wlast_i_3
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(m00_axi_wready),
        .O(axi_wlast_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000C0AA)) 
    axi_wlast_i_4
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I1(axi_wlast_reg_0),
        .I2(m00_axi_wready),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(axi_wlast_i_4_n_0));
  FDRE axi_wlast_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wlast_i_1_n_0),
        .Q(axi_wlast_reg_0),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h71333333)) 
    axi_wvalid_i_1
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(axi_awvalid_i_3_n_0),
        .I3(m00_axi_wready),
        .I4(axi_wlast_reg_0),
        .O(axi_wvalid));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(axi_awvalid_i_1_n_0),
        .D(axi_wvalid),
        .Q(m00_axi_wvalid),
        .R(axi_awvalid0));
  LUT1 #(
    .INIT(2'h1)) 
    compare_done_i_1
       (.I0(m00_axi_aresetn),
        .O(compare_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF40)) 
    compare_done_i_2
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I3(compare_done),
        .O(compare_done_i_2_n_0));
  FDRE compare_done_reg
       (.C(m00_axi_aclk),
        .CE(compare_done_i_2_n_0),
        .D(compare_done),
        .Q(m00_axi_txn_done),
        .R(compare_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    error_reg_i_1
       (.I0(p_17_in),
        .I1(m00_axi_rresp),
        .I2(m00_axi_bresp),
        .I3(error_reg_i_2_n_0),
        .I4(read_mismatch),
        .I5(error_reg),
        .O(error_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    error_reg_i_2
       (.I0(axi_bready_reg_0),
        .I1(m00_axi_bvalid),
        .O(error_reg_i_2_n_0));
  FDRE error_reg_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(error_reg_i_1_n_0),
        .Q(error_reg),
        .R(axi_awvalid0));
  LUT2 #(
    .INIT(4'h8)) 
    \expected_rdata[0]_i_1 
       (.I0(axi_rready_reg_0),
        .I1(m00_axi_rvalid),
        .O(p_17_in));
  LUT1 #(
    .INIT(2'h1)) 
    \expected_rdata[0]_i_3 
       (.I0(expected_rdata_reg[0]),
        .O(\expected_rdata[0]_i_3_n_0 ));
  FDSE \expected_rdata_reg[0] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_15 ),
        .Q(expected_rdata_reg[0]),
        .S(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \expected_rdata_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\expected_rdata_reg[0]_i_2_n_0 ,\expected_rdata_reg[0]_i_2_n_1 ,\expected_rdata_reg[0]_i_2_n_2 ,\expected_rdata_reg[0]_i_2_n_3 ,\expected_rdata_reg[0]_i_2_n_4 ,\expected_rdata_reg[0]_i_2_n_5 ,\expected_rdata_reg[0]_i_2_n_6 ,\expected_rdata_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\expected_rdata_reg[0]_i_2_n_8 ,\expected_rdata_reg[0]_i_2_n_9 ,\expected_rdata_reg[0]_i_2_n_10 ,\expected_rdata_reg[0]_i_2_n_11 ,\expected_rdata_reg[0]_i_2_n_12 ,\expected_rdata_reg[0]_i_2_n_13 ,\expected_rdata_reg[0]_i_2_n_14 ,\expected_rdata_reg[0]_i_2_n_15 }),
        .S({expected_rdata_reg[7:1],\expected_rdata[0]_i_3_n_0 }));
  FDRE \expected_rdata_reg[10] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_13 ),
        .Q(expected_rdata_reg[10]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[11] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_12 ),
        .Q(expected_rdata_reg[11]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[12] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_11 ),
        .Q(expected_rdata_reg[12]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[13] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_10 ),
        .Q(expected_rdata_reg[13]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[14] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_9 ),
        .Q(expected_rdata_reg[14]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[15] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_8 ),
        .Q(expected_rdata_reg[15]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[16] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_15 ),
        .Q(expected_rdata_reg[16]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \expected_rdata_reg[16]_i_1 
       (.CI(\expected_rdata_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\expected_rdata_reg[16]_i_1_n_0 ,\expected_rdata_reg[16]_i_1_n_1 ,\expected_rdata_reg[16]_i_1_n_2 ,\expected_rdata_reg[16]_i_1_n_3 ,\expected_rdata_reg[16]_i_1_n_4 ,\expected_rdata_reg[16]_i_1_n_5 ,\expected_rdata_reg[16]_i_1_n_6 ,\expected_rdata_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[16]_i_1_n_8 ,\expected_rdata_reg[16]_i_1_n_9 ,\expected_rdata_reg[16]_i_1_n_10 ,\expected_rdata_reg[16]_i_1_n_11 ,\expected_rdata_reg[16]_i_1_n_12 ,\expected_rdata_reg[16]_i_1_n_13 ,\expected_rdata_reg[16]_i_1_n_14 ,\expected_rdata_reg[16]_i_1_n_15 }),
        .S(expected_rdata_reg[23:16]));
  FDRE \expected_rdata_reg[17] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_14 ),
        .Q(expected_rdata_reg[17]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[18] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_13 ),
        .Q(expected_rdata_reg[18]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[19] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_12 ),
        .Q(expected_rdata_reg[19]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[1] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_14 ),
        .Q(expected_rdata_reg[1]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[20] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_11 ),
        .Q(expected_rdata_reg[20]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[21] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_10 ),
        .Q(expected_rdata_reg[21]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[22] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_9 ),
        .Q(expected_rdata_reg[22]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[23] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[16]_i_1_n_8 ),
        .Q(expected_rdata_reg[23]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[24] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_15 ),
        .Q(expected_rdata_reg[24]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \expected_rdata_reg[24]_i_1 
       (.CI(\expected_rdata_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_expected_rdata_reg[24]_i_1_CO_UNCONNECTED [7],\expected_rdata_reg[24]_i_1_n_1 ,\expected_rdata_reg[24]_i_1_n_2 ,\expected_rdata_reg[24]_i_1_n_3 ,\expected_rdata_reg[24]_i_1_n_4 ,\expected_rdata_reg[24]_i_1_n_5 ,\expected_rdata_reg[24]_i_1_n_6 ,\expected_rdata_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[24]_i_1_n_8 ,\expected_rdata_reg[24]_i_1_n_9 ,\expected_rdata_reg[24]_i_1_n_10 ,\expected_rdata_reg[24]_i_1_n_11 ,\expected_rdata_reg[24]_i_1_n_12 ,\expected_rdata_reg[24]_i_1_n_13 ,\expected_rdata_reg[24]_i_1_n_14 ,\expected_rdata_reg[24]_i_1_n_15 }),
        .S(expected_rdata_reg[31:24]));
  FDRE \expected_rdata_reg[25] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_14 ),
        .Q(expected_rdata_reg[25]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[26] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_13 ),
        .Q(expected_rdata_reg[26]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[27] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_12 ),
        .Q(expected_rdata_reg[27]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[28] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_11 ),
        .Q(expected_rdata_reg[28]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[29] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_10 ),
        .Q(expected_rdata_reg[29]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[2] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_13 ),
        .Q(expected_rdata_reg[2]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[30] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_9 ),
        .Q(expected_rdata_reg[30]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[31] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[24]_i_1_n_8 ),
        .Q(expected_rdata_reg[31]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[3] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_12 ),
        .Q(expected_rdata_reg[3]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[4] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_11 ),
        .Q(expected_rdata_reg[4]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[5] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_10 ),
        .Q(expected_rdata_reg[5]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[6] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_9 ),
        .Q(expected_rdata_reg[6]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[7] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[0]_i_2_n_8 ),
        .Q(expected_rdata_reg[7]),
        .R(axi_awvalid0));
  FDRE \expected_rdata_reg[8] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_15 ),
        .Q(expected_rdata_reg[8]),
        .R(axi_awvalid0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \expected_rdata_reg[8]_i_1 
       (.CI(\expected_rdata_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\expected_rdata_reg[8]_i_1_n_0 ,\expected_rdata_reg[8]_i_1_n_1 ,\expected_rdata_reg[8]_i_1_n_2 ,\expected_rdata_reg[8]_i_1_n_3 ,\expected_rdata_reg[8]_i_1_n_4 ,\expected_rdata_reg[8]_i_1_n_5 ,\expected_rdata_reg[8]_i_1_n_6 ,\expected_rdata_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\expected_rdata_reg[8]_i_1_n_8 ,\expected_rdata_reg[8]_i_1_n_9 ,\expected_rdata_reg[8]_i_1_n_10 ,\expected_rdata_reg[8]_i_1_n_11 ,\expected_rdata_reg[8]_i_1_n_12 ,\expected_rdata_reg[8]_i_1_n_13 ,\expected_rdata_reg[8]_i_1_n_14 ,\expected_rdata_reg[8]_i_1_n_15 }),
        .S(expected_rdata_reg[15:8]));
  FDRE \expected_rdata_reg[9] 
       (.C(m00_axi_aclk),
        .CE(p_17_in),
        .D(\expected_rdata_reg[8]_i_1_n_14 ),
        .Q(expected_rdata_reg[9]),
        .R(axi_awvalid0));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(compare_done_i_1_n_0));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(m00_axi_init_axi_txn),
        .Q(init_txn_ff),
        .R(compare_done_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \read_burst_counter[0]_i_1 
       (.I0(read_burst_counter_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_burst_counter[1]_i_1 
       (.I0(read_burst_counter_reg__0[0]),
        .I1(read_burst_counter_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_burst_counter[2]_i_1 
       (.I0(read_burst_counter_reg__0[1]),
        .I1(read_burst_counter_reg__0[0]),
        .I2(read_burst_counter_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_burst_counter[3]_i_1 
       (.I0(read_burst_counter_reg__0[2]),
        .I1(read_burst_counter_reg__0[0]),
        .I2(read_burst_counter_reg__0[1]),
        .I3(read_burst_counter_reg__0[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_burst_counter[4]_i_1 
       (.I0(read_burst_counter_reg__0[3]),
        .I1(read_burst_counter_reg__0[1]),
        .I2(read_burst_counter_reg__0[0]),
        .I3(read_burst_counter_reg__0[2]),
        .I4(read_burst_counter_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_burst_counter[5]_i_1 
       (.I0(read_burst_counter_reg__0[4]),
        .I1(read_burst_counter_reg__0[2]),
        .I2(read_burst_counter_reg__0[0]),
        .I3(read_burst_counter_reg__0[1]),
        .I4(read_burst_counter_reg__0[3]),
        .I5(read_burst_counter_reg__0[5]),
        .O(p_0_in__1[5]));
  LUT3 #(
    .INIT(8'h08)) 
    \read_burst_counter[6]_i_1 
       (.I0(axi_arvalid_reg_0),
        .I1(m00_axi_arready),
        .I2(read_burst_counter_reg),
        .O(read_burst_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \read_burst_counter[6]_i_2 
       (.I0(\read_burst_counter[6]_i_3_n_0 ),
        .O(p_0_in__1[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \read_burst_counter[6]_i_3 
       (.I0(read_burst_counter_reg__0[4]),
        .I1(read_burst_counter_reg__0[2]),
        .I2(read_burst_counter_reg__0[0]),
        .I3(read_burst_counter_reg__0[1]),
        .I4(read_burst_counter_reg__0[3]),
        .I5(read_burst_counter_reg__0[5]),
        .O(\read_burst_counter[6]_i_3_n_0 ));
  FDRE \read_burst_counter_reg[0] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__1[0]),
        .Q(read_burst_counter_reg__0[0]),
        .R(axi_awvalid0));
  FDRE \read_burst_counter_reg[1] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__1[1]),
        .Q(read_burst_counter_reg__0[1]),
        .R(axi_awvalid0));
  FDRE \read_burst_counter_reg[2] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__1[2]),
        .Q(read_burst_counter_reg__0[2]),
        .R(axi_awvalid0));
  FDRE \read_burst_counter_reg[3] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__1[3]),
        .Q(read_burst_counter_reg__0[3]),
        .R(axi_awvalid0));
  FDRE \read_burst_counter_reg[4] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__1[4]),
        .Q(read_burst_counter_reg__0[4]),
        .R(axi_awvalid0));
  FDRE \read_burst_counter_reg[5] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__1[5]),
        .Q(read_burst_counter_reg__0[5]),
        .R(axi_awvalid0));
  FDRE \read_burst_counter_reg[6] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(p_0_in__1[6]),
        .Q(read_burst_counter_reg),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \read_index[0]_i_1 
       (.I0(m00_axi_rlast),
        .I1(read_index_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \read_index[1]_i_1 
       (.I0(m00_axi_rlast),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \read_index[2]_i_1 
       (.I0(read_index_reg[0]),
        .I1(read_index_reg[1]),
        .I2(m00_axi_rlast),
        .I3(read_index_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \read_index[3]_i_1 
       (.I0(read_index_reg[1]),
        .I1(read_index_reg[0]),
        .I2(read_index_reg[2]),
        .I3(m00_axi_rlast),
        .I4(read_index_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \read_index[4]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(\read_index[4]_i_3_n_0 ),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(m00_axi_rlast),
        .I5(m00_axi_rvalid),
        .O(read_index));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \read_index[4]_i_2 
       (.I0(read_index_reg[3]),
        .I1(read_index_reg[1]),
        .I2(read_index_reg[0]),
        .I3(read_index_reg[2]),
        .I4(read_index_reg[4]),
        .I5(axi_arvalid_i_2_n_0),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \read_index[4]_i_3 
       (.I0(read_index_reg[3]),
        .I1(read_index_reg[1]),
        .I2(read_index_reg[0]),
        .I3(read_index_reg[2]),
        .I4(read_index_reg[4]),
        .O(\read_index[4]_i_3_n_0 ));
  FDRE \read_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(read_index),
        .D(p_0_in__0[0]),
        .Q(read_index_reg[0]),
        .R(axi_awvalid0));
  FDRE \read_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(read_index),
        .D(p_0_in__0[1]),
        .Q(read_index_reg[1]),
        .R(axi_awvalid0));
  FDRE \read_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(read_index),
        .D(p_0_in__0[2]),
        .Q(read_index_reg[2]),
        .R(axi_awvalid0));
  FDRE \read_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(read_index),
        .D(p_0_in__0[3]),
        .Q(read_index_reg[3]),
        .R(axi_awvalid0));
  FDRE \read_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(read_index),
        .D(p_0_in__0[4]),
        .Q(read_index_reg[4]),
        .R(axi_awvalid0));
  CARRY8 read_mismatch1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({read_mismatch1_carry_n_0,read_mismatch1_carry_n_1,read_mismatch1_carry_n_2,read_mismatch1_carry_n_3,read_mismatch1_carry_n_4,read_mismatch1_carry_n_5,read_mismatch1_carry_n_6,read_mismatch1_carry_n_7}),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry_O_UNCONNECTED[7:0]),
        .S({read_mismatch1_carry_i_1_n_0,read_mismatch1_carry_i_2_n_0,read_mismatch1_carry_i_3_n_0,read_mismatch1_carry_i_4_n_0,read_mismatch1_carry_i_5_n_0,read_mismatch1_carry_i_6_n_0,read_mismatch1_carry_i_7_n_0,read_mismatch1_carry_i_8_n_0}));
  CARRY8 read_mismatch1_carry__0
       (.CI(read_mismatch1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_read_mismatch1_carry__0_CO_UNCONNECTED[7:3],read_mismatch1,read_mismatch1_carry__0_n_6,read_mismatch1_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_read_mismatch1_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,read_mismatch1_carry__0_i_1_n_0,read_mismatch1_carry__0_i_2_n_0,read_mismatch1_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    read_mismatch1_carry__0_i_1
       (.I0(expected_rdata_reg[31]),
        .I1(m00_axi_rdata[31]),
        .I2(expected_rdata_reg[30]),
        .I3(m00_axi_rdata[30]),
        .O(read_mismatch1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__0_i_2
       (.I0(expected_rdata_reg[29]),
        .I1(m00_axi_rdata[29]),
        .I2(expected_rdata_reg[28]),
        .I3(m00_axi_rdata[28]),
        .I4(m00_axi_rdata[27]),
        .I5(expected_rdata_reg[27]),
        .O(read_mismatch1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry__0_i_3
       (.I0(expected_rdata_reg[26]),
        .I1(m00_axi_rdata[26]),
        .I2(expected_rdata_reg[25]),
        .I3(m00_axi_rdata[25]),
        .I4(m00_axi_rdata[24]),
        .I5(expected_rdata_reg[24]),
        .O(read_mismatch1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_1
       (.I0(expected_rdata_reg[23]),
        .I1(m00_axi_rdata[23]),
        .I2(expected_rdata_reg[22]),
        .I3(m00_axi_rdata[22]),
        .I4(m00_axi_rdata[21]),
        .I5(expected_rdata_reg[21]),
        .O(read_mismatch1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_2
       (.I0(expected_rdata_reg[20]),
        .I1(m00_axi_rdata[20]),
        .I2(expected_rdata_reg[19]),
        .I3(m00_axi_rdata[19]),
        .I4(m00_axi_rdata[18]),
        .I5(expected_rdata_reg[18]),
        .O(read_mismatch1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_3
       (.I0(expected_rdata_reg[17]),
        .I1(m00_axi_rdata[17]),
        .I2(expected_rdata_reg[16]),
        .I3(m00_axi_rdata[16]),
        .I4(m00_axi_rdata[15]),
        .I5(expected_rdata_reg[15]),
        .O(read_mismatch1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_4
       (.I0(expected_rdata_reg[14]),
        .I1(m00_axi_rdata[14]),
        .I2(expected_rdata_reg[13]),
        .I3(m00_axi_rdata[13]),
        .I4(m00_axi_rdata[12]),
        .I5(expected_rdata_reg[12]),
        .O(read_mismatch1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_5
       (.I0(expected_rdata_reg[11]),
        .I1(m00_axi_rdata[11]),
        .I2(expected_rdata_reg[10]),
        .I3(m00_axi_rdata[10]),
        .I4(m00_axi_rdata[9]),
        .I5(expected_rdata_reg[9]),
        .O(read_mismatch1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_6
       (.I0(expected_rdata_reg[8]),
        .I1(m00_axi_rdata[8]),
        .I2(expected_rdata_reg[7]),
        .I3(m00_axi_rdata[7]),
        .I4(m00_axi_rdata[6]),
        .I5(expected_rdata_reg[6]),
        .O(read_mismatch1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_7
       (.I0(expected_rdata_reg[5]),
        .I1(m00_axi_rdata[5]),
        .I2(expected_rdata_reg[4]),
        .I3(m00_axi_rdata[4]),
        .I4(m00_axi_rdata[3]),
        .I5(expected_rdata_reg[3]),
        .O(read_mismatch1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    read_mismatch1_carry_i_8
       (.I0(expected_rdata_reg[2]),
        .I1(m00_axi_rdata[2]),
        .I2(expected_rdata_reg[1]),
        .I3(m00_axi_rdata[1]),
        .I4(m00_axi_rdata[0]),
        .I5(expected_rdata_reg[0]),
        .O(read_mismatch1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    read_mismatch_i_1
       (.I0(m00_axi_rvalid),
        .I1(axi_rready_reg_0),
        .I2(read_mismatch1),
        .O(read_mismatch0));
  FDRE read_mismatch_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_mismatch0),
        .Q(read_mismatch),
        .R(axi_awvalid0));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    reads_done_i_1
       (.I0(\read_burst_counter[6]_i_3_n_0 ),
        .I1(m00_axi_rvalid),
        .I2(axi_rready_reg_0),
        .I3(\read_index[4]_i_3_n_0 ),
        .I4(reads_done),
        .O(reads_done_i_1_n_0));
  FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(reads_done),
        .R(axi_awvalid0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_burst_counter[0]_i_1 
       (.I0(write_burst_counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_burst_counter[1]_i_1 
       (.I0(write_burst_counter_reg__0[0]),
        .I1(write_burst_counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_burst_counter[2]_i_1 
       (.I0(write_burst_counter_reg__0[1]),
        .I1(write_burst_counter_reg__0[0]),
        .I2(write_burst_counter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_burst_counter[3]_i_1 
       (.I0(write_burst_counter_reg__0[2]),
        .I1(write_burst_counter_reg__0[0]),
        .I2(write_burst_counter_reg__0[1]),
        .I3(write_burst_counter_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_burst_counter[4]_i_1 
       (.I0(write_burst_counter_reg__0[3]),
        .I1(write_burst_counter_reg__0[1]),
        .I2(write_burst_counter_reg__0[0]),
        .I3(write_burst_counter_reg__0[2]),
        .I4(write_burst_counter_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_burst_counter[5]_i_1 
       (.I0(write_burst_counter_reg__0[4]),
        .I1(write_burst_counter_reg__0[2]),
        .I2(write_burst_counter_reg__0[0]),
        .I3(write_burst_counter_reg__0[1]),
        .I4(write_burst_counter_reg__0[3]),
        .I5(write_burst_counter_reg__0[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    \write_burst_counter[6]_i_1 
       (.I0(write_burst_counter_reg),
        .I1(m00_axi_wvalid),
        .I2(m00_axi_wready),
        .I3(axi_wlast_reg_0),
        .O(write_burst_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \write_burst_counter[6]_i_2 
       (.I0(axi_awvalid_i_3_n_0),
        .O(p_0_in[6]));
  FDRE \write_burst_counter_reg[0] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[0]),
        .Q(write_burst_counter_reg__0[0]),
        .R(axi_awvalid0));
  FDRE \write_burst_counter_reg[1] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[1]),
        .Q(write_burst_counter_reg__0[1]),
        .R(axi_awvalid0));
  FDRE \write_burst_counter_reg[2] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[2]),
        .Q(write_burst_counter_reg__0[2]),
        .R(axi_awvalid0));
  FDRE \write_burst_counter_reg[3] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[3]),
        .Q(write_burst_counter_reg__0[3]),
        .R(axi_awvalid0));
  FDRE \write_burst_counter_reg[4] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[4]),
        .Q(write_burst_counter_reg__0[4]),
        .R(axi_awvalid0));
  FDRE \write_burst_counter_reg[5] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[5]),
        .Q(write_burst_counter_reg__0[5]),
        .R(axi_awvalid0));
  FDRE \write_burst_counter_reg[6] 
       (.C(m00_axi_aclk),
        .CE(write_burst_counter),
        .D(p_0_in[6]),
        .Q(write_burst_counter_reg),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \write_index[0]_i_1 
       (.I0(\write_index_reg_n_0_[0] ),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(axi_wlast_reg_0),
        .O(write_index[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \write_index[1]_i_1 
       (.I0(axi_wlast_reg_0),
        .I1(state_write[0]),
        .I2(\write_index_reg_n_0_[0] ),
        .I3(\write_index_reg_n_0_[1] ),
        .O(write_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \write_index[2]_i_1 
       (.I0(axi_wlast_reg_0),
        .I1(state_write[0]),
        .I2(\write_index_reg_n_0_[1] ),
        .I3(\write_index_reg_n_0_[0] ),
        .I4(\write_index_reg_n_0_[2] ),
        .O(write_index[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \write_index[3]_i_1 
       (.I0(\write_index_reg_n_0_[1] ),
        .I1(\write_index_reg_n_0_[0] ),
        .I2(\write_index_reg_n_0_[2] ),
        .I3(state_write[0]),
        .I4(\FSM_sequential_state_write[1]_i_4_n_0 ),
        .I5(\write_index_reg_n_0_[3] ),
        .O(write_index[3]));
  LUT6 #(
    .INIT(64'hCFCC0000CECC0000)) 
    \write_index[4]_i_1 
       (.I0(axi_wlast_reg_0),
        .I1(axi_awaddr),
        .I2(state_write[0]),
        .I3(state_write[1]),
        .I4(m00_axi_wready),
        .I5(\write_index[4]_i_3_n_0 ),
        .O(\write_index[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \write_index[4]_i_2 
       (.I0(\write_index_reg_n_0_[3] ),
        .I1(\write_index_reg_n_0_[1] ),
        .I2(\write_index_reg_n_0_[0] ),
        .I3(\write_index_reg_n_0_[2] ),
        .I4(\write_index_reg_n_0_[4] ),
        .I5(\write_index[4]_i_4_n_0 ),
        .O(write_index[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \write_index[4]_i_3 
       (.I0(\write_index_reg_n_0_[3] ),
        .I1(\write_index_reg_n_0_[1] ),
        .I2(\write_index_reg_n_0_[0] ),
        .I3(\write_index_reg_n_0_[2] ),
        .I4(\write_index_reg_n_0_[4] ),
        .O(\write_index[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \write_index[4]_i_4 
       (.I0(m00_axi_wready),
        .I1(axi_wlast_reg_0),
        .I2(state_write[0]),
        .O(\write_index[4]_i_4_n_0 ));
  FDRE \write_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\write_index[4]_i_1_n_0 ),
        .D(write_index[0]),
        .Q(\write_index_reg_n_0_[0] ),
        .R(axi_awvalid0));
  FDRE \write_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\write_index[4]_i_1_n_0 ),
        .D(write_index[1]),
        .Q(\write_index_reg_n_0_[1] ),
        .R(axi_awvalid0));
  FDRE \write_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\write_index[4]_i_1_n_0 ),
        .D(write_index[2]),
        .Q(\write_index_reg_n_0_[2] ),
        .R(axi_awvalid0));
  FDRE \write_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\write_index[4]_i_1_n_0 ),
        .D(write_index[3]),
        .Q(\write_index_reg_n_0_[3] ),
        .R(axi_awvalid0));
  FDRE \write_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\write_index[4]_i_1_n_0 ),
        .D(write_index[4]),
        .Q(\write_index_reg_n_0_[4] ),
        .R(axi_awvalid0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    writes_done_i_1
       (.I0(axi_awvalid_i_3_n_0),
        .I1(axi_bready_reg_0),
        .I2(m00_axi_bvalid),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(axi_awvalid0));
endmodule

(* CHECK_LICENSE_TYPE = "re2_copro_re2_copro_0_1,re2_copro,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "re2_copro,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awuser,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wuser,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_buser,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_aruser,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_ruser,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_init_axi_txn,
    m00_axi_txn_done,
    m00_axi_error,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [0:0]m00_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output m00_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m00_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [0:0]m00_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WUSER" *) output [0:0]m00_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [0:0]m00_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BUSER" *) input [0:0]m00_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [0:0]m00_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output m00_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m00_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [0:0]m00_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [0:0]m00_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RUSER" *) input [0:0]m00_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_txn_done;
  output m00_axi_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 7, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axi_aclk;
  wire [31:6]\^m00_axi_araddr ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:6]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_error;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire m00_axi_txn_done;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign m00_axi_araddr[31:6] = \^m00_axi_araddr [31:6];
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \<const1> ;
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const0> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3] = \<const1> ;
  assign m00_axi_arlen[2] = \<const1> ;
  assign m00_axi_arlen[1] = \<const1> ;
  assign m00_axi_arlen[0] = \<const1> ;
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \<const1> ;
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_aruser[0] = \<const1> ;
  assign m00_axi_awaddr[31:6] = \^m00_axi_awaddr [31:6];
  assign m00_axi_awaddr[5] = \<const0> ;
  assign m00_axi_awaddr[4] = \<const0> ;
  assign m00_axi_awaddr[3] = \<const0> ;
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \<const1> ;
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const0> ;
  assign m00_axi_awid[0] = \<const0> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3] = \<const1> ;
  assign m00_axi_awlen[2] = \<const1> ;
  assign m00_axi_awlen[1] = \<const1> ;
  assign m00_axi_awlen[0] = \<const1> ;
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \<const1> ;
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const1> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  assign m00_axi_wuser[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_arvalid_reg(m00_axi_arvalid),
        .axi_awready_reg(s00_axi_awready),
        .axi_bready_reg(m00_axi_bready),
        .axi_rready_reg(m00_axi_rready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .axi_wlast_reg(m00_axi_wlast),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(\^m00_axi_araddr ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_awaddr(\^m00_axi_awaddr ),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bresp(m00_axi_bresp[1]),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_error(m00_axi_error),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rresp(m00_axi_rresp[1]),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_txn_done(m00_axi_txn_done),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_slave_lite_v2_S00_AXI
   (axi_awready_reg_0,
    s00_axi_bvalid,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn);
  output axi_awready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input [2:0]s00_axi_awaddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_aresetn;

  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [4:2]axi_araddr;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awaddr;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready0__0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire [31:7]p_1_in;
  wire [31:0]p_1_in__0;
  wire reset;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]\slv_reg[0]_0 ;
  wire [31:0]\slv_reg[1]_1 ;
  wire [31:0]\slv_reg[2]_2 ;
  wire [31:0]\slv_reg[3]_3 ;
  wire [1:0]state_read;
  wire [1:0]state_read__0;
  wire [1:0]state_write;
  wire [1:0]state_write__0;

  LUT6 #(
    .INIT(64'h07070707FF0F0F0F)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(state_read__0[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(state_read[0]),
        .I1(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00800F800F800F80)) 
    \FSM_sequential_state_read[1]_i_2 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(state_read__0[1]));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .D(state_read__0[0]),
        .Q(state_read[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .D(state_read__0[1]),
        .Q(state_read[1]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00F7F0FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[1]),
        .I4(state_write[0]),
        .O(state_write__0[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h000008F0)) 
    \FSM_sequential_state_write[1]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(state_write[0]),
        .I4(s00_axi_wvalid),
        .O(state_write__0[1]));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .D(state_write__0[0]),
        .Q(state_write[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .D(state_write__0[1]),
        .Q(state_write[1]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[0]_INST_0 
       (.I0(p_1_in__0[0]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [0]),
        .I1(\slv_reg[0]_0 [0]),
        .I2(\slv_reg[3]_3 [0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [0]),
        .O(p_1_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[10]_INST_0 
       (.I0(p_1_in__0[10]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [10]),
        .I1(\slv_reg[0]_0 [10]),
        .I2(\slv_reg[3]_3 [10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [10]),
        .O(p_1_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[11]_INST_0 
       (.I0(p_1_in__0[11]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[11]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [11]),
        .I1(\slv_reg[0]_0 [11]),
        .I2(\slv_reg[3]_3 [11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [11]),
        .O(p_1_in__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[12]_INST_0 
       (.I0(p_1_in__0[12]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[12]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [12]),
        .I1(\slv_reg[0]_0 [12]),
        .I2(\slv_reg[3]_3 [12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [12]),
        .O(p_1_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[13]_INST_0 
       (.I0(p_1_in__0[13]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[13]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [13]),
        .I1(\slv_reg[0]_0 [13]),
        .I2(\slv_reg[3]_3 [13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [13]),
        .O(p_1_in__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[14]_INST_0 
       (.I0(p_1_in__0[14]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [14]),
        .I1(\slv_reg[0]_0 [14]),
        .I2(\slv_reg[3]_3 [14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [14]),
        .O(p_1_in__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[15]_INST_0 
       (.I0(p_1_in__0[15]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [15]),
        .I1(\slv_reg[0]_0 [15]),
        .I2(\slv_reg[3]_3 [15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [15]),
        .O(p_1_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[16]_INST_0 
       (.I0(p_1_in__0[16]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [16]),
        .I1(\slv_reg[0]_0 [16]),
        .I2(\slv_reg[3]_3 [16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [16]),
        .O(p_1_in__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[17]_INST_0 
       (.I0(p_1_in__0[17]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [17]),
        .I1(\slv_reg[0]_0 [17]),
        .I2(\slv_reg[3]_3 [17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [17]),
        .O(p_1_in__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[18]_INST_0 
       (.I0(p_1_in__0[18]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [18]),
        .I1(\slv_reg[0]_0 [18]),
        .I2(\slv_reg[3]_3 [18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [18]),
        .O(p_1_in__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[19]_INST_0 
       (.I0(p_1_in__0[19]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [19]),
        .I1(\slv_reg[0]_0 [19]),
        .I2(\slv_reg[3]_3 [19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [19]),
        .O(p_1_in__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[1]_INST_0 
       (.I0(p_1_in__0[1]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [1]),
        .I1(\slv_reg[0]_0 [1]),
        .I2(\slv_reg[3]_3 [1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [1]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[20]_INST_0 
       (.I0(p_1_in__0[20]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [20]),
        .I1(\slv_reg[0]_0 [20]),
        .I2(\slv_reg[3]_3 [20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [20]),
        .O(p_1_in__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[21]_INST_0 
       (.I0(p_1_in__0[21]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [21]),
        .I1(\slv_reg[0]_0 [21]),
        .I2(\slv_reg[3]_3 [21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [21]),
        .O(p_1_in__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[22]_INST_0 
       (.I0(p_1_in__0[22]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [22]),
        .I1(\slv_reg[0]_0 [22]),
        .I2(\slv_reg[3]_3 [22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [22]),
        .O(p_1_in__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[23]_INST_0 
       (.I0(p_1_in__0[23]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [23]),
        .I1(\slv_reg[0]_0 [23]),
        .I2(\slv_reg[3]_3 [23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [23]),
        .O(p_1_in__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[24]_INST_0 
       (.I0(p_1_in__0[24]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [24]),
        .I1(\slv_reg[0]_0 [24]),
        .I2(\slv_reg[3]_3 [24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [24]),
        .O(p_1_in__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[25]_INST_0 
       (.I0(p_1_in__0[25]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [25]),
        .I1(\slv_reg[0]_0 [25]),
        .I2(\slv_reg[3]_3 [25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [25]),
        .O(p_1_in__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[26]_INST_0 
       (.I0(p_1_in__0[26]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [26]),
        .I1(\slv_reg[0]_0 [26]),
        .I2(\slv_reg[3]_3 [26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [26]),
        .O(p_1_in__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[27]_INST_0 
       (.I0(p_1_in__0[27]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[27]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [27]),
        .I1(\slv_reg[0]_0 [27]),
        .I2(\slv_reg[3]_3 [27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [27]),
        .O(p_1_in__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[28]_INST_0 
       (.I0(p_1_in__0[28]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[28]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [28]),
        .I1(\slv_reg[0]_0 [28]),
        .I2(\slv_reg[3]_3 [28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [28]),
        .O(p_1_in__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[29]_INST_0 
       (.I0(p_1_in__0[29]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[29]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [29]),
        .I1(\slv_reg[0]_0 [29]),
        .I2(\slv_reg[3]_3 [29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [29]),
        .O(p_1_in__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[2]_INST_0 
       (.I0(p_1_in__0[2]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [2]),
        .I1(\slv_reg[0]_0 [2]),
        .I2(\slv_reg[3]_3 [2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [2]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[30]_INST_0 
       (.I0(p_1_in__0[30]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [30]),
        .I1(\slv_reg[0]_0 [30]),
        .I2(\slv_reg[3]_3 [30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [30]),
        .O(p_1_in__0[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[31]_INST_0 
       (.I0(p_1_in__0[31]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [31]),
        .I1(\slv_reg[0]_0 [31]),
        .I2(\slv_reg[3]_3 [31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [31]),
        .O(p_1_in__0[31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[3]_INST_0 
       (.I0(p_1_in__0[3]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [3]),
        .I1(\slv_reg[0]_0 [3]),
        .I2(\slv_reg[3]_3 [3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [3]),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[4]_INST_0 
       (.I0(p_1_in__0[4]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [4]),
        .I1(\slv_reg[0]_0 [4]),
        .I2(\slv_reg[3]_3 [4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [4]),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[5]_INST_0 
       (.I0(p_1_in__0[5]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [5]),
        .I1(\slv_reg[0]_0 [5]),
        .I2(\slv_reg[3]_3 [5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [5]),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[6]_INST_0 
       (.I0(p_1_in__0[6]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [6]),
        .I1(\slv_reg[0]_0 [6]),
        .I2(\slv_reg[3]_3 [6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [6]),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[7]_INST_0 
       (.I0(p_1_in__0[7]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [7]),
        .I1(\slv_reg[0]_0 [7]),
        .I2(\slv_reg[3]_3 [7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [7]),
        .O(p_1_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[8]_INST_0 
       (.I0(p_1_in__0[8]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [8]),
        .I1(\slv_reg[0]_0 [8]),
        .I2(\slv_reg[3]_3 [8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [8]),
        .O(p_1_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \_inferred__0/s00_axi_rdata[9]_INST_0 
       (.I0(p_1_in__0[9]),
        .I1(axi_araddr[4]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \_inferred__0/s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\slv_reg[1]_1 [9]),
        .I1(\slv_reg[0]_0 [9]),
        .I2(\slv_reg[3]_3 [9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg[2]_2 [9]),
        .O(p_1_in__0[9]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[4]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[4]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[4]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(axi_araddr[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(reset));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_awaddr[4]_i_1 
       (.I0(state_write[1]),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .I3(state_write[0]),
        .O(axi_awaddr));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(reset));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(reset));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awaddr),
        .D(s00_axi_awaddr[2]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(reset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFDFF4545)) 
    axi_awready_i_2
       (.I0(state_write[0]),
        .I1(s00_axi_wvalid),
        .I2(state_write[1]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(reset));
  LUT6 #(
    .INIT(64'hAAF2AA22F2AAF2AA)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(state_write[1]),
        .I4(axi_awready0__0),
        .I5(state_write[0]),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(reset));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(reset));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(reset));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[1]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg[0]_0 [0]),
        .R(reset));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg[0]_0 [10]),
        .R(reset));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg[0]_0 [11]),
        .R(reset));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg[0]_0 [12]),
        .R(reset));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg[0]_0 [13]),
        .R(reset));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg[0]_0 [14]),
        .R(reset));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg[0]_0 [15]),
        .R(reset));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg[0]_0 [16]),
        .R(reset));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg[0]_0 [17]),
        .R(reset));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg[0]_0 [18]),
        .R(reset));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg[0]_0 [19]),
        .R(reset));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg[0]_0 [1]),
        .R(reset));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg[0]_0 [20]),
        .R(reset));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg[0]_0 [21]),
        .R(reset));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg[0]_0 [22]),
        .R(reset));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg[0]_0 [23]),
        .R(reset));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg[0]_0 [24]),
        .R(reset));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg[0]_0 [25]),
        .R(reset));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg[0]_0 [26]),
        .R(reset));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg[0]_0 [27]),
        .R(reset));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg[0]_0 [28]),
        .R(reset));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg[0]_0 [29]),
        .R(reset));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg[0]_0 [2]),
        .R(reset));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg[0]_0 [30]),
        .R(reset));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg[0]_0 [31]),
        .R(reset));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg[0]_0 [3]),
        .R(reset));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg[0]_0 [4]),
        .R(reset));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg[0]_0 [5]),
        .R(reset));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg[0]_0 [6]),
        .R(reset));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg[0]_0 [7]),
        .R(reset));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg[0]_0 [8]),
        .R(reset));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg[0]_0 [9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg[1]_1 [0]),
        .R(reset));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg[1]_1 [10]),
        .R(reset));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg[1]_1 [11]),
        .R(reset));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg[1]_1 [12]),
        .R(reset));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg[1]_1 [13]),
        .R(reset));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg[1]_1 [14]),
        .R(reset));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg[1]_1 [15]),
        .R(reset));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg[1]_1 [16]),
        .R(reset));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg[1]_1 [17]),
        .R(reset));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg[1]_1 [18]),
        .R(reset));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg[1]_1 [19]),
        .R(reset));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg[1]_1 [1]),
        .R(reset));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg[1]_1 [20]),
        .R(reset));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg[1]_1 [21]),
        .R(reset));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg[1]_1 [22]),
        .R(reset));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg[1]_1 [23]),
        .R(reset));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg[1]_1 [24]),
        .R(reset));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg[1]_1 [25]),
        .R(reset));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg[1]_1 [26]),
        .R(reset));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg[1]_1 [27]),
        .R(reset));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg[1]_1 [28]),
        .R(reset));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg[1]_1 [29]),
        .R(reset));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg[1]_1 [2]),
        .R(reset));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg[1]_1 [30]),
        .R(reset));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg[1]_1 [31]),
        .R(reset));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg[1]_1 [3]),
        .R(reset));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg[1]_1 [4]),
        .R(reset));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg[1]_1 [5]),
        .R(reset));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg[1]_1 [6]),
        .R(reset));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg[1]_1 [7]),
        .R(reset));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg[1]_1 [8]),
        .R(reset));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg[1]_1 [9]),
        .R(reset));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5050300000003000)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_awaddr[2]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[1]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02A20000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg[2]_2 [0]),
        .R(reset));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg[2]_2 [10]),
        .R(reset));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg[2]_2 [11]),
        .R(reset));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg[2]_2 [12]),
        .R(reset));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg[2]_2 [13]),
        .R(reset));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg[2]_2 [14]),
        .R(reset));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg[2]_2 [15]),
        .R(reset));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg[2]_2 [16]),
        .R(reset));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg[2]_2 [17]),
        .R(reset));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg[2]_2 [18]),
        .R(reset));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg[2]_2 [19]),
        .R(reset));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg[2]_2 [1]),
        .R(reset));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg[2]_2 [20]),
        .R(reset));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg[2]_2 [21]),
        .R(reset));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg[2]_2 [22]),
        .R(reset));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg[2]_2 [23]),
        .R(reset));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg[2]_2 [24]),
        .R(reset));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg[2]_2 [25]),
        .R(reset));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg[2]_2 [26]),
        .R(reset));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg[2]_2 [27]),
        .R(reset));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg[2]_2 [28]),
        .R(reset));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg[2]_2 [29]),
        .R(reset));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg[2]_2 [2]),
        .R(reset));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg[2]_2 [30]),
        .R(reset));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg[2]_2 [31]),
        .R(reset));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg[2]_2 [3]),
        .R(reset));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg[2]_2 [4]),
        .R(reset));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg[2]_2 [5]),
        .R(reset));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg[2]_2 [6]),
        .R(reset));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg[2]_2 [7]),
        .R(reset));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg[2]_2 [8]),
        .R(reset));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg[2]_2 [9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080000)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg[3]_3 [0]),
        .R(reset));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg[3]_3 [10]),
        .R(reset));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg[3]_3 [11]),
        .R(reset));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg[3]_3 [12]),
        .R(reset));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg[3]_3 [13]),
        .R(reset));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg[3]_3 [14]),
        .R(reset));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg[3]_3 [15]),
        .R(reset));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg[3]_3 [16]),
        .R(reset));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg[3]_3 [17]),
        .R(reset));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg[3]_3 [18]),
        .R(reset));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg[3]_3 [19]),
        .R(reset));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg[3]_3 [1]),
        .R(reset));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg[3]_3 [20]),
        .R(reset));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg[3]_3 [21]),
        .R(reset));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg[3]_3 [22]),
        .R(reset));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg[3]_3 [23]),
        .R(reset));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg[3]_3 [24]),
        .R(reset));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg[3]_3 [25]),
        .R(reset));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg[3]_3 [26]),
        .R(reset));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg[3]_3 [27]),
        .R(reset));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg[3]_3 [28]),
        .R(reset));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg[3]_3 [29]),
        .R(reset));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg[3]_3 [2]),
        .R(reset));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg[3]_3 [30]),
        .R(reset));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg[3]_3 [31]),
        .R(reset));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg[3]_3 [3]),
        .R(reset));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg[3]_3 [4]),
        .R(reset));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg[3]_3 [5]),
        .R(reset));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg[3]_3 [6]),
        .R(reset));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg[3]_3 [7]),
        .R(reset));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg[3]_3 [8]),
        .R(reset));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg[3]_3 [9]),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
