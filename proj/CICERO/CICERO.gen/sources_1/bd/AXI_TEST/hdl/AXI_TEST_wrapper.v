//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Thu Sep 24 10:53:33 2026
//Host        : Feder-Desktop running 64-bit major release  (build 9200)
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
