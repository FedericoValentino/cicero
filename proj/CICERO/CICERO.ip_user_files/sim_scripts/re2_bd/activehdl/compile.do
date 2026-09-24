transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_21
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_21
vlib activehdl/xil_defaultlib
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_register_slice_v2_1_35
vlib activehdl/fifo_generator_v13_2_13
vlib activehdl/axi_data_fifo_v2_1_35
vlib activehdl/axi_crossbar_v2_1_37
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/xlconstant_v1_1_10
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_converter_v2_1_36
vlib activehdl/axi_clock_converter_v2_1_34
vlib activehdl/blk_mem_gen_v8_4_11
vlib activehdl/axi_dwidth_converter_v2_1_36

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 activehdl/axi_vip_v1_1_21
vmap zynq_ultra_ps_e_vip_v1_0_21 activehdl/zynq_ultra_ps_e_vip_v1_0_21
vmap xil_defaultlib activehdl/xil_defaultlib
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_35 activehdl/axi_register_slice_v2_1_35
vmap fifo_generator_v13_2_13 activehdl/fifo_generator_v13_2_13
vmap axi_data_fifo_v2_1_35 activehdl/axi_data_fifo_v2_1_35
vmap axi_crossbar_v2_1_37 activehdl/axi_crossbar_v2_1_37
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap xlconstant_v1_1_10 activehdl/xlconstant_v1_1_10
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_converter_v2_1_36 activehdl/axi_protocol_converter_v2_1_36
vmap axi_clock_converter_v2_1_34 activehdl/axi_clock_converter_v2_1_34
vmap blk_mem_gen_v8_4_11 activehdl/blk_mem_gen_v8_4_11
vmap axi_dwidth_converter_v2_1_36 activehdl/axi_dwidth_converter_v2_1_36

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_21  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_zynq_ultra_ps_e_0_1/sim/re2_bd_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ipshared/0588/src/AXI_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ipshared/0588/src/re2_copro_v2_slave_lite_v2_S00_AXI.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ipshared/0588/src/arbiter_2_fixed.sv" \
"../../../bd/re2_bd/ipshared/0588/src/arbiter_2_rr.sv" \
"../../../bd/re2_bd/ipshared/0588/src/arbiter_fixed.sv" \
"../../../bd/re2_bd/ipshared/0588/src/arbiter_rr_n.sv" \
"../../../bd/re2_bd/ipshared/0588/src/arbitration_logic_fixed.sv" \
"../../../bd/re2_bd/ipshared/0588/src/arbitration_logic_rr.sv" \
"../../../bd/re2_bd/ipshared/0588/src/bram.sv" \
"../../../bd/re2_bd/ipshared/0588/src/cache_block_directly_mapped_broadcast.sv" \
"../../../bd/re2_bd/ipshared/0588/src/channel_iface.sv" \
"../../../bd/re2_bd/ipshared/0588/src/channel_multi_cc.sv" \
"../../../bd/re2_bd/ipshared/0588/src/coprocessor_top.sv" \
"../../../bd/re2_bd/ipshared/0588/src/engine_and_station.sv" \
"../../../bd/re2_bd/ipshared/0588/src/engine_and_station_xy.sv" \
"../../../bd/re2_bd/ipshared/0588/src/engine_interfaced.sv" \
"../../../bd/re2_bd/ipshared/0588/src/fifo.sv" \
"../../../bd/re2_bd/ipshared/0588/src/memory_read_iface.sv" \
"../../../bd/re2_bd/ipshared/0588/src/regex_cpu_pipelined.sv" \
"../../../bd/re2_bd/ipshared/0588/src/switch.sv" \
"../../../bd/re2_bd/ipshared/0588/src/topology_mesh.sv" \
"../../../bd/re2_bd/ipshared/0588/src/topology_single.sv" \
"../../../bd/re2_bd/ipshared/0588/src/topology_token_ring.sv" \
"../../../bd/re2_bd/ipshared/0588/src/vectorial_engine.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ipshared/0588/src/re2_copro_v2.v" \
"../../../bd/re2_bd/ip/re2_bd_re2_copro_0_2/sim/re2_bd_re2_copro_0_2.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_13  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/dc46/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_13 -93  \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_13  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_35  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/4846/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_37  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a1a7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_ps8_0_axi_periph_upgraded_ipi_imp_xbar_0/sim/re2_bd_ps8_0_axi_periph_upgraded_ipi_imp_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/re2_bd/ip/re2_bd_rst_ps8_0_100M_1/sim/re2_bd_rst_ps8_0_100M_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/sim/bd_e000.v" \

vlog -work xlconstant_v1_1_10  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_0/sim/bd_e000_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_1/sim/bd_e000_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_2/sim/bd_e000_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_3/sim/bd_e000_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_4/sim/bd_e000_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_5/sim/bd_e000_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_6/sim/bd_e000_sarn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_7/sim/bd_e000_srn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_8/sim/bd_e000_sawn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_9/sim/bd_e000_swn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_10/sim/bd_e000_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_11/sim/bd_e000_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_12/sim/bd_e000_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/sim/re2_bd_axi_smc_1.sv" \

vlog -work axi_protocol_converter_v2_1_36  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_34  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/9a28/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_11  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_36  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/db4c/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7711/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a8e4/hdl/verilog" "+incdir+E:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l zynq_ultra_ps_e_vip_v1_0_21 -l xil_defaultlib -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/re2_bd/ip/re2_bd_ps8_0_axi_periph_imp_auto_ds_0/sim/re2_bd_ps8_0_axi_periph_imp_auto_ds_0.v" \
"../../../bd/re2_bd/ip/re2_bd_ps8_0_axi_periph_imp_auto_pc_0/sim/re2_bd_ps8_0_axi_periph_imp_auto_pc_0.v" \
"../../../bd/re2_bd/ip/re2_bd_ps8_0_axi_periph_imp_auto_ds_1/sim/re2_bd_ps8_0_axi_periph_imp_auto_ds_1.v" \
"../../../bd/re2_bd/ip/re2_bd_ps8_0_axi_periph_imp_auto_pc_1/sim/re2_bd_ps8_0_axi_periph_imp_auto_pc_1.v" \
"../../../bd/re2_bd/sim/re2_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

