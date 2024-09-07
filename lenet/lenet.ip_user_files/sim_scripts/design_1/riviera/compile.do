vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_1
vlib riviera/axi_vip_v1_1_1
vlib riviera/processing_system7_vip_v1_0_3
vlib riviera/xbip_utils_v3_0_8
vlib riviera/axi_utils_v2_0_4
vlib riviera/xbip_pipe_v3_0_4
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_4
vlib riviera/xbip_dsp48_multadd_v3_0_4
vlib riviera/xbip_bram18k_v3_0_4
vlib riviera/mult_gen_v12_0_13
vlib riviera/floating_point_v7_1_5
vlib riviera/xlconstant_v1_1_3
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_15
vlib riviera/fifo_generator_v13_2_1
vlib riviera/axi_data_fifo_v2_1_14
vlib riviera/axi_crossbar_v2_1_16
vlib riviera/axi_protocol_converter_v2_1_15

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 riviera/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 riviera/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 riviera/processing_system7_vip_v1_0_3
vmap xbip_utils_v3_0_8 riviera/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 riviera/axi_utils_v2_0_4
vmap xbip_pipe_v3_0_4 riviera/xbip_pipe_v3_0_4
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 riviera/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 riviera/xbip_dsp48_multadd_v3_0_4
vmap xbip_bram18k_v3_0_4 riviera/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 riviera/mult_gen_v12_0_13
vmap floating_point_v7_1_5 riviera/floating_point_v7_1_5
vmap xlconstant_v1_1_3 riviera/xlconstant_v1_1_3
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_15 riviera/axi_register_slice_v2_1_15
vmap fifo_generator_v13_2_1 riviera/fifo_generator_v13_2_1
vmap axi_data_fifo_v2_1_14 riviera/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 riviera/axi_crossbar_v2_1_16
vmap axi_protocol_converter_v2_1_15 riviera/axi_protocol_converter_v2_1_15

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"D:/vivado/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/vivado/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/vivado/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xbip_utils_v3_0_8 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/4173/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/4575/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ee5e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/7b8d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_4 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/65ba/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/9eb4/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/257f/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_5 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/b20f/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_AXILiteS_s_axi.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_fadd_32ns_32bkb.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_fcmp_32ns_32dEe.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_fmul_32ns_32cud.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_gmem_m_axi.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_mac_muladd_1hbi.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_mul_mul_16nsfYi.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_mul_mul_16nsg8j.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/verilog/Conv_sdiv_19s_9nseOg.v" \

vcom -work xil_defaultlib -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/ip/Conv_ap_fadd_3_full_dsp_32.vhd" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/ip/Conv_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f43a/hdl/ip/Conv_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_Conv_0_0/sim/design_1_Conv_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_AXILiteS_s_axi.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_fadd_32ns_32bkb.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_fcmp_32ns_32eOg.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_fdiv_32ns_32cud.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_gmem_m_axi.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_mac_muladd_1hbi.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_mul_mul_16s_g8j.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_sitofp_32ns_dEe.v" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/verilog/Pool_udiv_16ns_8nfYi.v" \

vcom -work xil_defaultlib -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/ip/Pool_ap_fadd_3_full_dsp_32.vhd" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/ip/Pool_ap_fcmp_0_no_dsp_32.vhd" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/ip/Pool_ap_fdiv_14_no_dsp_32.vhd" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff40/hdl/ip/Pool_ap_sitofp_4_no_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_Pool_0_0/sim/design_1_Pool_0_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/sim/bd_6f02_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_19/sim/bd_6f02_s01a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_25/sim/bd_6f02_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/258c/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_31/sim/bd_6f02_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_26/sim/bd_6f02_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_27/sim/bd_6f02_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_28/sim/bd_6f02_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_29/sim/bd_6f02_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_30/sim/bd_6f02_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_20/sim/bd_6f02_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_21/sim/bd_6f02_srn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_22/sim/bd_6f02_sawn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_23/sim/bd_6f02_swn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_24/sim/bd_6f02_sbn_1.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_16/sim/bd_6f02_s01mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_17/sim/bd_6f02_s01tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_18/sim/bd_6f02_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/sim/bd_6f02_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_12/sim/bd_6f02_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_13/sim/bd_6f02_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_14/sim/bd_6f02_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_15/sim/bd_6f02_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/sim/bd_6f02_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/sim/bd_6f02_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/sim/bd_6f02_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_2/sim/bd_6f02_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_3/sim/bd_6f02_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_4/sim/bd_6f02_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/sim/bd_6f02_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/sim/bd_6f02_bsw_0.sv" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_0/sim/bd_6f02_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/sim/bd_6f02_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/sim/bd_6f02.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1/sim/design_1_axi_smc_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_1/sim/design_1_rst_ps7_0_50M_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -93 \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_14  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_15  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+../../../../lenet.srcs/sources_1/bd/design_1/ipshared/e2dd/hdl/verilog" "+incdir+D:/vivado/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

