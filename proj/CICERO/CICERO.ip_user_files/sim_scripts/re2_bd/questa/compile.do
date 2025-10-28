vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_17
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/axi_data_fifo_v2_1_30
vlib questa_lib/msim/axi_crossbar_v2_1_32
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_converter_v2_1_31
vlib questa_lib/msim/axi_clock_converter_v2_1_30
vlib questa_lib/msim/blk_mem_gen_v8_4_8
vlib questa_lib/msim/axi_dwidth_converter_v2_1_31

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 questa_lib/msim/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 questa_lib/msim/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 questa_lib/msim/axi_crossbar_v2_1_32
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_converter_v2_1_31 questa_lib/msim/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 questa_lib/msim/axi_clock_converter_v2_1_30
vmap blk_mem_gen_v8_4_8 questa_lib/msim/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_31 questa_lib/msim/axi_dwidth_converter_v2_1_31

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_zynq_ultra_ps_e_0_1/sim/re2_bd_zynq_ultra_ps_e_0_1_vip_wrapper.v" \
"../../../bd/re2_bd/ipshared/af28/src/re2_copro_v2_slave_lite_v2_S00_AXI.v" \
"../../../bd/re2_bd/ipshared/af28/src/re2_copro_v2.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ipshared/af28/src/AXI_package.sv" \
"../../../bd/re2_bd/ipshared/af28/src/AXI_top.sv" \
"../../../bd/re2_bd/ipshared/af28/src/arbiter_2_fixed.sv" \
"../../../bd/re2_bd/ipshared/af28/src/arbiter_2_rr.sv" \
"../../../bd/re2_bd/ipshared/af28/src/arbiter_fixed.sv" \
"../../../bd/re2_bd/ipshared/af28/src/arbiter_rr_n.sv" \
"../../../bd/re2_bd/ipshared/af28/src/arbitration_logic_fixed.sv" \
"../../../bd/re2_bd/ipshared/af28/src/arbitration_logic_rr.sv" \
"../../../bd/re2_bd/ipshared/af28/src/bram.sv" \
"../../../bd/re2_bd/ipshared/af28/src/cache_block_directly_mapped_broadcast.sv" \
"../../../bd/re2_bd/ipshared/af28/src/channel_iface.sv" \
"../../../bd/re2_bd/ipshared/af28/src/channel_multi_cc.sv" \
"../../../bd/re2_bd/ipshared/af28/src/coprocessor_package.sv" \
"../../../bd/re2_bd/ipshared/af28/src/coprocessor_top.sv" \
"../../../bd/re2_bd/ipshared/af28/src/engine_and_station.sv" \
"../../../bd/re2_bd/ipshared/af28/src/engine_and_station_xy.sv" \
"../../../bd/re2_bd/ipshared/af28/src/engine_interfaced.sv" \
"../../../bd/re2_bd/ipshared/af28/src/fifo.sv" \
"../../../bd/re2_bd/ipshared/af28/src/instruction_package.sv" \
"../../../bd/re2_bd/ipshared/af28/src/memory_read_iface.sv" \
"../../../bd/re2_bd/ipshared/af28/src/regex_cpu_pipelined.sv" \
"../../../bd/re2_bd/ipshared/af28/src/switch.sv" \
"../../../bd/re2_bd/ipshared/af28/src/topology_mesh.sv" \
"../../../bd/re2_bd/ipshared/af28/src/topology_single.sv" \
"../../../bd/re2_bd/ipshared/af28/src/topology_token_ring.sv" \
"../../../bd/re2_bd/ipshared/af28/src/vectorial_engine.sv" \
"../../../bd/re2_bd/ip/re2_bd_re2_copro_0_2/sim/re2_bd_re2_copro_0_2.sv" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -64 -93  \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_xbar_1/sim/re2_bd_xbar_1.v" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -64 -93  \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/re2_bd/ip/re2_bd_rst_ps8_0_100M_1/sim/re2_bd_rst_ps8_0_100M_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/sim/bd_e000.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_0/sim/bd_e000_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_1/sim/bd_e000_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_2/sim/bd_e000_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_3/sim/bd_e000_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_4/sim/bd_e000_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_5/sim/bd_e000_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_6/sim/bd_e000_sarn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_7/sim/bd_e000_srn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_8/sim/bd_e000_sawn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_9/sim/bd_e000_swn_0.sv" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_10/sim/bd_e000_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_11/sim/bd_e000_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/bd_0/ip/ip_12/sim/bd_e000_m00e_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_axi_smc_1/sim/re2_bd_axi_smc_1.v" \

vlog -work axi_protocol_converter_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/ec67/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/a317/hdl" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../CICERO.gen/sources_1/bd/re2_bd/ipshared/c783/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/re2_bd/ip/re2_bd_auto_ds_0/sim/re2_bd_auto_ds_0.v" \
"../../../bd/re2_bd/ip/re2_bd_auto_pc_0/sim/re2_bd_auto_pc_0.v" \
"../../../bd/re2_bd/ip/re2_bd_auto_ds_1/sim/re2_bd_auto_ds_1.v" \
"../../../bd/re2_bd/ip/re2_bd_auto_pc_1/sim/re2_bd_auto_pc_1.v" \
"../../../bd/re2_bd/sim/re2_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

