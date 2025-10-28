//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Thu Aug 28 10:47:24 2025
//Host        : feder34-Desktop running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target AXI_TEST_wrapper.bd
//Design      : AXI_TEST_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_TEST_wrapper
   (clk,
    reset);
  input clk;
  input reset;

  wire clk;
  wire reset;

  AXI_TEST AXI_TEST_i
       (.clk(clk),
        .reset(reset));
endmodule
