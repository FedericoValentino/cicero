vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_vip_v1_1_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17

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

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/AXI_TEST/ip/AXI_TEST_axi_vip_0_0_1/sim/AXI_TEST_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/AXI_TEST/ip/AXI_TEST_axi_vip_0_0_1/sim/AXI_TEST_axi_vip_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/AXI_TEST/ipshared/af28/src/re2_copro_v2_slave_lite_v2_S00_AXI.v" \
"../../../bd/AXI_TEST/ipshared/af28/src/re2_copro_v2.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/AXI_TEST/ipshared/af28/src/AXI_package.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/AXI_top.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/arbiter_2_fixed.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/arbiter_2_rr.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/arbiter_fixed.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/arbiter_rr_n.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/arbitration_logic_fixed.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/arbitration_logic_rr.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/bram.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/cache_block_directly_mapped_broadcast.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/channel_iface.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/channel_multi_cc.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/coprocessor_package.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/coprocessor_top.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/engine_and_station.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/engine_and_station_xy.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/engine_interfaced.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/fifo.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/instruction_package.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/memory_read_iface.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/regex_cpu_pipelined.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/switch.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/topology_mesh.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/topology_single.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/topology_token_ring.sv" \
"../../../bd/AXI_TEST/ipshared/af28/src/vectorial_engine.sv" \
"../../../bd/AXI_TEST/ip/AXI_TEST_re2_copro_0_0/sim/AXI_TEST_re2_copro_0_0.sv" \
"../../../bd/AXI_TEST/ip/AXI_TEST_axi_vip_1_0_1/sim/AXI_TEST_axi_vip_1_0_pkg.sv" \
"../../../bd/AXI_TEST/ip/AXI_TEST_axi_vip_1_0_1/sim/AXI_TEST_axi_vip_1_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../CICERO.gen/sources_1/bd/AXI_TEST/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/AXI_TEST/sim/AXI_TEST.v" \

vlog -work xil_defaultlib \
"glbl.v"

