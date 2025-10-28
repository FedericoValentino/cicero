-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Aug  4 15:36:14 2025
-- Host        : feder34-Desktop running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ re2_copro_re2_copro_0_1_sim_netlist.vhdl
-- Design      : re2_copro_re2_copro_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_master_full_v2_M00_AXI is
  port (
    m00_axi_wvalid : out STD_LOGIC;
    axi_awvalid_reg_0 : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    axi_wlast_reg_0 : out STD_LOGIC;
    axi_bready_reg_0 : out STD_LOGIC;
    axi_arvalid_reg_0 : out STD_LOGIC;
    axi_rready_reg_0 : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_master_full_v2_M00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_master_full_v2_M00_AXI is
  signal ERROR_i_1_n_0 : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_5_n_0\ : STD_LOGIC;
  signal M_AXI_ARADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_6 : STD_LOGIC;
  signal M_AXI_ARADDR_carry_n_7 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_6 : STD_LOGIC;
  signal M_AXI_AWADDR_carry_n_7 : STD_LOGIC;
  signal \axi_araddr[13]_i_2_n_0\ : STD_LOGIC;
  signal axi_araddr_reg : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal \axi_araddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_10\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_11\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_12\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_13\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_8\ : STD_LOGIC;
  signal \axi_araddr_reg[13]_i_1_n_9\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_10\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_11\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_12\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_13\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_8\ : STD_LOGIC;
  signal \axi_araddr_reg[21]_i_1_n_9\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_10\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_11\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_12\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_13\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_8\ : STD_LOGIC;
  signal \axi_araddr_reg[28]_i_2_n_9\ : STD_LOGIC;
  signal \axi_araddr_reg[30]_i_1_n_14\ : STD_LOGIC;
  signal \axi_araddr_reg[30]_i_1_n_15\ : STD_LOGIC;
  signal \axi_araddr_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal axi_arvalid_i_2_n_0 : STD_LOGIC;
  signal \^axi_arvalid_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC;
  signal \axi_awaddr[13]_i_2_n_0\ : STD_LOGIC;
  signal axi_awaddr_reg : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal \axi_awaddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_10\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_11\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_12\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_13\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_8\ : STD_LOGIC;
  signal \axi_awaddr_reg[13]_i_1_n_9\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_10\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_11\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_12\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_13\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_8\ : STD_LOGIC;
  signal \axi_awaddr_reg[21]_i_1_n_9\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_1\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_10\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_11\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_12\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_13\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_2\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_3\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_4\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_5\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_6\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_7\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_8\ : STD_LOGIC;
  signal \axi_awaddr_reg[28]_i_3_n_9\ : STD_LOGIC;
  signal \axi_awaddr_reg[30]_i_1_n_14\ : STD_LOGIC;
  signal \axi_awaddr_reg[30]_i_1_n_15\ : STD_LOGIC;
  signal \axi_awaddr_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal axi_awvalid : STD_LOGIC;
  signal axi_awvalid0 : STD_LOGIC;
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_3_n_0 : STD_LOGIC;
  signal \^axi_awvalid_reg_0\ : STD_LOGIC;
  signal axi_bready : STD_LOGIC;
  signal axi_bready_i_1_n_0 : STD_LOGIC;
  signal \^axi_bready_reg_0\ : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal \^axi_rready_reg_0\ : STD_LOGIC;
  signal axi_wdata : STD_LOGIC;
  signal \axi_wdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_wdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_wdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_wdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_wdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \axi_wdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \axi_wdata[15]_i_8_n_0\ : STD_LOGIC;
  signal \axi_wdata[15]_i_9_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_8_n_0\ : STD_LOGIC;
  signal \axi_wdata[23]_i_9_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \axi_wdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_wdata[7]_i_9_n_0\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \axi_wdata_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \axi_wdata_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_10\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_11\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_12\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_13\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_14\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_15\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_8\ : STD_LOGIC;
  signal \axi_wdata_reg[31]_i_2_n_9\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \axi_wdata_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal axi_wlast_i_1_n_0 : STD_LOGIC;
  signal axi_wlast_i_2_n_0 : STD_LOGIC;
  signal axi_wlast_i_3_n_0 : STD_LOGIC;
  signal axi_wlast_i_4_n_0 : STD_LOGIC;
  signal \^axi_wlast_reg_0\ : STD_LOGIC;
  signal axi_wvalid : STD_LOGIC;
  signal compare_done : STD_LOGIC;
  signal compare_done_i_1_n_0 : STD_LOGIC;
  signal compare_done_i_2_n_0 : STD_LOGIC;
  signal \^error_reg\ : STD_LOGIC;
  signal error_reg_i_1_n_0 : STD_LOGIC;
  signal error_reg_i_2_n_0 : STD_LOGIC;
  signal \expected_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal expected_rdata_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \expected_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \expected_rdata_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \expected_rdata_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \expected_rdata_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \expected_rdata_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal init_txn_ff : STD_LOGIC;
  signal init_txn_ff2 : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^m00_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m00_axi_wvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_17_in : STD_LOGIC;
  signal read_burst_counter : STD_LOGIC;
  signal \read_burst_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal read_burst_counter_reg : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \read_burst_counter_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal read_index : STD_LOGIC;
  signal \read_index[4]_i_3_n_0\ : STD_LOGIC;
  signal read_index_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_mismatch : STD_LOGIC;
  signal read_mismatch0 : STD_LOGIC;
  signal read_mismatch1 : STD_LOGIC;
  signal \read_mismatch1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \read_mismatch1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \read_mismatch1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \read_mismatch1_carry__0_n_6\ : STD_LOGIC;
  signal \read_mismatch1_carry__0_n_7\ : STD_LOGIC;
  signal read_mismatch1_carry_i_1_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_i_2_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_i_3_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_i_4_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_i_5_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_i_6_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_i_7_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_i_8_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_n_0 : STD_LOGIC;
  signal read_mismatch1_carry_n_1 : STD_LOGIC;
  signal read_mismatch1_carry_n_2 : STD_LOGIC;
  signal read_mismatch1_carry_n_3 : STD_LOGIC;
  signal read_mismatch1_carry_n_4 : STD_LOGIC;
  signal read_mismatch1_carry_n_5 : STD_LOGIC;
  signal read_mismatch1_carry_n_6 : STD_LOGIC;
  signal read_mismatch1_carry_n_7 : STD_LOGIC;
  signal reads_done : STD_LOGIC;
  signal reads_done_i_1_n_0 : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_read__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_write__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal write_burst_counter : STD_LOGIC;
  signal write_burst_counter_reg : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \write_burst_counter_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal write_index : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \write_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_index[4]_i_3_n_0\ : STD_LOGIC;
  signal \write_index[4]_i_4_n_0\ : STD_LOGIC;
  signal \write_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \write_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \write_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \write_index_reg_n_0_[3]\ : STD_LOGIC;
  signal \write_index_reg_n_0_[4]\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_M_AXI_ARADDR_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_M_AXI_AWADDR_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_expected_rdata_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_read_mismatch1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_read_mismatch1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_read_mismatch1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_mst_exec_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_mst_exec_state[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_mst_exec_state[3]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[0]\ : label is "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[1]\ : label is "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[2]\ : label is "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[3]\ : label is "IDLE:0001,INIT_WRITE:0010,INIT_READ:0100,INIT_COMPARE:1000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "RDATA:10,RADDR:01,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "RDATA:10,RADDR:01,IDLE:00";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_5\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "WDATA:10,WADDR:01,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "WDATA:10,WADDR:01,IDLE:00";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of M_AXI_ARADDR_carry : label is 35;
  attribute ADDER_THRESHOLD of M_AXI_AWADDR_carry : label is 35;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[13]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[21]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[28]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_araddr_reg[30]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of axi_arvalid_i_2 : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[13]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[21]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[28]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_awaddr_reg[30]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of axi_awvalid_i_2 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \axi_wdata_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_wdata_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_wdata_reg[31]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \axi_wdata_reg[7]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of axi_wlast_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_wlast_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_wlast_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of error_reg_i_2 : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD of \expected_rdata_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \expected_rdata_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \expected_rdata_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \expected_rdata_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \read_burst_counter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_burst_counter[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \read_burst_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_burst_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_index[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_index[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_index[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of read_mismatch_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_burst_counter[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_burst_counter[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_burst_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_burst_counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_index[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_index[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_index[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_index[4]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_index[4]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair8";
begin
  axi_arvalid_reg_0 <= \^axi_arvalid_reg_0\;
  axi_awvalid_reg_0 <= \^axi_awvalid_reg_0\;
  axi_bready_reg_0 <= \^axi_bready_reg_0\;
  axi_rready_reg_0 <= \^axi_rready_reg_0\;
  axi_wlast_reg_0 <= \^axi_wlast_reg_0\;
  m00_axi_araddr(25 downto 0) <= \^m00_axi_araddr\(25 downto 0);
  m00_axi_awaddr(25 downto 0) <= \^m00_axi_awaddr\(25 downto 0);
  m00_axi_wdata(31 downto 0) <= \^m00_axi_wdata\(31 downto 0);
  m00_axi_wvalid <= \^m00_axi_wvalid\;
ERROR_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => compare_done,
      I1 => \^error_reg\,
      O => ERROR_i_1_n_0
    );
ERROR_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => compare_done_i_2_n_0,
      D => ERROR_i_1_n_0,
      Q => m00_axi_error,
      R => compare_done_i_1_n_0
    );
\FSM_onehot_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      I1 => init_txn_ff2,
      I2 => init_txn_ff,
      I3 => compare_done,
      O => \FSM_onehot_mst_exec_state[0]_i_1_n_0\
    );
\FSM_onehot_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => writes_done,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I2 => init_txn_ff2,
      I3 => init_txn_ff,
      I4 => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      O => \FSM_onehot_mst_exec_state[1]_i_1_n_0\
    );
\FSM_onehot_mst_exec_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I1 => writes_done,
      I2 => reads_done,
      I3 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      O => \FSM_onehot_mst_exec_state[2]_i_1_n_0\
    );
\FSM_onehot_mst_exec_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I1 => reads_done,
      O => \FSM_onehot_mst_exec_state[3]_i_1_n_0\
    );
\FSM_onehot_mst_exec_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_mst_exec_state[0]_i_1_n_0\,
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      S => compare_done_i_1_n_0
    );
\FSM_onehot_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_mst_exec_state[1]_i_1_n_0\,
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      R => compare_done_i_1_n_0
    );
\FSM_onehot_mst_exec_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_mst_exec_state[2]_i_1_n_0\,
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      R => compare_done_i_1_n_0
    );
\FSM_onehot_mst_exec_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_mst_exec_state[3]_i_1_n_0\,
      Q => compare_done,
      R => compare_done_i_1_n_0
    );
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F000100"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I1 => compare_done,
      I2 => state_read(0),
      I3 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I4 => state_read(1),
      I5 => \FSM_sequential_state_read[0]_i_2_n_0\,
      O => \state_read__0\(0)
    );
\FSM_sequential_state_read[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000077770FFF0000"
    )
        port map (
      I0 => m00_axi_arready,
      I1 => \^axi_arvalid_reg_0\,
      I2 => m00_axi_rvalid,
      I3 => m00_axi_rlast,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[0]_i_2_n_0\
    );
\FSM_sequential_state_read[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100010001000FFFF"
    )
        port map (
      I0 => axi_arvalid_i_2_n_0,
      I1 => state_read(0),
      I2 => m00_axi_aresetn,
      I3 => \FSM_sequential_state_write[1]_i_5_n_0\,
      I4 => state_read(1),
      I5 => axi_awvalid0,
      O => \FSM_sequential_state_read[1]_i_1__0_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \FSM_sequential_state_read[1]_i_1__0_n_0\,
      D => \state_read__0\(0),
      Q => state_read(0),
      R => \FSM_sequential_state_write[1]_i_1__0_n_0\
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \FSM_sequential_state_read[1]_i_1__0_n_0\,
      D => \state_read__0\(1),
      Q => state_read(1),
      R => \FSM_sequential_state_write[1]_i_1__0_n_0\
    );
\FSM_sequential_state_write[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \FSM_sequential_state_write[0]_i_2_n_0\,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I2 => compare_done,
      I3 => state_write(1),
      I4 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I5 => state_write(0),
      O => \state_write__0\(0)
    );
\FSM_sequential_state_write[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000077F7FFF00000"
    )
        port map (
      I0 => m00_axi_awready,
      I1 => \^axi_awvalid_reg_0\,
      I2 => axi_awvalid_i_3_n_0,
      I3 => \FSM_sequential_state_write[1]_i_4_n_0\,
      I4 => state_write(1),
      I5 => state_write(0),
      O => \FSM_sequential_state_write[0]_i_2_n_0\
    );
\FSM_sequential_state_write[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => init_txn_ff,
      I1 => init_txn_ff2,
      O => \FSM_sequential_state_write[1]_i_1__0_n_0\
    );
\FSM_sequential_state_write[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100010001000FFFF"
    )
        port map (
      I0 => \FSM_sequential_state_write[1]_i_4_n_0\,
      I1 => state_write(0),
      I2 => m00_axi_aresetn,
      I3 => \FSM_sequential_state_write[1]_i_5_n_0\,
      I4 => state_write(1),
      I5 => axi_awvalid0,
      O => \FSM_sequential_state_write[1]_i_2__0_n_0\
    );
\FSM_sequential_state_write[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000800080"
    )
        port map (
      I0 => \^axi_awvalid_reg_0\,
      I1 => m00_axi_awready,
      I2 => state_write(0),
      I3 => state_write(1),
      I4 => m00_axi_wready,
      I5 => \^axi_wlast_reg_0\,
      O => \state_write__0\(1)
    );
\FSM_sequential_state_write[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^axi_wlast_reg_0\,
      I1 => m00_axi_wready,
      O => \FSM_sequential_state_write[1]_i_4_n_0\
    );
\FSM_sequential_state_write[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => init_txn_ff2,
      I1 => init_txn_ff,
      O => \FSM_sequential_state_write[1]_i_5_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \FSM_sequential_state_write[1]_i_2__0_n_0\,
      D => \state_write__0\(0),
      Q => state_write(0),
      R => \FSM_sequential_state_write[1]_i_1__0_n_0\
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \FSM_sequential_state_write[1]_i_2__0_n_0\,
      D => \state_write__0\(1),
      Q => state_write(1),
      R => \FSM_sequential_state_write[1]_i_1__0_n_0\
    );
M_AXI_ARADDR_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 2) => NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED(7 downto 2),
      CO(1) => M_AXI_ARADDR_carry_n_6,
      CO(0) => M_AXI_ARADDR_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => axi_araddr_reg(30),
      DI(0) => '0',
      O(7 downto 3) => NLW_M_AXI_ARADDR_carry_O_UNCONNECTED(7 downto 3),
      O(2 downto 0) => \^m00_axi_araddr\(25 downto 23),
      S(7 downto 3) => B"00000",
      S(2) => axi_araddr_reg(31),
      S(1) => M_AXI_ARADDR_carry_i_1_n_0,
      S(0) => axi_araddr_reg(29)
    );
M_AXI_ARADDR_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_araddr_reg(30),
      O => M_AXI_ARADDR_carry_i_1_n_0
    );
M_AXI_AWADDR_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 2) => NLW_M_AXI_AWADDR_carry_CO_UNCONNECTED(7 downto 2),
      CO(1) => M_AXI_AWADDR_carry_n_6,
      CO(0) => M_AXI_AWADDR_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => axi_awaddr_reg(30),
      DI(0) => '0',
      O(7 downto 3) => NLW_M_AXI_AWADDR_carry_O_UNCONNECTED(7 downto 3),
      O(2 downto 0) => \^m00_axi_awaddr\(25 downto 23),
      S(7 downto 3) => B"00000",
      S(2) => axi_awaddr_reg(31),
      S(1) => M_AXI_AWADDR_carry_i_1_n_0,
      S(0) => axi_awaddr_reg(29)
    );
M_AXI_AWADDR_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_awaddr_reg(30),
      O => M_AXI_AWADDR_carry_i_1_n_0
    );
\axi_araddr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m00_axi_araddr\(0),
      O => \axi_araddr[13]_i_2_n_0\
    );
\axi_araddr[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state_read(1),
      I1 => state_read(0),
      I2 => \^axi_arvalid_reg_0\,
      I3 => m00_axi_arready,
      O => \state_read__0\(1)
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_11\,
      Q => \^m00_axi_araddr\(4),
      R => axi_awvalid0
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_10\,
      Q => \^m00_axi_araddr\(5),
      R => axi_awvalid0
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_9\,
      Q => \^m00_axi_araddr\(6),
      R => axi_awvalid0
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_8\,
      Q => \^m00_axi_araddr\(7),
      R => axi_awvalid0
    );
\axi_araddr_reg[13]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \axi_araddr_reg[13]_i_1_n_0\,
      CO(6) => \axi_araddr_reg[13]_i_1_n_1\,
      CO(5) => \axi_araddr_reg[13]_i_1_n_2\,
      CO(4) => \axi_araddr_reg[13]_i_1_n_3\,
      CO(3) => \axi_araddr_reg[13]_i_1_n_4\,
      CO(2) => \axi_araddr_reg[13]_i_1_n_5\,
      CO(1) => \axi_araddr_reg[13]_i_1_n_6\,
      CO(0) => \axi_araddr_reg[13]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \axi_araddr_reg[13]_i_1_n_8\,
      O(6) => \axi_araddr_reg[13]_i_1_n_9\,
      O(5) => \axi_araddr_reg[13]_i_1_n_10\,
      O(4) => \axi_araddr_reg[13]_i_1_n_11\,
      O(3) => \axi_araddr_reg[13]_i_1_n_12\,
      O(2) => \axi_araddr_reg[13]_i_1_n_13\,
      O(1) => \axi_araddr_reg[13]_i_1_n_14\,
      O(0) => \axi_araddr_reg[13]_i_1_n_15\,
      S(7 downto 1) => \^m00_axi_araddr\(7 downto 1),
      S(0) => \axi_araddr[13]_i_2_n_0\
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_15\,
      Q => \^m00_axi_araddr\(8),
      R => axi_awvalid0
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_14\,
      Q => \^m00_axi_araddr\(9),
      R => axi_awvalid0
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_13\,
      Q => \^m00_axi_araddr\(10),
      R => axi_awvalid0
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_12\,
      Q => \^m00_axi_araddr\(11),
      R => axi_awvalid0
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_11\,
      Q => \^m00_axi_araddr\(12),
      R => axi_awvalid0
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_10\,
      Q => \^m00_axi_araddr\(13),
      R => axi_awvalid0
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_9\,
      Q => \^m00_axi_araddr\(14),
      R => axi_awvalid0
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[21]_i_1_n_8\,
      Q => \^m00_axi_araddr\(15),
      R => axi_awvalid0
    );
\axi_araddr_reg[21]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr_reg[13]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_araddr_reg[21]_i_1_n_0\,
      CO(6) => \axi_araddr_reg[21]_i_1_n_1\,
      CO(5) => \axi_araddr_reg[21]_i_1_n_2\,
      CO(4) => \axi_araddr_reg[21]_i_1_n_3\,
      CO(3) => \axi_araddr_reg[21]_i_1_n_4\,
      CO(2) => \axi_araddr_reg[21]_i_1_n_5\,
      CO(1) => \axi_araddr_reg[21]_i_1_n_6\,
      CO(0) => \axi_araddr_reg[21]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_araddr_reg[21]_i_1_n_8\,
      O(6) => \axi_araddr_reg[21]_i_1_n_9\,
      O(5) => \axi_araddr_reg[21]_i_1_n_10\,
      O(4) => \axi_araddr_reg[21]_i_1_n_11\,
      O(3) => \axi_araddr_reg[21]_i_1_n_12\,
      O(2) => \axi_araddr_reg[21]_i_1_n_13\,
      O(1) => \axi_araddr_reg[21]_i_1_n_14\,
      O(0) => \axi_araddr_reg[21]_i_1_n_15\,
      S(7 downto 0) => \^m00_axi_araddr\(15 downto 8)
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_15\,
      Q => \^m00_axi_araddr\(16),
      R => axi_awvalid0
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_14\,
      Q => \^m00_axi_araddr\(17),
      R => axi_awvalid0
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_13\,
      Q => \^m00_axi_araddr\(18),
      R => axi_awvalid0
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_12\,
      Q => \^m00_axi_araddr\(19),
      R => axi_awvalid0
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_11\,
      Q => \^m00_axi_araddr\(20),
      R => axi_awvalid0
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_10\,
      Q => \^m00_axi_araddr\(21),
      R => axi_awvalid0
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_9\,
      Q => \^m00_axi_araddr\(22),
      R => axi_awvalid0
    );
\axi_araddr_reg[28]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr_reg[21]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_araddr_reg[28]_i_2_n_0\,
      CO(6) => \axi_araddr_reg[28]_i_2_n_1\,
      CO(5) => \axi_araddr_reg[28]_i_2_n_2\,
      CO(4) => \axi_araddr_reg[28]_i_2_n_3\,
      CO(3) => \axi_araddr_reg[28]_i_2_n_4\,
      CO(2) => \axi_araddr_reg[28]_i_2_n_5\,
      CO(1) => \axi_araddr_reg[28]_i_2_n_6\,
      CO(0) => \axi_araddr_reg[28]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_araddr_reg[28]_i_2_n_8\,
      O(6) => \axi_araddr_reg[28]_i_2_n_9\,
      O(5) => \axi_araddr_reg[28]_i_2_n_10\,
      O(4) => \axi_araddr_reg[28]_i_2_n_11\,
      O(3) => \axi_araddr_reg[28]_i_2_n_12\,
      O(2) => \axi_araddr_reg[28]_i_2_n_13\,
      O(1) => \axi_araddr_reg[28]_i_2_n_14\,
      O(0) => \axi_araddr_reg[28]_i_2_n_15\,
      S(7) => axi_araddr_reg(29),
      S(6 downto 0) => \^m00_axi_araddr\(22 downto 16)
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[28]_i_2_n_8\,
      Q => axi_araddr_reg(29),
      R => axi_awvalid0
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[30]_i_1_n_15\,
      Q => axi_araddr_reg(30),
      R => axi_awvalid0
    );
\axi_araddr_reg[30]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr_reg[28]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \axi_araddr_reg[30]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \axi_araddr_reg[30]_i_1_n_14\,
      O(0) => \axi_araddr_reg[30]_i_1_n_15\,
      S(7 downto 2) => B"000000",
      S(1 downto 0) => axi_araddr_reg(31 downto 30)
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[30]_i_1_n_14\,
      Q => axi_araddr_reg(31),
      R => axi_awvalid0
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_15\,
      Q => \^m00_axi_araddr\(0),
      R => axi_awvalid0
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_14\,
      Q => \^m00_axi_araddr\(1),
      R => axi_awvalid0
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_13\,
      Q => \^m00_axi_araddr\(2),
      R => axi_awvalid0
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \state_read__0\(1),
      D => \axi_araddr_reg[13]_i_1_n_12\,
      Q => \^m00_axi_araddr\(3),
      R => axi_awvalid0
    );
axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF02FF02CB0AFB0A"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I1 => state_read(1),
      I2 => state_read(0),
      I3 => \^axi_arvalid_reg_0\,
      I4 => m00_axi_arready,
      I5 => axi_arvalid_i_2_n_0,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => m00_axi_rlast,
      O => axi_arvalid_i_2_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^axi_arvalid_reg_0\,
      R => axi_awvalid0
    );
\axi_awaddr[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m00_axi_awaddr\(0),
      O => \axi_awaddr[13]_i_2_n_0\
    );
\axi_awaddr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => init_txn_ff,
      I1 => init_txn_ff2,
      I2 => m00_axi_aresetn,
      O => axi_awvalid0
    );
\axi_awaddr[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => m00_axi_awready,
      I3 => \^axi_awvalid_reg_0\,
      O => axi_awaddr
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_11\,
      Q => \^m00_axi_awaddr\(4),
      R => axi_awvalid0
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_10\,
      Q => \^m00_axi_awaddr\(5),
      R => axi_awvalid0
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_9\,
      Q => \^m00_axi_awaddr\(6),
      R => axi_awvalid0
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_8\,
      Q => \^m00_axi_awaddr\(7),
      R => axi_awvalid0
    );
\axi_awaddr_reg[13]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \axi_awaddr_reg[13]_i_1_n_0\,
      CO(6) => \axi_awaddr_reg[13]_i_1_n_1\,
      CO(5) => \axi_awaddr_reg[13]_i_1_n_2\,
      CO(4) => \axi_awaddr_reg[13]_i_1_n_3\,
      CO(3) => \axi_awaddr_reg[13]_i_1_n_4\,
      CO(2) => \axi_awaddr_reg[13]_i_1_n_5\,
      CO(1) => \axi_awaddr_reg[13]_i_1_n_6\,
      CO(0) => \axi_awaddr_reg[13]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \axi_awaddr_reg[13]_i_1_n_8\,
      O(6) => \axi_awaddr_reg[13]_i_1_n_9\,
      O(5) => \axi_awaddr_reg[13]_i_1_n_10\,
      O(4) => \axi_awaddr_reg[13]_i_1_n_11\,
      O(3) => \axi_awaddr_reg[13]_i_1_n_12\,
      O(2) => \axi_awaddr_reg[13]_i_1_n_13\,
      O(1) => \axi_awaddr_reg[13]_i_1_n_14\,
      O(0) => \axi_awaddr_reg[13]_i_1_n_15\,
      S(7 downto 1) => \^m00_axi_awaddr\(7 downto 1),
      S(0) => \axi_awaddr[13]_i_2_n_0\
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_15\,
      Q => \^m00_axi_awaddr\(8),
      R => axi_awvalid0
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_14\,
      Q => \^m00_axi_awaddr\(9),
      R => axi_awvalid0
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_13\,
      Q => \^m00_axi_awaddr\(10),
      R => axi_awvalid0
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_12\,
      Q => \^m00_axi_awaddr\(11),
      R => axi_awvalid0
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_11\,
      Q => \^m00_axi_awaddr\(12),
      R => axi_awvalid0
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_10\,
      Q => \^m00_axi_awaddr\(13),
      R => axi_awvalid0
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_9\,
      Q => \^m00_axi_awaddr\(14),
      R => axi_awvalid0
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[21]_i_1_n_8\,
      Q => \^m00_axi_awaddr\(15),
      R => axi_awvalid0
    );
\axi_awaddr_reg[21]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr_reg[13]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_awaddr_reg[21]_i_1_n_0\,
      CO(6) => \axi_awaddr_reg[21]_i_1_n_1\,
      CO(5) => \axi_awaddr_reg[21]_i_1_n_2\,
      CO(4) => \axi_awaddr_reg[21]_i_1_n_3\,
      CO(3) => \axi_awaddr_reg[21]_i_1_n_4\,
      CO(2) => \axi_awaddr_reg[21]_i_1_n_5\,
      CO(1) => \axi_awaddr_reg[21]_i_1_n_6\,
      CO(0) => \axi_awaddr_reg[21]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_awaddr_reg[21]_i_1_n_8\,
      O(6) => \axi_awaddr_reg[21]_i_1_n_9\,
      O(5) => \axi_awaddr_reg[21]_i_1_n_10\,
      O(4) => \axi_awaddr_reg[21]_i_1_n_11\,
      O(3) => \axi_awaddr_reg[21]_i_1_n_12\,
      O(2) => \axi_awaddr_reg[21]_i_1_n_13\,
      O(1) => \axi_awaddr_reg[21]_i_1_n_14\,
      O(0) => \axi_awaddr_reg[21]_i_1_n_15\,
      S(7 downto 0) => \^m00_axi_awaddr\(15 downto 8)
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_15\,
      Q => \^m00_axi_awaddr\(16),
      R => axi_awvalid0
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_14\,
      Q => \^m00_axi_awaddr\(17),
      R => axi_awvalid0
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_13\,
      Q => \^m00_axi_awaddr\(18),
      R => axi_awvalid0
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_12\,
      Q => \^m00_axi_awaddr\(19),
      R => axi_awvalid0
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_11\,
      Q => \^m00_axi_awaddr\(20),
      R => axi_awvalid0
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_10\,
      Q => \^m00_axi_awaddr\(21),
      R => axi_awvalid0
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_9\,
      Q => \^m00_axi_awaddr\(22),
      R => axi_awvalid0
    );
\axi_awaddr_reg[28]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr_reg[21]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_awaddr_reg[28]_i_3_n_0\,
      CO(6) => \axi_awaddr_reg[28]_i_3_n_1\,
      CO(5) => \axi_awaddr_reg[28]_i_3_n_2\,
      CO(4) => \axi_awaddr_reg[28]_i_3_n_3\,
      CO(3) => \axi_awaddr_reg[28]_i_3_n_4\,
      CO(2) => \axi_awaddr_reg[28]_i_3_n_5\,
      CO(1) => \axi_awaddr_reg[28]_i_3_n_6\,
      CO(0) => \axi_awaddr_reg[28]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_awaddr_reg[28]_i_3_n_8\,
      O(6) => \axi_awaddr_reg[28]_i_3_n_9\,
      O(5) => \axi_awaddr_reg[28]_i_3_n_10\,
      O(4) => \axi_awaddr_reg[28]_i_3_n_11\,
      O(3) => \axi_awaddr_reg[28]_i_3_n_12\,
      O(2) => \axi_awaddr_reg[28]_i_3_n_13\,
      O(1) => \axi_awaddr_reg[28]_i_3_n_14\,
      O(0) => \axi_awaddr_reg[28]_i_3_n_15\,
      S(7) => axi_awaddr_reg(29),
      S(6 downto 0) => \^m00_axi_awaddr\(22 downto 16)
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[28]_i_3_n_8\,
      Q => axi_awaddr_reg(29),
      R => axi_awvalid0
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[30]_i_1_n_15\,
      Q => axi_awaddr_reg(30),
      R => axi_awvalid0
    );
\axi_awaddr_reg[30]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr_reg[28]_i_3_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_axi_awaddr_reg[30]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \axi_awaddr_reg[30]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_axi_awaddr_reg[30]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \axi_awaddr_reg[30]_i_1_n_14\,
      O(0) => \axi_awaddr_reg[30]_i_1_n_15\,
      S(7 downto 2) => B"000000",
      S(1 downto 0) => axi_awaddr_reg(31 downto 30)
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[30]_i_1_n_14\,
      Q => axi_awaddr_reg(31),
      R => axi_awvalid0
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_15\,
      Q => \^m00_axi_awaddr\(0),
      R => axi_awvalid0
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_14\,
      Q => \^m00_axi_awaddr\(1),
      R => axi_awvalid0
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_13\,
      Q => \^m00_axi_awaddr\(2),
      R => axi_awvalid0
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awaddr,
      D => \axi_awaddr_reg[13]_i_1_n_12\,
      Q => \^m00_axi_awaddr\(3),
      R => axi_awvalid0
    );
axi_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABABABBAAAAAAA"
    )
        port map (
      I0 => axi_awaddr,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => m00_axi_wready,
      I4 => \^axi_wlast_reg_0\,
      I5 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000D555"
    )
        port map (
      I0 => state_write(0),
      I1 => axi_awvalid_i_3_n_0,
      I2 => m00_axi_wready,
      I3 => \^axi_wlast_reg_0\,
      I4 => state_write(1),
      O => axi_awvalid
    );
axi_awvalid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \write_burst_counter_reg__0\(4),
      I1 => \write_burst_counter_reg__0\(2),
      I2 => \write_burst_counter_reg__0\(0),
      I3 => \write_burst_counter_reg__0\(1),
      I4 => \write_burst_counter_reg__0\(3),
      I5 => \write_burst_counter_reg__0\(5),
      O => axi_awvalid_i_3_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awvalid_i_1_n_0,
      D => axi_awvalid,
      Q => \^axi_awvalid_reg_0\,
      R => axi_awvalid0
    );
axi_bready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABB88AB88"
    )
        port map (
      I0 => axi_bready,
      I1 => axi_awaddr,
      I2 => m00_axi_bvalid,
      I3 => \^axi_bready_reg_0\,
      I4 => state_write(1),
      I5 => axi_wlast_i_4_n_0,
      O => axi_bready_i_1_n_0
    );
axi_bready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880008000800080"
    )
        port map (
      I0 => \^axi_wlast_reg_0\,
      I1 => m00_axi_wready,
      I2 => state_write(1),
      I3 => state_write(0),
      I4 => m00_axi_awready,
      I5 => \^axi_awvalid_reg_0\,
      O => axi_bready
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_bready_i_1_n_0,
      Q => \^axi_bready_reg_0\,
      R => axi_awvalid0
    );
axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFFF0000C000"
    )
        port map (
      I0 => axi_arvalid_i_2_n_0,
      I1 => m00_axi_arready,
      I2 => \^axi_arvalid_reg_0\,
      I3 => state_read(0),
      I4 => state_read(1),
      I5 => \^axi_rready_reg_0\,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^axi_rready_reg_0\,
      R => axi_awvalid0
    );
\axi_wdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(15),
      O => \axi_wdata[15]_i_2_n_0\
    );
\axi_wdata[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(14),
      O => \axi_wdata[15]_i_3_n_0\
    );
\axi_wdata[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(13),
      O => \axi_wdata[15]_i_4_n_0\
    );
\axi_wdata[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(12),
      O => \axi_wdata[15]_i_5_n_0\
    );
\axi_wdata[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(11),
      O => \axi_wdata[15]_i_6_n_0\
    );
\axi_wdata[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(10),
      O => \axi_wdata[15]_i_7_n_0\
    );
\axi_wdata[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(9),
      O => \axi_wdata[15]_i_8_n_0\
    );
\axi_wdata[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(8),
      O => \axi_wdata[15]_i_9_n_0\
    );
\axi_wdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(23),
      O => \axi_wdata[23]_i_2_n_0\
    );
\axi_wdata[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(22),
      O => \axi_wdata[23]_i_3_n_0\
    );
\axi_wdata[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(21),
      O => \axi_wdata[23]_i_4_n_0\
    );
\axi_wdata[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(20),
      O => \axi_wdata[23]_i_5_n_0\
    );
\axi_wdata[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(19),
      O => \axi_wdata[23]_i_6_n_0\
    );
\axi_wdata[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(18),
      O => \axi_wdata[23]_i_7_n_0\
    );
\axi_wdata[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(17),
      O => \axi_wdata[23]_i_8_n_0\
    );
\axi_wdata[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(16),
      O => \axi_wdata[23]_i_9_n_0\
    );
\axi_wdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080F000"
    )
        port map (
      I0 => m00_axi_awready,
      I1 => \^axi_awvalid_reg_0\,
      I2 => m00_axi_wready,
      I3 => state_write(1),
      I4 => state_write(0),
      O => axi_wdata
    );
\axi_wdata[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(24),
      O => \axi_wdata[31]_i_10_n_0\
    );
\axi_wdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(31),
      O => \axi_wdata[31]_i_3_n_0\
    );
\axi_wdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(30),
      O => \axi_wdata[31]_i_4_n_0\
    );
\axi_wdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(29),
      O => \axi_wdata[31]_i_5_n_0\
    );
\axi_wdata[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(28),
      O => \axi_wdata[31]_i_6_n_0\
    );
\axi_wdata[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(27),
      O => \axi_wdata[31]_i_7_n_0\
    );
\axi_wdata[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(26),
      O => \axi_wdata[31]_i_8_n_0\
    );
\axi_wdata[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(25),
      O => \axi_wdata[31]_i_9_n_0\
    );
\axi_wdata[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(0),
      O => \axi_wdata[7]_i_10_n_0\
    );
\axi_wdata[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      O => \axi_wdata[7]_i_2_n_0\
    );
\axi_wdata[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(7),
      O => \axi_wdata[7]_i_3_n_0\
    );
\axi_wdata[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(6),
      O => \axi_wdata[7]_i_4_n_0\
    );
\axi_wdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(5),
      O => \axi_wdata[7]_i_5_n_0\
    );
\axi_wdata[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(4),
      O => \axi_wdata[7]_i_6_n_0\
    );
\axi_wdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(3),
      O => \axi_wdata[7]_i_7_n_0\
    );
\axi_wdata[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(2),
      O => \axi_wdata[7]_i_8_n_0\
    );
\axi_wdata[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => m00_axi_wready,
      I2 => \^axi_wlast_reg_0\,
      I3 => \^m00_axi_wdata\(1),
      O => \axi_wdata[7]_i_9_n_0\
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_15\,
      Q => \^m00_axi_wdata\(0),
      S => axi_awvalid0
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_13\,
      Q => \^m00_axi_wdata\(10),
      R => axi_awvalid0
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_12\,
      Q => \^m00_axi_wdata\(11),
      R => axi_awvalid0
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_11\,
      Q => \^m00_axi_wdata\(12),
      R => axi_awvalid0
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_10\,
      Q => \^m00_axi_wdata\(13),
      R => axi_awvalid0
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_9\,
      Q => \^m00_axi_wdata\(14),
      R => axi_awvalid0
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_8\,
      Q => \^m00_axi_wdata\(15),
      R => axi_awvalid0
    );
\axi_wdata_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_wdata_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_wdata_reg[15]_i_1_n_0\,
      CO(6) => \axi_wdata_reg[15]_i_1_n_1\,
      CO(5) => \axi_wdata_reg[15]_i_1_n_2\,
      CO(4) => \axi_wdata_reg[15]_i_1_n_3\,
      CO(3) => \axi_wdata_reg[15]_i_1_n_4\,
      CO(2) => \axi_wdata_reg[15]_i_1_n_5\,
      CO(1) => \axi_wdata_reg[15]_i_1_n_6\,
      CO(0) => \axi_wdata_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_wdata_reg[15]_i_1_n_8\,
      O(6) => \axi_wdata_reg[15]_i_1_n_9\,
      O(5) => \axi_wdata_reg[15]_i_1_n_10\,
      O(4) => \axi_wdata_reg[15]_i_1_n_11\,
      O(3) => \axi_wdata_reg[15]_i_1_n_12\,
      O(2) => \axi_wdata_reg[15]_i_1_n_13\,
      O(1) => \axi_wdata_reg[15]_i_1_n_14\,
      O(0) => \axi_wdata_reg[15]_i_1_n_15\,
      S(7) => \axi_wdata[15]_i_2_n_0\,
      S(6) => \axi_wdata[15]_i_3_n_0\,
      S(5) => \axi_wdata[15]_i_4_n_0\,
      S(4) => \axi_wdata[15]_i_5_n_0\,
      S(3) => \axi_wdata[15]_i_6_n_0\,
      S(2) => \axi_wdata[15]_i_7_n_0\,
      S(1) => \axi_wdata[15]_i_8_n_0\,
      S(0) => \axi_wdata[15]_i_9_n_0\
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_15\,
      Q => \^m00_axi_wdata\(16),
      R => axi_awvalid0
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_14\,
      Q => \^m00_axi_wdata\(17),
      R => axi_awvalid0
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_13\,
      Q => \^m00_axi_wdata\(18),
      R => axi_awvalid0
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_12\,
      Q => \^m00_axi_wdata\(19),
      R => axi_awvalid0
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_14\,
      Q => \^m00_axi_wdata\(1),
      R => axi_awvalid0
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_11\,
      Q => \^m00_axi_wdata\(20),
      R => axi_awvalid0
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_10\,
      Q => \^m00_axi_wdata\(21),
      R => axi_awvalid0
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_9\,
      Q => \^m00_axi_wdata\(22),
      R => axi_awvalid0
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[23]_i_1_n_8\,
      Q => \^m00_axi_wdata\(23),
      R => axi_awvalid0
    );
\axi_wdata_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_wdata_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_wdata_reg[23]_i_1_n_0\,
      CO(6) => \axi_wdata_reg[23]_i_1_n_1\,
      CO(5) => \axi_wdata_reg[23]_i_1_n_2\,
      CO(4) => \axi_wdata_reg[23]_i_1_n_3\,
      CO(3) => \axi_wdata_reg[23]_i_1_n_4\,
      CO(2) => \axi_wdata_reg[23]_i_1_n_5\,
      CO(1) => \axi_wdata_reg[23]_i_1_n_6\,
      CO(0) => \axi_wdata_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_wdata_reg[23]_i_1_n_8\,
      O(6) => \axi_wdata_reg[23]_i_1_n_9\,
      O(5) => \axi_wdata_reg[23]_i_1_n_10\,
      O(4) => \axi_wdata_reg[23]_i_1_n_11\,
      O(3) => \axi_wdata_reg[23]_i_1_n_12\,
      O(2) => \axi_wdata_reg[23]_i_1_n_13\,
      O(1) => \axi_wdata_reg[23]_i_1_n_14\,
      O(0) => \axi_wdata_reg[23]_i_1_n_15\,
      S(7) => \axi_wdata[23]_i_2_n_0\,
      S(6) => \axi_wdata[23]_i_3_n_0\,
      S(5) => \axi_wdata[23]_i_4_n_0\,
      S(4) => \axi_wdata[23]_i_5_n_0\,
      S(3) => \axi_wdata[23]_i_6_n_0\,
      S(2) => \axi_wdata[23]_i_7_n_0\,
      S(1) => \axi_wdata[23]_i_8_n_0\,
      S(0) => \axi_wdata[23]_i_9_n_0\
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_15\,
      Q => \^m00_axi_wdata\(24),
      R => axi_awvalid0
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_14\,
      Q => \^m00_axi_wdata\(25),
      R => axi_awvalid0
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_13\,
      Q => \^m00_axi_wdata\(26),
      R => axi_awvalid0
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_12\,
      Q => \^m00_axi_wdata\(27),
      R => axi_awvalid0
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_11\,
      Q => \^m00_axi_wdata\(28),
      R => axi_awvalid0
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_10\,
      Q => \^m00_axi_wdata\(29),
      R => axi_awvalid0
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_13\,
      Q => \^m00_axi_wdata\(2),
      R => axi_awvalid0
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_9\,
      Q => \^m00_axi_wdata\(30),
      R => axi_awvalid0
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[31]_i_2_n_8\,
      Q => \^m00_axi_wdata\(31),
      R => axi_awvalid0
    );
\axi_wdata_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_wdata_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_axi_wdata_reg[31]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \axi_wdata_reg[31]_i_2_n_1\,
      CO(5) => \axi_wdata_reg[31]_i_2_n_2\,
      CO(4) => \axi_wdata_reg[31]_i_2_n_3\,
      CO(3) => \axi_wdata_reg[31]_i_2_n_4\,
      CO(2) => \axi_wdata_reg[31]_i_2_n_5\,
      CO(1) => \axi_wdata_reg[31]_i_2_n_6\,
      CO(0) => \axi_wdata_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_wdata_reg[31]_i_2_n_8\,
      O(6) => \axi_wdata_reg[31]_i_2_n_9\,
      O(5) => \axi_wdata_reg[31]_i_2_n_10\,
      O(4) => \axi_wdata_reg[31]_i_2_n_11\,
      O(3) => \axi_wdata_reg[31]_i_2_n_12\,
      O(2) => \axi_wdata_reg[31]_i_2_n_13\,
      O(1) => \axi_wdata_reg[31]_i_2_n_14\,
      O(0) => \axi_wdata_reg[31]_i_2_n_15\,
      S(7) => \axi_wdata[31]_i_3_n_0\,
      S(6) => \axi_wdata[31]_i_4_n_0\,
      S(5) => \axi_wdata[31]_i_5_n_0\,
      S(4) => \axi_wdata[31]_i_6_n_0\,
      S(3) => \axi_wdata[31]_i_7_n_0\,
      S(2) => \axi_wdata[31]_i_8_n_0\,
      S(1) => \axi_wdata[31]_i_9_n_0\,
      S(0) => \axi_wdata[31]_i_10_n_0\
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_12\,
      Q => \^m00_axi_wdata\(3),
      R => axi_awvalid0
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_11\,
      Q => \^m00_axi_wdata\(4),
      R => axi_awvalid0
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_10\,
      Q => \^m00_axi_wdata\(5),
      R => axi_awvalid0
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_9\,
      Q => \^m00_axi_wdata\(6),
      R => axi_awvalid0
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[7]_i_1_n_8\,
      Q => \^m00_axi_wdata\(7),
      R => axi_awvalid0
    );
\axi_wdata_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \axi_wdata_reg[7]_i_1_n_0\,
      CO(6) => \axi_wdata_reg[7]_i_1_n_1\,
      CO(5) => \axi_wdata_reg[7]_i_1_n_2\,
      CO(4) => \axi_wdata_reg[7]_i_1_n_3\,
      CO(3) => \axi_wdata_reg[7]_i_1_n_4\,
      CO(2) => \axi_wdata_reg[7]_i_1_n_5\,
      CO(1) => \axi_wdata_reg[7]_i_1_n_6\,
      CO(0) => \axi_wdata_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \axi_wdata[7]_i_2_n_0\,
      O(7) => \axi_wdata_reg[7]_i_1_n_8\,
      O(6) => \axi_wdata_reg[7]_i_1_n_9\,
      O(5) => \axi_wdata_reg[7]_i_1_n_10\,
      O(4) => \axi_wdata_reg[7]_i_1_n_11\,
      O(3) => \axi_wdata_reg[7]_i_1_n_12\,
      O(2) => \axi_wdata_reg[7]_i_1_n_13\,
      O(1) => \axi_wdata_reg[7]_i_1_n_14\,
      O(0) => \axi_wdata_reg[7]_i_1_n_15\,
      S(7) => \axi_wdata[7]_i_3_n_0\,
      S(6) => \axi_wdata[7]_i_4_n_0\,
      S(5) => \axi_wdata[7]_i_5_n_0\,
      S(4) => \axi_wdata[7]_i_6_n_0\,
      S(3) => \axi_wdata[7]_i_7_n_0\,
      S(2) => \axi_wdata[7]_i_8_n_0\,
      S(1) => \axi_wdata[7]_i_9_n_0\,
      S(0) => \axi_wdata[7]_i_10_n_0\
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_15\,
      Q => \^m00_axi_wdata\(8),
      R => axi_awvalid0
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_wdata,
      D => \axi_wdata_reg[15]_i_1_n_14\,
      Q => \^m00_axi_wdata\(9),
      R => axi_awvalid0
    );
axi_wlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C080C780C0C0C78"
    )
        port map (
      I0 => axi_wlast_i_2_n_0,
      I1 => axi_wlast_i_3_n_0,
      I2 => \^axi_wlast_reg_0\,
      I3 => axi_wlast_i_4_n_0,
      I4 => axi_awaddr,
      I5 => m00_axi_wready,
      O => axi_wlast_i_1_n_0
    );
axi_wlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \write_index_reg_n_0_[0]\,
      I1 => \write_index_reg_n_0_[1]\,
      I2 => \write_index_reg_n_0_[2]\,
      I3 => \write_index_reg_n_0_[4]\,
      I4 => \write_index_reg_n_0_[3]\,
      O => axi_wlast_i_2_n_0
    );
axi_wlast_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      I2 => m00_axi_wready,
      O => axi_wlast_i_3_n_0
    );
axi_wlast_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C0AA"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I1 => \^axi_wlast_reg_0\,
      I2 => m00_axi_wready,
      I3 => state_write(1),
      I4 => state_write(0),
      O => axi_wlast_i_4_n_0
    );
axi_wlast_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => axi_wlast_i_1_n_0,
      Q => \^axi_wlast_reg_0\,
      R => axi_awvalid0
    );
axi_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"71333333"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      I2 => axi_awvalid_i_3_n_0,
      I3 => m00_axi_wready,
      I4 => \^axi_wlast_reg_0\,
      O => axi_wvalid
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => axi_awvalid_i_1_n_0,
      D => axi_wvalid,
      Q => \^m00_axi_wvalid\,
      R => axi_awvalid0
    );
compare_done_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_aresetn,
      O => compare_done_i_1_n_0
    );
compare_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => init_txn_ff2,
      I1 => init_txn_ff,
      I2 => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      I3 => compare_done,
      O => compare_done_i_2_n_0
    );
compare_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => compare_done_i_2_n_0,
      D => compare_done,
      Q => m00_axi_txn_done,
      R => compare_done_i_1_n_0
    );
error_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => p_17_in,
      I1 => m00_axi_rresp(0),
      I2 => m00_axi_bresp(0),
      I3 => error_reg_i_2_n_0,
      I4 => read_mismatch,
      I5 => \^error_reg\,
      O => error_reg_i_1_n_0
    );
error_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_bready_reg_0\,
      I1 => m00_axi_bvalid,
      O => error_reg_i_2_n_0
    );
error_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => error_reg_i_1_n_0,
      Q => \^error_reg\,
      R => axi_awvalid0
    );
\expected_rdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_rready_reg_0\,
      I1 => m00_axi_rvalid,
      O => p_17_in
    );
\expected_rdata[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => expected_rdata_reg(0),
      O => \expected_rdata[0]_i_3_n_0\
    );
\expected_rdata_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_15\,
      Q => expected_rdata_reg(0),
      S => axi_awvalid0
    );
\expected_rdata_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \expected_rdata_reg[0]_i_2_n_0\,
      CO(6) => \expected_rdata_reg[0]_i_2_n_1\,
      CO(5) => \expected_rdata_reg[0]_i_2_n_2\,
      CO(4) => \expected_rdata_reg[0]_i_2_n_3\,
      CO(3) => \expected_rdata_reg[0]_i_2_n_4\,
      CO(2) => \expected_rdata_reg[0]_i_2_n_5\,
      CO(1) => \expected_rdata_reg[0]_i_2_n_6\,
      CO(0) => \expected_rdata_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \expected_rdata_reg[0]_i_2_n_8\,
      O(6) => \expected_rdata_reg[0]_i_2_n_9\,
      O(5) => \expected_rdata_reg[0]_i_2_n_10\,
      O(4) => \expected_rdata_reg[0]_i_2_n_11\,
      O(3) => \expected_rdata_reg[0]_i_2_n_12\,
      O(2) => \expected_rdata_reg[0]_i_2_n_13\,
      O(1) => \expected_rdata_reg[0]_i_2_n_14\,
      O(0) => \expected_rdata_reg[0]_i_2_n_15\,
      S(7 downto 1) => expected_rdata_reg(7 downto 1),
      S(0) => \expected_rdata[0]_i_3_n_0\
    );
\expected_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_13\,
      Q => expected_rdata_reg(10),
      R => axi_awvalid0
    );
\expected_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_12\,
      Q => expected_rdata_reg(11),
      R => axi_awvalid0
    );
\expected_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_11\,
      Q => expected_rdata_reg(12),
      R => axi_awvalid0
    );
\expected_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_10\,
      Q => expected_rdata_reg(13),
      R => axi_awvalid0
    );
\expected_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_9\,
      Q => expected_rdata_reg(14),
      R => axi_awvalid0
    );
\expected_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_8\,
      Q => expected_rdata_reg(15),
      R => axi_awvalid0
    );
\expected_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_15\,
      Q => expected_rdata_reg(16),
      R => axi_awvalid0
    );
\expected_rdata_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \expected_rdata_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \expected_rdata_reg[16]_i_1_n_0\,
      CO(6) => \expected_rdata_reg[16]_i_1_n_1\,
      CO(5) => \expected_rdata_reg[16]_i_1_n_2\,
      CO(4) => \expected_rdata_reg[16]_i_1_n_3\,
      CO(3) => \expected_rdata_reg[16]_i_1_n_4\,
      CO(2) => \expected_rdata_reg[16]_i_1_n_5\,
      CO(1) => \expected_rdata_reg[16]_i_1_n_6\,
      CO(0) => \expected_rdata_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \expected_rdata_reg[16]_i_1_n_8\,
      O(6) => \expected_rdata_reg[16]_i_1_n_9\,
      O(5) => \expected_rdata_reg[16]_i_1_n_10\,
      O(4) => \expected_rdata_reg[16]_i_1_n_11\,
      O(3) => \expected_rdata_reg[16]_i_1_n_12\,
      O(2) => \expected_rdata_reg[16]_i_1_n_13\,
      O(1) => \expected_rdata_reg[16]_i_1_n_14\,
      O(0) => \expected_rdata_reg[16]_i_1_n_15\,
      S(7 downto 0) => expected_rdata_reg(23 downto 16)
    );
\expected_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_14\,
      Q => expected_rdata_reg(17),
      R => axi_awvalid0
    );
\expected_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_13\,
      Q => expected_rdata_reg(18),
      R => axi_awvalid0
    );
\expected_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_12\,
      Q => expected_rdata_reg(19),
      R => axi_awvalid0
    );
\expected_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_14\,
      Q => expected_rdata_reg(1),
      R => axi_awvalid0
    );
\expected_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_11\,
      Q => expected_rdata_reg(20),
      R => axi_awvalid0
    );
\expected_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_10\,
      Q => expected_rdata_reg(21),
      R => axi_awvalid0
    );
\expected_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_9\,
      Q => expected_rdata_reg(22),
      R => axi_awvalid0
    );
\expected_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[16]_i_1_n_8\,
      Q => expected_rdata_reg(23),
      R => axi_awvalid0
    );
\expected_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_15\,
      Q => expected_rdata_reg(24),
      R => axi_awvalid0
    );
\expected_rdata_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \expected_rdata_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_expected_rdata_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \expected_rdata_reg[24]_i_1_n_1\,
      CO(5) => \expected_rdata_reg[24]_i_1_n_2\,
      CO(4) => \expected_rdata_reg[24]_i_1_n_3\,
      CO(3) => \expected_rdata_reg[24]_i_1_n_4\,
      CO(2) => \expected_rdata_reg[24]_i_1_n_5\,
      CO(1) => \expected_rdata_reg[24]_i_1_n_6\,
      CO(0) => \expected_rdata_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \expected_rdata_reg[24]_i_1_n_8\,
      O(6) => \expected_rdata_reg[24]_i_1_n_9\,
      O(5) => \expected_rdata_reg[24]_i_1_n_10\,
      O(4) => \expected_rdata_reg[24]_i_1_n_11\,
      O(3) => \expected_rdata_reg[24]_i_1_n_12\,
      O(2) => \expected_rdata_reg[24]_i_1_n_13\,
      O(1) => \expected_rdata_reg[24]_i_1_n_14\,
      O(0) => \expected_rdata_reg[24]_i_1_n_15\,
      S(7 downto 0) => expected_rdata_reg(31 downto 24)
    );
\expected_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_14\,
      Q => expected_rdata_reg(25),
      R => axi_awvalid0
    );
\expected_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_13\,
      Q => expected_rdata_reg(26),
      R => axi_awvalid0
    );
\expected_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_12\,
      Q => expected_rdata_reg(27),
      R => axi_awvalid0
    );
\expected_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_11\,
      Q => expected_rdata_reg(28),
      R => axi_awvalid0
    );
\expected_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_10\,
      Q => expected_rdata_reg(29),
      R => axi_awvalid0
    );
\expected_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_13\,
      Q => expected_rdata_reg(2),
      R => axi_awvalid0
    );
\expected_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_9\,
      Q => expected_rdata_reg(30),
      R => axi_awvalid0
    );
\expected_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[24]_i_1_n_8\,
      Q => expected_rdata_reg(31),
      R => axi_awvalid0
    );
\expected_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_12\,
      Q => expected_rdata_reg(3),
      R => axi_awvalid0
    );
\expected_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_11\,
      Q => expected_rdata_reg(4),
      R => axi_awvalid0
    );
\expected_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_10\,
      Q => expected_rdata_reg(5),
      R => axi_awvalid0
    );
\expected_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_9\,
      Q => expected_rdata_reg(6),
      R => axi_awvalid0
    );
\expected_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[0]_i_2_n_8\,
      Q => expected_rdata_reg(7),
      R => axi_awvalid0
    );
\expected_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_15\,
      Q => expected_rdata_reg(8),
      R => axi_awvalid0
    );
\expected_rdata_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \expected_rdata_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \expected_rdata_reg[8]_i_1_n_0\,
      CO(6) => \expected_rdata_reg[8]_i_1_n_1\,
      CO(5) => \expected_rdata_reg[8]_i_1_n_2\,
      CO(4) => \expected_rdata_reg[8]_i_1_n_3\,
      CO(3) => \expected_rdata_reg[8]_i_1_n_4\,
      CO(2) => \expected_rdata_reg[8]_i_1_n_5\,
      CO(1) => \expected_rdata_reg[8]_i_1_n_6\,
      CO(0) => \expected_rdata_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \expected_rdata_reg[8]_i_1_n_8\,
      O(6) => \expected_rdata_reg[8]_i_1_n_9\,
      O(5) => \expected_rdata_reg[8]_i_1_n_10\,
      O(4) => \expected_rdata_reg[8]_i_1_n_11\,
      O(3) => \expected_rdata_reg[8]_i_1_n_12\,
      O(2) => \expected_rdata_reg[8]_i_1_n_13\,
      O(1) => \expected_rdata_reg[8]_i_1_n_14\,
      O(0) => \expected_rdata_reg[8]_i_1_n_15\,
      S(7 downto 0) => expected_rdata_reg(15 downto 8)
    );
\expected_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => p_17_in,
      D => \expected_rdata_reg[8]_i_1_n_14\,
      Q => expected_rdata_reg(9),
      R => axi_awvalid0
    );
init_txn_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => init_txn_ff,
      Q => init_txn_ff2,
      R => compare_done_i_1_n_0
    );
init_txn_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => m00_axi_init_axi_txn,
      Q => init_txn_ff,
      R => compare_done_i_1_n_0
    );
\read_burst_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_burst_counter_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\read_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_burst_counter_reg__0\(0),
      I1 => \read_burst_counter_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\read_burst_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_burst_counter_reg__0\(1),
      I1 => \read_burst_counter_reg__0\(0),
      I2 => \read_burst_counter_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\read_burst_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_burst_counter_reg__0\(2),
      I1 => \read_burst_counter_reg__0\(0),
      I2 => \read_burst_counter_reg__0\(1),
      I3 => \read_burst_counter_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\read_burst_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \read_burst_counter_reg__0\(3),
      I1 => \read_burst_counter_reg__0\(1),
      I2 => \read_burst_counter_reg__0\(0),
      I3 => \read_burst_counter_reg__0\(2),
      I4 => \read_burst_counter_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\read_burst_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \read_burst_counter_reg__0\(4),
      I1 => \read_burst_counter_reg__0\(2),
      I2 => \read_burst_counter_reg__0\(0),
      I3 => \read_burst_counter_reg__0\(1),
      I4 => \read_burst_counter_reg__0\(3),
      I5 => \read_burst_counter_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\read_burst_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arvalid_reg_0\,
      I1 => m00_axi_arready,
      I2 => read_burst_counter_reg(6),
      O => read_burst_counter
    );
\read_burst_counter[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_burst_counter[6]_i_3_n_0\,
      O => \p_0_in__1\(6)
    );
\read_burst_counter[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \read_burst_counter_reg__0\(4),
      I1 => \read_burst_counter_reg__0\(2),
      I2 => \read_burst_counter_reg__0\(0),
      I3 => \read_burst_counter_reg__0\(1),
      I4 => \read_burst_counter_reg__0\(3),
      I5 => \read_burst_counter_reg__0\(5),
      O => \read_burst_counter[6]_i_3_n_0\
    );
\read_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \p_0_in__1\(0),
      Q => \read_burst_counter_reg__0\(0),
      R => axi_awvalid0
    );
\read_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \p_0_in__1\(1),
      Q => \read_burst_counter_reg__0\(1),
      R => axi_awvalid0
    );
\read_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \p_0_in__1\(2),
      Q => \read_burst_counter_reg__0\(2),
      R => axi_awvalid0
    );
\read_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \p_0_in__1\(3),
      Q => \read_burst_counter_reg__0\(3),
      R => axi_awvalid0
    );
\read_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \p_0_in__1\(4),
      Q => \read_burst_counter_reg__0\(4),
      R => axi_awvalid0
    );
\read_burst_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \p_0_in__1\(5),
      Q => \read_burst_counter_reg__0\(5),
      R => axi_awvalid0
    );
\read_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_burst_counter,
      D => \p_0_in__1\(6),
      Q => read_burst_counter_reg(6),
      R => axi_awvalid0
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_rlast,
      I1 => read_index_reg(0),
      O => \p_0_in__0\(0)
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => m00_axi_rlast,
      I1 => read_index_reg(0),
      I2 => read_index_reg(1),
      O => \p_0_in__0\(1)
    );
\read_index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => read_index_reg(0),
      I1 => read_index_reg(1),
      I2 => m00_axi_rlast,
      I3 => read_index_reg(2),
      O => \p_0_in__0\(2)
    );
\read_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => read_index_reg(1),
      I1 => read_index_reg(0),
      I2 => read_index_reg(2),
      I3 => m00_axi_rlast,
      I4 => read_index_reg(3),
      O => \p_0_in__0\(3)
    );
\read_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000C0000000000"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I1 => \read_index[4]_i_3_n_0\,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => m00_axi_rlast,
      I5 => m00_axi_rvalid,
      O => read_index
    );
\read_index[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => read_index_reg(3),
      I1 => read_index_reg(1),
      I2 => read_index_reg(0),
      I3 => read_index_reg(2),
      I4 => read_index_reg(4),
      I5 => axi_arvalid_i_2_n_0,
      O => \p_0_in__0\(4)
    );
\read_index[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => read_index_reg(3),
      I1 => read_index_reg(1),
      I2 => read_index_reg(0),
      I3 => read_index_reg(2),
      I4 => read_index_reg(4),
      O => \read_index[4]_i_3_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_index,
      D => \p_0_in__0\(0),
      Q => read_index_reg(0),
      R => axi_awvalid0
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_index,
      D => \p_0_in__0\(1),
      Q => read_index_reg(1),
      R => axi_awvalid0
    );
\read_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_index,
      D => \p_0_in__0\(2),
      Q => read_index_reg(2),
      R => axi_awvalid0
    );
\read_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_index,
      D => \p_0_in__0\(3),
      Q => read_index_reg(3),
      R => axi_awvalid0
    );
\read_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => read_index,
      D => \p_0_in__0\(4),
      Q => read_index_reg(4),
      R => axi_awvalid0
    );
read_mismatch1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => read_mismatch1_carry_n_0,
      CO(6) => read_mismatch1_carry_n_1,
      CO(5) => read_mismatch1_carry_n_2,
      CO(4) => read_mismatch1_carry_n_3,
      CO(3) => read_mismatch1_carry_n_4,
      CO(2) => read_mismatch1_carry_n_5,
      CO(1) => read_mismatch1_carry_n_6,
      CO(0) => read_mismatch1_carry_n_7,
      DI(7 downto 0) => B"11111111",
      O(7 downto 0) => NLW_read_mismatch1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => read_mismatch1_carry_i_1_n_0,
      S(6) => read_mismatch1_carry_i_2_n_0,
      S(5) => read_mismatch1_carry_i_3_n_0,
      S(4) => read_mismatch1_carry_i_4_n_0,
      S(3) => read_mismatch1_carry_i_5_n_0,
      S(2) => read_mismatch1_carry_i_6_n_0,
      S(1) => read_mismatch1_carry_i_7_n_0,
      S(0) => read_mismatch1_carry_i_8_n_0
    );
\read_mismatch1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => read_mismatch1_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_read_mismatch1_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => read_mismatch1,
      CO(1) => \read_mismatch1_carry__0_n_6\,
      CO(0) => \read_mismatch1_carry__0_n_7\,
      DI(7 downto 0) => B"00000111",
      O(7 downto 0) => \NLW_read_mismatch1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \read_mismatch1_carry__0_i_1_n_0\,
      S(1) => \read_mismatch1_carry__0_i_2_n_0\,
      S(0) => \read_mismatch1_carry__0_i_3_n_0\
    );
\read_mismatch1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => expected_rdata_reg(31),
      I1 => m00_axi_rdata(31),
      I2 => expected_rdata_reg(30),
      I3 => m00_axi_rdata(30),
      O => \read_mismatch1_carry__0_i_1_n_0\
    );
\read_mismatch1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(29),
      I1 => m00_axi_rdata(29),
      I2 => expected_rdata_reg(28),
      I3 => m00_axi_rdata(28),
      I4 => m00_axi_rdata(27),
      I5 => expected_rdata_reg(27),
      O => \read_mismatch1_carry__0_i_2_n_0\
    );
\read_mismatch1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(26),
      I1 => m00_axi_rdata(26),
      I2 => expected_rdata_reg(25),
      I3 => m00_axi_rdata(25),
      I4 => m00_axi_rdata(24),
      I5 => expected_rdata_reg(24),
      O => \read_mismatch1_carry__0_i_3_n_0\
    );
read_mismatch1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(23),
      I1 => m00_axi_rdata(23),
      I2 => expected_rdata_reg(22),
      I3 => m00_axi_rdata(22),
      I4 => m00_axi_rdata(21),
      I5 => expected_rdata_reg(21),
      O => read_mismatch1_carry_i_1_n_0
    );
read_mismatch1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(20),
      I1 => m00_axi_rdata(20),
      I2 => expected_rdata_reg(19),
      I3 => m00_axi_rdata(19),
      I4 => m00_axi_rdata(18),
      I5 => expected_rdata_reg(18),
      O => read_mismatch1_carry_i_2_n_0
    );
read_mismatch1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(17),
      I1 => m00_axi_rdata(17),
      I2 => expected_rdata_reg(16),
      I3 => m00_axi_rdata(16),
      I4 => m00_axi_rdata(15),
      I5 => expected_rdata_reg(15),
      O => read_mismatch1_carry_i_3_n_0
    );
read_mismatch1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(14),
      I1 => m00_axi_rdata(14),
      I2 => expected_rdata_reg(13),
      I3 => m00_axi_rdata(13),
      I4 => m00_axi_rdata(12),
      I5 => expected_rdata_reg(12),
      O => read_mismatch1_carry_i_4_n_0
    );
read_mismatch1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(11),
      I1 => m00_axi_rdata(11),
      I2 => expected_rdata_reg(10),
      I3 => m00_axi_rdata(10),
      I4 => m00_axi_rdata(9),
      I5 => expected_rdata_reg(9),
      O => read_mismatch1_carry_i_5_n_0
    );
read_mismatch1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(8),
      I1 => m00_axi_rdata(8),
      I2 => expected_rdata_reg(7),
      I3 => m00_axi_rdata(7),
      I4 => m00_axi_rdata(6),
      I5 => expected_rdata_reg(6),
      O => read_mismatch1_carry_i_6_n_0
    );
read_mismatch1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(5),
      I1 => m00_axi_rdata(5),
      I2 => expected_rdata_reg(4),
      I3 => m00_axi_rdata(4),
      I4 => m00_axi_rdata(3),
      I5 => expected_rdata_reg(3),
      O => read_mismatch1_carry_i_7_n_0
    );
read_mismatch1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => expected_rdata_reg(2),
      I1 => m00_axi_rdata(2),
      I2 => expected_rdata_reg(1),
      I3 => m00_axi_rdata(1),
      I4 => m00_axi_rdata(0),
      I5 => expected_rdata_reg(0),
      O => read_mismatch1_carry_i_8_n_0
    );
read_mismatch_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m00_axi_rvalid,
      I1 => \^axi_rready_reg_0\,
      I2 => read_mismatch1,
      O => read_mismatch0
    );
read_mismatch_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => read_mismatch0,
      Q => read_mismatch,
      R => axi_awvalid0
    );
reads_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \read_burst_counter[6]_i_3_n_0\,
      I1 => m00_axi_rvalid,
      I2 => \^axi_rready_reg_0\,
      I3 => \read_index[4]_i_3_n_0\,
      I4 => reads_done,
      O => reads_done_i_1_n_0
    );
reads_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => reads_done_i_1_n_0,
      Q => reads_done,
      R => axi_awvalid0
    );
\write_burst_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_burst_counter_reg__0\(0),
      O => p_0_in(0)
    );
\write_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \write_burst_counter_reg__0\(0),
      I1 => \write_burst_counter_reg__0\(1),
      O => p_0_in(1)
    );
\write_burst_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \write_burst_counter_reg__0\(1),
      I1 => \write_burst_counter_reg__0\(0),
      I2 => \write_burst_counter_reg__0\(2),
      O => p_0_in(2)
    );
\write_burst_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \write_burst_counter_reg__0\(2),
      I1 => \write_burst_counter_reg__0\(0),
      I2 => \write_burst_counter_reg__0\(1),
      I3 => \write_burst_counter_reg__0\(3),
      O => p_0_in(3)
    );
\write_burst_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \write_burst_counter_reg__0\(3),
      I1 => \write_burst_counter_reg__0\(1),
      I2 => \write_burst_counter_reg__0\(0),
      I3 => \write_burst_counter_reg__0\(2),
      I4 => \write_burst_counter_reg__0\(4),
      O => p_0_in(4)
    );
\write_burst_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \write_burst_counter_reg__0\(4),
      I1 => \write_burst_counter_reg__0\(2),
      I2 => \write_burst_counter_reg__0\(0),
      I3 => \write_burst_counter_reg__0\(1),
      I4 => \write_burst_counter_reg__0\(3),
      I5 => \write_burst_counter_reg__0\(5),
      O => p_0_in(5)
    );
\write_burst_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => write_burst_counter_reg(6),
      I1 => \^m00_axi_wvalid\,
      I2 => m00_axi_wready,
      I3 => \^axi_wlast_reg_0\,
      O => write_burst_counter
    );
\write_burst_counter[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      O => p_0_in(6)
    );
\write_burst_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => write_burst_counter,
      D => p_0_in(0),
      Q => \write_burst_counter_reg__0\(0),
      R => axi_awvalid0
    );
\write_burst_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => write_burst_counter,
      D => p_0_in(1),
      Q => \write_burst_counter_reg__0\(1),
      R => axi_awvalid0
    );
\write_burst_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => write_burst_counter,
      D => p_0_in(2),
      Q => \write_burst_counter_reg__0\(2),
      R => axi_awvalid0
    );
\write_burst_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => write_burst_counter,
      D => p_0_in(3),
      Q => \write_burst_counter_reg__0\(3),
      R => axi_awvalid0
    );
\write_burst_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => write_burst_counter,
      D => p_0_in(4),
      Q => \write_burst_counter_reg__0\(4),
      R => axi_awvalid0
    );
\write_burst_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => write_burst_counter,
      D => p_0_in(5),
      Q => \write_burst_counter_reg__0\(5),
      R => axi_awvalid0
    );
\write_burst_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => write_burst_counter,
      D => p_0_in(6),
      Q => write_burst_counter_reg(6),
      R => axi_awvalid0
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001F"
    )
        port map (
      I0 => \write_index_reg_n_0_[0]\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => \^axi_wlast_reg_0\,
      O => write_index(0)
    );
\write_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => \^axi_wlast_reg_0\,
      I1 => state_write(0),
      I2 => \write_index_reg_n_0_[0]\,
      I3 => \write_index_reg_n_0_[1]\,
      O => write_index(1)
    );
\write_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111000"
    )
        port map (
      I0 => \^axi_wlast_reg_0\,
      I1 => state_write(0),
      I2 => \write_index_reg_n_0_[1]\,
      I3 => \write_index_reg_n_0_[0]\,
      I4 => \write_index_reg_n_0_[2]\,
      O => write_index(2)
    );
\write_index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \write_index_reg_n_0_[1]\,
      I1 => \write_index_reg_n_0_[0]\,
      I2 => \write_index_reg_n_0_[2]\,
      I3 => state_write(0),
      I4 => \FSM_sequential_state_write[1]_i_4_n_0\,
      I5 => \write_index_reg_n_0_[3]\,
      O => write_index(3)
    );
\write_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCC0000CECC0000"
    )
        port map (
      I0 => \^axi_wlast_reg_0\,
      I1 => axi_awaddr,
      I2 => state_write(0),
      I3 => state_write(1),
      I4 => m00_axi_wready,
      I5 => \write_index[4]_i_3_n_0\,
      O => \write_index[4]_i_1_n_0\
    );
\write_index[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \write_index_reg_n_0_[3]\,
      I1 => \write_index_reg_n_0_[1]\,
      I2 => \write_index_reg_n_0_[0]\,
      I3 => \write_index_reg_n_0_[2]\,
      I4 => \write_index_reg_n_0_[4]\,
      I5 => \write_index[4]_i_4_n_0\,
      O => write_index(4)
    );
\write_index[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \write_index_reg_n_0_[3]\,
      I1 => \write_index_reg_n_0_[1]\,
      I2 => \write_index_reg_n_0_[0]\,
      I3 => \write_index_reg_n_0_[2]\,
      I4 => \write_index_reg_n_0_[4]\,
      O => \write_index[4]_i_3_n_0\
    );
\write_index[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => m00_axi_wready,
      I1 => \^axi_wlast_reg_0\,
      I2 => state_write(0),
      O => \write_index[4]_i_4_n_0\
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \write_index[4]_i_1_n_0\,
      D => write_index(0),
      Q => \write_index_reg_n_0_[0]\,
      R => axi_awvalid0
    );
\write_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \write_index[4]_i_1_n_0\,
      D => write_index(1),
      Q => \write_index_reg_n_0_[1]\,
      R => axi_awvalid0
    );
\write_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \write_index[4]_i_1_n_0\,
      D => write_index(2),
      Q => \write_index_reg_n_0_[2]\,
      R => axi_awvalid0
    );
\write_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \write_index[4]_i_1_n_0\,
      D => write_index(3),
      Q => \write_index_reg_n_0_[3]\,
      R => axi_awvalid0
    );
\write_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => \write_index[4]_i_1_n_0\,
      D => write_index(4),
      Q => \write_index_reg_n_0_[4]\,
      R => axi_awvalid0
    );
writes_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => axi_awvalid_i_3_n_0,
      I1 => \^axi_bready_reg_0\,
      I2 => m00_axi_bvalid,
      I3 => writes_done,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => axi_awvalid0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_slave_lite_v2_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_slave_lite_v2_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_slave_lite_v2_S00_AXI is
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg[1]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg[2]_2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg[3]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_read__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state_write__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_2\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[0]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[31]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \_inferred__0/s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair15";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07070707FF0F0F0F"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => \state_read__0\(0)
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state_read(0),
      I1 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800F800F800F80"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => \state_read__0\(1)
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_read[1]_i_1_n_0\,
      D => \state_read__0\(0),
      Q => state_read(0),
      R => reset
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_read[1]_i_1_n_0\,
      D => \state_read__0\(1),
      Q => state_read(1),
      R => reset
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F7F0FF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => state_write(1),
      I4 => state_write(0),
      O => \state_write__0\(0)
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008F0"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => state_write(1),
      I3 => state_write(0),
      I4 => s00_axi_wvalid,
      O => \state_write__0\(1)
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_write[1]_i_1_n_0\,
      D => \state_write__0\(0),
      Q => state_write(0),
      R => reset
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_write[1]_i_1_n_0\,
      D => \state_write__0\(1),
      Q => state_write(1),
      R => reset
    );
\_inferred__0/s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(0),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(0)
    );
\_inferred__0/s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(0),
      I1 => \slv_reg[0]_0\(0),
      I2 => \slv_reg[3]_3\(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(0),
      O => \p_1_in__0\(0)
    );
\_inferred__0/s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(10),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(10)
    );
\_inferred__0/s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(10),
      I1 => \slv_reg[0]_0\(10),
      I2 => \slv_reg[3]_3\(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(10),
      O => \p_1_in__0\(10)
    );
\_inferred__0/s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(11),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(11)
    );
\_inferred__0/s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(11),
      I1 => \slv_reg[0]_0\(11),
      I2 => \slv_reg[3]_3\(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(11),
      O => \p_1_in__0\(11)
    );
\_inferred__0/s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(12),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(12)
    );
\_inferred__0/s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(12),
      I1 => \slv_reg[0]_0\(12),
      I2 => \slv_reg[3]_3\(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(12),
      O => \p_1_in__0\(12)
    );
\_inferred__0/s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(13),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(13)
    );
\_inferred__0/s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(13),
      I1 => \slv_reg[0]_0\(13),
      I2 => \slv_reg[3]_3\(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(13),
      O => \p_1_in__0\(13)
    );
\_inferred__0/s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(14),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(14)
    );
\_inferred__0/s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(14),
      I1 => \slv_reg[0]_0\(14),
      I2 => \slv_reg[3]_3\(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(14),
      O => \p_1_in__0\(14)
    );
\_inferred__0/s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(15),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(15)
    );
\_inferred__0/s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(15),
      I1 => \slv_reg[0]_0\(15),
      I2 => \slv_reg[3]_3\(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(15),
      O => \p_1_in__0\(15)
    );
\_inferred__0/s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(16),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(16)
    );
\_inferred__0/s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(16),
      I1 => \slv_reg[0]_0\(16),
      I2 => \slv_reg[3]_3\(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(16),
      O => \p_1_in__0\(16)
    );
\_inferred__0/s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(17),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(17)
    );
\_inferred__0/s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(17),
      I1 => \slv_reg[0]_0\(17),
      I2 => \slv_reg[3]_3\(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(17),
      O => \p_1_in__0\(17)
    );
\_inferred__0/s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(18),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(18)
    );
\_inferred__0/s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(18),
      I1 => \slv_reg[0]_0\(18),
      I2 => \slv_reg[3]_3\(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(18),
      O => \p_1_in__0\(18)
    );
\_inferred__0/s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(19),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(19)
    );
\_inferred__0/s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(19),
      I1 => \slv_reg[0]_0\(19),
      I2 => \slv_reg[3]_3\(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(19),
      O => \p_1_in__0\(19)
    );
\_inferred__0/s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(1),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(1)
    );
\_inferred__0/s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(1),
      I1 => \slv_reg[0]_0\(1),
      I2 => \slv_reg[3]_3\(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(1),
      O => \p_1_in__0\(1)
    );
\_inferred__0/s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(20),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(20)
    );
\_inferred__0/s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(20),
      I1 => \slv_reg[0]_0\(20),
      I2 => \slv_reg[3]_3\(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(20),
      O => \p_1_in__0\(20)
    );
\_inferred__0/s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(21),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(21)
    );
\_inferred__0/s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(21),
      I1 => \slv_reg[0]_0\(21),
      I2 => \slv_reg[3]_3\(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(21),
      O => \p_1_in__0\(21)
    );
\_inferred__0/s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(22),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(22)
    );
\_inferred__0/s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(22),
      I1 => \slv_reg[0]_0\(22),
      I2 => \slv_reg[3]_3\(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(22),
      O => \p_1_in__0\(22)
    );
\_inferred__0/s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(23),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(23)
    );
\_inferred__0/s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(23),
      I1 => \slv_reg[0]_0\(23),
      I2 => \slv_reg[3]_3\(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(23),
      O => \p_1_in__0\(23)
    );
\_inferred__0/s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(24),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(24)
    );
\_inferred__0/s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(24),
      I1 => \slv_reg[0]_0\(24),
      I2 => \slv_reg[3]_3\(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(24),
      O => \p_1_in__0\(24)
    );
\_inferred__0/s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(25),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(25)
    );
\_inferred__0/s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(25),
      I1 => \slv_reg[0]_0\(25),
      I2 => \slv_reg[3]_3\(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(25),
      O => \p_1_in__0\(25)
    );
\_inferred__0/s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(26),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(26)
    );
\_inferred__0/s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(26),
      I1 => \slv_reg[0]_0\(26),
      I2 => \slv_reg[3]_3\(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(26),
      O => \p_1_in__0\(26)
    );
\_inferred__0/s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(27),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(27)
    );
\_inferred__0/s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(27),
      I1 => \slv_reg[0]_0\(27),
      I2 => \slv_reg[3]_3\(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(27),
      O => \p_1_in__0\(27)
    );
\_inferred__0/s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(28),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(28)
    );
\_inferred__0/s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(28),
      I1 => \slv_reg[0]_0\(28),
      I2 => \slv_reg[3]_3\(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(28),
      O => \p_1_in__0\(28)
    );
\_inferred__0/s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(29),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(29)
    );
\_inferred__0/s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(29),
      I1 => \slv_reg[0]_0\(29),
      I2 => \slv_reg[3]_3\(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(29),
      O => \p_1_in__0\(29)
    );
\_inferred__0/s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(2),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(2)
    );
\_inferred__0/s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(2),
      I1 => \slv_reg[0]_0\(2),
      I2 => \slv_reg[3]_3\(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(2),
      O => \p_1_in__0\(2)
    );
\_inferred__0/s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(30),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(30)
    );
\_inferred__0/s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(30),
      I1 => \slv_reg[0]_0\(30),
      I2 => \slv_reg[3]_3\(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(30),
      O => \p_1_in__0\(30)
    );
\_inferred__0/s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(31),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(31)
    );
\_inferred__0/s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(31),
      I1 => \slv_reg[0]_0\(31),
      I2 => \slv_reg[3]_3\(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(31),
      O => \p_1_in__0\(31)
    );
\_inferred__0/s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(3),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(3)
    );
\_inferred__0/s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(3),
      I1 => \slv_reg[0]_0\(3),
      I2 => \slv_reg[3]_3\(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(3),
      O => \p_1_in__0\(3)
    );
\_inferred__0/s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(4),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(4)
    );
\_inferred__0/s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(4),
      I1 => \slv_reg[0]_0\(4),
      I2 => \slv_reg[3]_3\(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(4),
      O => \p_1_in__0\(4)
    );
\_inferred__0/s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(5),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(5)
    );
\_inferred__0/s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(5),
      I1 => \slv_reg[0]_0\(5),
      I2 => \slv_reg[3]_3\(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(5),
      O => \p_1_in__0\(5)
    );
\_inferred__0/s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(6),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(6)
    );
\_inferred__0/s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(6),
      I1 => \slv_reg[0]_0\(6),
      I2 => \slv_reg[3]_3\(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(6),
      O => \p_1_in__0\(6)
    );
\_inferred__0/s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(7),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(7)
    );
\_inferred__0/s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(7),
      I1 => \slv_reg[0]_0\(7),
      I2 => \slv_reg[3]_3\(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(7),
      O => \p_1_in__0\(7)
    );
\_inferred__0/s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(8),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(8)
    );
\_inferred__0/s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(8),
      I1 => \slv_reg[0]_0\(8),
      I2 => \slv_reg[3]_3\(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(8),
      O => \p_1_in__0\(8)
    );
\_inferred__0/s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \p_1_in__0\(9),
      I1 => axi_araddr(4),
      O => s00_axi_rdata(9)
    );
\_inferred__0/s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg[1]_1\(9),
      I1 => \slv_reg[0]_0\(9),
      I2 => \slv_reg[3]_3\(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \slv_reg[2]_2\(9),
      O => \p_1_in__0\(9)
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => state_read(0),
      I4 => state_read(1),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[4]_i_1_n_0\,
      D => s00_axi_araddr(0),
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[4]_i_1_n_0\,
      D => s00_axi_araddr(1),
      Q => axi_araddr(3),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_araddr[4]_i_1_n_0\,
      D => s00_axi_araddr(2),
      Q => axi_araddr(4),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => reset
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state_write(1),
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => state_write(0),
      O => axi_awaddr
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr,
      D => s00_axi_awaddr(0),
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => reset
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr,
      D => s00_axi_awaddr(1),
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => reset
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awaddr,
      D => s00_axi_awaddr(2),
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => reset
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => reset
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF4545"
    )
        port map (
      I0 => state_write(0),
      I1 => s00_axi_wvalid,
      I2 => state_write(1),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => reset
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF2AA22F2AAF2AA"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => s00_axi_wvalid,
      I3 => state_write(1),
      I4 => \axi_awready0__0\,
      I5 => state_write(0),
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => reset
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => reset
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => reset
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(1),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \slv_reg[0]_0\(0),
      R => reset
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg[0]_0\(10),
      R => reset
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg[0]_0\(11),
      R => reset
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg[0]_0\(12),
      R => reset
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg[0]_0\(13),
      R => reset
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg[0]_0\(14),
      R => reset
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg[0]_0\(15),
      R => reset
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg[0]_0\(16),
      R => reset
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg[0]_0\(17),
      R => reset
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg[0]_0\(18),
      R => reset
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg[0]_0\(19),
      R => reset
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \slv_reg[0]_0\(1),
      R => reset
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg[0]_0\(20),
      R => reset
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg[0]_0\(21),
      R => reset
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg[0]_0\(22),
      R => reset
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg[0]_0\(23),
      R => reset
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg[0]_0\(24),
      R => reset
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg[0]_0\(25),
      R => reset
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg[0]_0\(26),
      R => reset
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg[0]_0\(27),
      R => reset
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg[0]_0\(28),
      R => reset
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg[0]_0\(29),
      R => reset
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \slv_reg[0]_0\(2),
      R => reset
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg[0]_0\(30),
      R => reset
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg[0]_0\(31),
      R => reset
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \slv_reg[0]_0\(3),
      R => reset
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_reg[0]_0\(4),
      R => reset
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_reg[0]_0\(5),
      R => reset
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_reg[0]_0\(6),
      R => reset
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_reg[0]_0\(7),
      R => reset
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg[0]_0\(8),
      R => reset
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg[0]_0\(9),
      R => reset
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg[1]_1\(0),
      R => reset
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg[1]_1\(10),
      R => reset
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg[1]_1\(11),
      R => reset
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg[1]_1\(12),
      R => reset
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg[1]_1\(13),
      R => reset
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg[1]_1\(14),
      R => reset
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg[1]_1\(15),
      R => reset
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg[1]_1\(16),
      R => reset
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg[1]_1\(17),
      R => reset
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg[1]_1\(18),
      R => reset
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg[1]_1\(19),
      R => reset
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg[1]_1\(1),
      R => reset
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg[1]_1\(20),
      R => reset
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg[1]_1\(21),
      R => reset
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg[1]_1\(22),
      R => reset
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg[1]_1\(23),
      R => reset
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg[1]_1\(24),
      R => reset
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg[1]_1\(25),
      R => reset
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg[1]_1\(26),
      R => reset
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg[1]_1\(27),
      R => reset
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg[1]_1\(28),
      R => reset
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg[1]_1\(29),
      R => reset
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg[1]_1\(2),
      R => reset
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg[1]_1\(30),
      R => reset
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg[1]_1\(31),
      R => reset
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg[1]_1\(3),
      R => reset
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg[1]_1\(4),
      R => reset
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg[1]_1\(5),
      R => reset
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg[1]_1\(6),
      R => reset
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg[1]_1\(7),
      R => reset
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg[1]_1\(8),
      R => reset
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg[1]_1\(9),
      R => reset
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050300000003000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_wvalid,
      I3 => \axi_awaddr_reg_n_0_[3]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(1),
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg[2]_2\(0),
      R => reset
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg[2]_2\(10),
      R => reset
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg[2]_2\(11),
      R => reset
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg[2]_2\(12),
      R => reset
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg[2]_2\(13),
      R => reset
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg[2]_2\(14),
      R => reset
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg[2]_2\(15),
      R => reset
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg[2]_2\(16),
      R => reset
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg[2]_2\(17),
      R => reset
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg[2]_2\(18),
      R => reset
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg[2]_2\(19),
      R => reset
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg[2]_2\(1),
      R => reset
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg[2]_2\(20),
      R => reset
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg[2]_2\(21),
      R => reset
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg[2]_2\(22),
      R => reset
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg[2]_2\(23),
      R => reset
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg[2]_2\(24),
      R => reset
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg[2]_2\(25),
      R => reset
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg[2]_2\(26),
      R => reset
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg[2]_2\(27),
      R => reset
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg[2]_2\(28),
      R => reset
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg[2]_2\(29),
      R => reset
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg[2]_2\(2),
      R => reset
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg[2]_2\(30),
      R => reset
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg[2]_2\(31),
      R => reset
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg[2]_2\(3),
      R => reset
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg[2]_2\(4),
      R => reset
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg[2]_2\(5),
      R => reset
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg[2]_2\(6),
      R => reset
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg[2]_2\(7),
      R => reset
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg[2]_2\(8),
      R => reset
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg[2]_2\(9),
      R => reset
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg[3]_3\(0),
      R => reset
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg[3]_3\(10),
      R => reset
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg[3]_3\(11),
      R => reset
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg[3]_3\(12),
      R => reset
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg[3]_3\(13),
      R => reset
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg[3]_3\(14),
      R => reset
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg[3]_3\(15),
      R => reset
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg[3]_3\(16),
      R => reset
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg[3]_3\(17),
      R => reset
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg[3]_3\(18),
      R => reset
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg[3]_3\(19),
      R => reset
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg[3]_3\(1),
      R => reset
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg[3]_3\(20),
      R => reset
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg[3]_3\(21),
      R => reset
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg[3]_3\(22),
      R => reset
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg[3]_3\(23),
      R => reset
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg[3]_3\(24),
      R => reset
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg[3]_3\(25),
      R => reset
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg[3]_3\(26),
      R => reset
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg[3]_3\(27),
      R => reset
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg[3]_3\(28),
      R => reset
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg[3]_3\(29),
      R => reset
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg[3]_3\(2),
      R => reset
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg[3]_3\(30),
      R => reset
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg[3]_3\(31),
      R => reset
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg[3]_3\(3),
      R => reset
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg[3]_3\(4),
      R => reset
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg[3]_3\(5),
      R => reset
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg[3]_3\(6),
      R => reset
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg[3]_3\(7),
      R => reset
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg[3]_3\(8),
      R => reset
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg[3]_3\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro is
  port (
    axi_wlast_reg : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    axi_arvalid_reg : out STD_LOGIC;
    axi_rready_reg : out STD_LOGIC;
    axi_bready_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_init_axi_txn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro is
begin
re2_copro_master_full_v2_M00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_master_full_v2_M00_AXI
     port map (
      axi_arvalid_reg_0 => axi_arvalid_reg,
      axi_awvalid_reg_0 => m00_axi_awvalid,
      axi_bready_reg_0 => axi_bready_reg,
      axi_rready_reg_0 => axi_rready_reg,
      axi_wlast_reg_0 => axi_wlast_reg,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(25 downto 0) => m00_axi_araddr(25 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_awaddr(25 downto 0) => m00_axi_awaddr(25 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_bresp(0) => m00_axi_bresp(0),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_error => m00_axi_error,
      m00_axi_init_axi_txn => m00_axi_init_axi_txn,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rresp(0) => m00_axi_rresp(0),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wvalid => m00_axi_wvalid
    );
re2_copro_slave_lite_v2_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro_slave_lite_v2_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "re2_copro_re2_copro_0_1,re2_copro,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "re2_copro,Vivado 2024.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 6 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axi_aclk : signal is "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axi_aresetn : signal is "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m00_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m00_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  attribute X_INTERFACE_INFO of m00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m00_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m00_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of m00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 7, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN re2_copro_zynq_ultra_ps_e_0_1_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of m00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m00_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of m00_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m00_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  attribute X_INTERFACE_INFO of m00_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of m00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m00_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of m00_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m00_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER";
  attribute X_INTERFACE_INFO of m00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of m00_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of m00_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m00_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  attribute X_INTERFACE_INFO of m00_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of m00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m00_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of m00_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m00_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  attribute X_INTERFACE_INFO of m00_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  attribute X_INTERFACE_INFO of m00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m00_axi_buser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BUSER";
  attribute X_INTERFACE_INFO of m00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m00_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  attribute X_INTERFACE_INFO of m00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m00_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RUSER";
  attribute X_INTERFACE_INFO of m00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of m00_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WUSER";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  m00_axi_araddr(31 downto 6) <= \^m00_axi_araddr\(31 downto 6);
  m00_axi_araddr(5) <= \<const0>\;
  m00_axi_araddr(4) <= \<const0>\;
  m00_axi_araddr(3) <= \<const0>\;
  m00_axi_araddr(2) <= \<const0>\;
  m00_axi_araddr(1) <= \<const0>\;
  m00_axi_araddr(0) <= \<const0>\;
  m00_axi_arburst(1) <= \<const0>\;
  m00_axi_arburst(0) <= \<const1>\;
  m00_axi_arcache(3) <= \<const0>\;
  m00_axi_arcache(2) <= \<const0>\;
  m00_axi_arcache(1) <= \<const1>\;
  m00_axi_arcache(0) <= \<const0>\;
  m00_axi_arid(0) <= \<const0>\;
  m00_axi_arlen(7) <= \<const0>\;
  m00_axi_arlen(6) <= \<const0>\;
  m00_axi_arlen(5) <= \<const0>\;
  m00_axi_arlen(4) <= \<const0>\;
  m00_axi_arlen(3) <= \<const1>\;
  m00_axi_arlen(2) <= \<const1>\;
  m00_axi_arlen(1) <= \<const1>\;
  m00_axi_arlen(0) <= \<const1>\;
  m00_axi_arlock <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const0>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_arqos(3) <= \<const0>\;
  m00_axi_arqos(2) <= \<const0>\;
  m00_axi_arqos(1) <= \<const0>\;
  m00_axi_arqos(0) <= \<const0>\;
  m00_axi_arsize(2) <= \<const0>\;
  m00_axi_arsize(1) <= \<const1>\;
  m00_axi_arsize(0) <= \<const0>\;
  m00_axi_aruser(0) <= \<const1>\;
  m00_axi_awaddr(31 downto 6) <= \^m00_axi_awaddr\(31 downto 6);
  m00_axi_awaddr(5) <= \<const0>\;
  m00_axi_awaddr(4) <= \<const0>\;
  m00_axi_awaddr(3) <= \<const0>\;
  m00_axi_awaddr(2) <= \<const0>\;
  m00_axi_awaddr(1) <= \<const0>\;
  m00_axi_awaddr(0) <= \<const0>\;
  m00_axi_awburst(1) <= \<const0>\;
  m00_axi_awburst(0) <= \<const1>\;
  m00_axi_awcache(3) <= \<const0>\;
  m00_axi_awcache(2) <= \<const0>\;
  m00_axi_awcache(1) <= \<const1>\;
  m00_axi_awcache(0) <= \<const0>\;
  m00_axi_awid(0) <= \<const0>\;
  m00_axi_awlen(7) <= \<const0>\;
  m00_axi_awlen(6) <= \<const0>\;
  m00_axi_awlen(5) <= \<const0>\;
  m00_axi_awlen(4) <= \<const0>\;
  m00_axi_awlen(3) <= \<const1>\;
  m00_axi_awlen(2) <= \<const1>\;
  m00_axi_awlen(1) <= \<const1>\;
  m00_axi_awlen(0) <= \<const1>\;
  m00_axi_awlock <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const0>\;
  m00_axi_awprot(0) <= \<const0>\;
  m00_axi_awqos(3) <= \<const0>\;
  m00_axi_awqos(2) <= \<const0>\;
  m00_axi_awqos(1) <= \<const0>\;
  m00_axi_awqos(0) <= \<const0>\;
  m00_axi_awsize(2) <= \<const0>\;
  m00_axi_awsize(1) <= \<const1>\;
  m00_axi_awsize(0) <= \<const0>\;
  m00_axi_awuser(0) <= \<const1>\;
  m00_axi_wstrb(3) <= \<const1>\;
  m00_axi_wstrb(2) <= \<const1>\;
  m00_axi_wstrb(1) <= \<const1>\;
  m00_axi_wstrb(0) <= \<const1>\;
  m00_axi_wuser(0) <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_re2_copro
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_arvalid_reg => m00_axi_arvalid,
      axi_awready_reg => s00_axi_awready,
      axi_bready_reg => m00_axi_bready,
      axi_rready_reg => m00_axi_rready,
      axi_rvalid_reg => s00_axi_rvalid,
      axi_wlast_reg => m00_axi_wlast,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(25 downto 0) => \^m00_axi_araddr\(31 downto 6),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_awaddr(25 downto 0) => \^m00_axi_awaddr\(31 downto 6),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bresp(0) => m00_axi_bresp(1),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_error => m00_axi_error,
      m00_axi_init_axi_txn => m00_axi_init_axi_txn,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_rresp(0) => m00_axi_rresp(1),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wvalid => m00_axi_wvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
