// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv_HH_
#define _Conv_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Conv_fadd_32ns_32bkb.h"
#include "Conv_fmul_32ns_32cud.h"
#include "Conv_fcmp_32ns_32dEe.h"
#include "Conv_sdiv_19s_9nseOg.h"
#include "Conv_mul_mul_16nsfYi.h"
#include "Conv_mul_mul_16nsg8j.h"
#include "Conv_mac_muladd_1hbi.h"
#include "Conv_AXILiteS_s_axi.h"
#include "Conv_gmem_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_GMEM_ADDR_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_ID_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_DATA_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_BUSER_WIDTH = 1,
         unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 7,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct Conv : public sc_module {
    // Port declarations 65
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > m_axi_gmem_AWVALID;
    sc_in< sc_logic > m_axi_gmem_AWREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_ADDR_WIDTH> > m_axi_gmem_AWADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_AWID;
    sc_out< sc_lv<8> > m_axi_gmem_AWLEN;
    sc_out< sc_lv<3> > m_axi_gmem_AWSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_AWBURST;
    sc_out< sc_lv<2> > m_axi_gmem_AWLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_AWCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_AWPROT;
    sc_out< sc_lv<4> > m_axi_gmem_AWQOS;
    sc_out< sc_lv<4> > m_axi_gmem_AWREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_AWUSER_WIDTH> > m_axi_gmem_AWUSER;
    sc_out< sc_logic > m_axi_gmem_WVALID;
    sc_in< sc_logic > m_axi_gmem_WREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_DATA_WIDTH> > m_axi_gmem_WDATA;
    sc_out< sc_uint<C_M_AXI_GMEM_DATA_WIDTH/8> > m_axi_gmem_WSTRB;
    sc_out< sc_logic > m_axi_gmem_WLAST;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_WID;
    sc_out< sc_uint<C_M_AXI_GMEM_WUSER_WIDTH> > m_axi_gmem_WUSER;
    sc_out< sc_logic > m_axi_gmem_ARVALID;
    sc_in< sc_logic > m_axi_gmem_ARREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_ADDR_WIDTH> > m_axi_gmem_ARADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_ARID;
    sc_out< sc_lv<8> > m_axi_gmem_ARLEN;
    sc_out< sc_lv<3> > m_axi_gmem_ARSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_ARBURST;
    sc_out< sc_lv<2> > m_axi_gmem_ARLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_ARCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_ARPROT;
    sc_out< sc_lv<4> > m_axi_gmem_ARQOS;
    sc_out< sc_lv<4> > m_axi_gmem_ARREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_ARUSER_WIDTH> > m_axi_gmem_ARUSER;
    sc_in< sc_logic > m_axi_gmem_RVALID;
    sc_out< sc_logic > m_axi_gmem_RREADY;
    sc_in< sc_uint<C_M_AXI_GMEM_DATA_WIDTH> > m_axi_gmem_RDATA;
    sc_in< sc_logic > m_axi_gmem_RLAST;
    sc_in< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_RID;
    sc_in< sc_uint<C_M_AXI_GMEM_RUSER_WIDTH> > m_axi_gmem_RUSER;
    sc_in< sc_lv<2> > m_axi_gmem_RRESP;
    sc_in< sc_logic > m_axi_gmem_BVALID;
    sc_out< sc_logic > m_axi_gmem_BREADY;
    sc_in< sc_lv<2> > m_axi_gmem_BRESP;
    sc_in< sc_uint<C_M_AXI_GMEM_ID_WIDTH> > m_axi_gmem_BID;
    sc_in< sc_uint<C_M_AXI_GMEM_BUSER_WIDTH> > m_axi_gmem_BUSER;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_logic > ap_var_for_const6;
    sc_signal< sc_lv<32> > ap_var_for_const8;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<1> > ap_var_for_const1;
    sc_signal< sc_lv<3> > ap_var_for_const3;
    sc_signal< sc_lv<2> > ap_var_for_const4;
    sc_signal< sc_lv<4> > ap_var_for_const5;
    sc_signal< sc_lv<4> > ap_var_for_const7;
    sc_signal< sc_lv<5> > ap_var_for_const9;


    // Module declarations
    Conv(sc_module_name name);
    SC_HAS_PROCESS(Conv);

    ~Conv();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Conv_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* Conv_AXILiteS_s_axi_U;
    Conv_gmem_m_axi<32,32,5,16,16,16,16,C_M_AXI_GMEM_ID_WIDTH,C_M_AXI_GMEM_ADDR_WIDTH,C_M_AXI_GMEM_DATA_WIDTH,C_M_AXI_GMEM_AWUSER_WIDTH,C_M_AXI_GMEM_ARUSER_WIDTH,C_M_AXI_GMEM_WUSER_WIDTH,C_M_AXI_GMEM_RUSER_WIDTH,C_M_AXI_GMEM_BUSER_WIDTH,C_M_AXI_GMEM_USER_VALUE,C_M_AXI_GMEM_PROT_VALUE,C_M_AXI_GMEM_CACHE_VALUE>* Conv_gmem_m_axi_U;
    Conv_fadd_32ns_32bkb<1,5,32,32,32>* Conv_fadd_32ns_32bkb_U1;
    Conv_fmul_32ns_32cud<1,4,32,32,32>* Conv_fmul_32ns_32cud_U2;
    Conv_fcmp_32ns_32dEe<1,1,32,32,1>* Conv_fcmp_32ns_32dEe_U3;
    Conv_sdiv_19s_9nseOg<1,23,19,9,16>* Conv_sdiv_19s_9nseOg_U4;
    Conv_sdiv_19s_9nseOg<1,23,19,9,16>* Conv_sdiv_19s_9nseOg_U5;
    Conv_mul_mul_16nsfYi<1,1,16,16,32>* Conv_mul_mul_16nsfYi_U6;
    Conv_mul_mul_16nsg8j<1,1,16,16,32>* Conv_mul_mul_16nsg8j_U7;
    Conv_mul_mul_16nsfYi<1,1,16,16,32>* Conv_mul_mul_16nsfYi_U8;
    Conv_mac_muladd_1hbi<1,1,16,16,48,48>* Conv_mac_muladd_1hbi_U9;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<71> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<16> > CHin_V;
    sc_signal< sc_lv<16> > Hin_V;
    sc_signal< sc_lv<16> > Win_V;
    sc_signal< sc_lv<16> > CHout_V;
    sc_signal< sc_lv<8> > Kx_V;
    sc_signal< sc_lv<8> > Ky_V;
    sc_signal< sc_lv<8> > Sx_V;
    sc_signal< sc_lv<8> > Sy_V;
    sc_signal< sc_lv<1> > mode_V;
    sc_signal< sc_lv<1> > relu_en_V;
    sc_signal< sc_lv<32> > feature_in;
    sc_signal< sc_lv<32> > W;
    sc_signal< sc_lv<32> > bias;
    sc_signal< sc_lv<32> > feature_out;
    sc_signal< sc_logic > gmem_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<1> > exitcond3_fu_910_p2;
    sc_signal< sc_logic > gmem_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state59;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_logic > gmem_blk_n_AW;
    sc_signal< sc_logic > ap_CS_fsm_state65;
    sc_signal< sc_logic > gmem_blk_n_W;
    sc_signal< sc_logic > ap_CS_fsm_state66;
    sc_signal< sc_logic > gmem_blk_n_B;
    sc_signal< sc_logic > ap_CS_fsm_state71;
    sc_signal< sc_logic > gmem_AWVALID;
    sc_signal< sc_logic > gmem_AWREADY;
    sc_signal< sc_logic > gmem_WVALID;
    sc_signal< sc_logic > gmem_WREADY;
    sc_signal< sc_logic > gmem_ARVALID;
    sc_signal< sc_logic > gmem_ARREADY;
    sc_signal< sc_lv<32> > gmem_ARADDR;
    sc_signal< sc_logic > gmem_RVALID;
    sc_signal< sc_logic > gmem_RREADY;
    sc_signal< sc_lv<32> > gmem_RDATA;
    sc_signal< sc_logic > gmem_RLAST;
    sc_signal< sc_lv<1> > gmem_RID;
    sc_signal< sc_lv<1> > gmem_RUSER;
    sc_signal< sc_lv<2> > gmem_RRESP;
    sc_signal< sc_logic > gmem_BVALID;
    sc_signal< sc_logic > gmem_BREADY;
    sc_signal< sc_lv<2> > gmem_BRESP;
    sc_signal< sc_lv<1> > gmem_BID;
    sc_signal< sc_lv<1> > gmem_BUSER;
    sc_signal< sc_lv<1> > relu_en_V_read_reg_1211;
    sc_signal< sc_lv<8> > Sy_V_read_reg_1216;
    sc_signal< sc_lv<8> > Sx_V_read_reg_1222;
    sc_signal< sc_lv<8> > Ky_V_read_reg_1228;
    sc_signal< sc_lv<8> > Kx_V_read_reg_1234;
    sc_signal< sc_lv<16> > CHout_V_read_reg_1241;
    sc_signal< sc_lv<16> > Win_V_read_reg_1248;
    sc_signal< sc_lv<16> > Hin_V_read_reg_1254;
    sc_signal< sc_lv<16> > CHin_V_read_reg_1259;
    sc_signal< sc_lv<30> > tmp_1_reg_1266;
    sc_signal< sc_lv<30> > tmp_2_reg_1271;
    sc_signal< sc_lv<30> > tmp_4_reg_1276;
    sc_signal< sc_lv<30> > tmp_5_reg_1281;
    sc_signal< sc_lv<8> > p_1_fu_638_p3;
    sc_signal< sc_lv<8> > p_1_reg_1286;
    sc_signal< sc_lv<8> > p_2_fu_646_p3;
    sc_signal< sc_lv<8> > p_2_reg_1292;
    sc_signal< sc_lv<17> > lhs_V_2_cast_fu_665_p1;
    sc_signal< sc_lv<17> > lhs_V_2_cast_reg_1298;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<17> > lhs_V_4_cast_fu_711_p1;
    sc_signal< sc_lv<17> > lhs_V_4_cast_reg_1313;
    sc_signal< sc_lv<49> > tmp_2_cast1_fu_746_p1;
    sc_signal< sc_lv<49> > tmp_2_cast1_reg_1328;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<31> > tmp_8_cast_fu_749_p1;
    sc_signal< sc_lv<31> > tmp_8_cast_reg_1333;
    sc_signal< sc_lv<49> > tmp_13_cast_fu_752_p1;
    sc_signal< sc_lv<49> > tmp_13_cast_reg_1338;
    sc_signal< sc_lv<48> > tmp_16_cast_fu_755_p1;
    sc_signal< sc_lv<48> > tmp_16_cast_reg_1343;
    sc_signal< sc_lv<16> > Wout_V_fu_762_p2;
    sc_signal< sc_lv<16> > Wout_V_reg_1348;
    sc_signal< sc_lv<16> > tmp_7_fu_772_p2;
    sc_signal< sc_lv<16> > tmp_7_reg_1353;
    sc_signal< sc_lv<16> > tmp_9_fu_778_p1;
    sc_signal< sc_lv<16> > tmp_9_reg_1358;
    sc_signal< sc_lv<16> > tmp_s_fu_781_p1;
    sc_signal< sc_lv<16> > tmp_s_reg_1363;
    sc_signal< sc_lv<16> > tmp_10_fu_784_p1;
    sc_signal< sc_lv<16> > tmp_10_reg_1368;
    sc_signal< sc_lv<16> > tmp_11_fu_787_p1;
    sc_signal< sc_lv<16> > tmp_11_reg_1373;
    sc_signal< sc_lv<32> > rhs_V_1_fu_790_p1;
    sc_signal< sc_lv<32> > rhs_V_1_reg_1378;
    sc_signal< sc_lv<48> > rhs_V_2_fu_793_p1;
    sc_signal< sc_lv<48> > rhs_V_2_reg_1385;
    sc_signal< sc_lv<16> > rhs_V_1_cast_fu_796_p1;
    sc_signal< sc_lv<16> > rhs_V_1_cast_reg_1390;
    sc_signal< sc_lv<48> > rhs_V_8_cast_fu_799_p1;
    sc_signal< sc_lv<48> > rhs_V_8_cast_reg_1395;
    sc_signal< sc_lv<24> > rhs_V_10_cast_fu_802_p1;
    sc_signal< sc_lv<24> > rhs_V_10_cast_reg_1401;
    sc_signal< sc_lv<32> > rhs_V_9_cast_fu_805_p1;
    sc_signal< sc_lv<32> > rhs_V_9_cast_reg_1406;
    sc_signal< sc_lv<32> > rhs_V_7_cast_fu_808_p1;
    sc_signal< sc_lv<32> > rhs_V_7_cast_reg_1412;
    sc_signal< sc_lv<16> > cout_fu_817_p2;
    sc_signal< sc_lv<16> > cout_reg_1420;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<32> > tmp_17_cast_fu_827_p1;
    sc_signal< sc_lv<32> > tmp_17_cast_reg_1425;
    sc_signal< sc_lv<1> > exitcond1_fu_812_p2;
    sc_signal< sc_lv<32> > gmem_addr_reg_1431;
    sc_signal< sc_lv<16> > next_mul1_fu_846_p2;
    sc_signal< sc_lv<16> > next_mul1_reg_1437;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<16> > i_fu_860_p2;
    sc_signal< sc_lv<16> > i_reg_1445;
    sc_signal< sc_lv<16> > tmp_20_fu_866_p2;
    sc_signal< sc_lv<16> > tmp_20_reg_1450;
    sc_signal< sc_lv<1> > exitcond2_fu_855_p2;
    sc_signal< sc_lv<32> > r_V_5_fu_1190_p2;
    sc_signal< sc_lv<32> > r_V_5_reg_1455;
    sc_signal< sc_lv<48> > r_V_1_fu_874_p2;
    sc_signal< sc_lv<48> > r_V_1_reg_1460;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<16> > next_mul2_fu_879_p2;
    sc_signal< sc_lv<16> > next_mul2_reg_1465;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<32> > next_mul3_fu_884_p2;
    sc_signal< sc_lv<32> > next_mul3_reg_1470;
    sc_signal< sc_lv<16> > j_fu_894_p2;
    sc_signal< sc_lv<16> > j_reg_1478;
    sc_signal< sc_lv<16> > tmp_22_fu_900_p2;
    sc_signal< sc_lv<16> > tmp_22_reg_1483;
    sc_signal< sc_lv<1> > exitcond_fu_889_p2;
    sc_signal< sc_lv<16> > next_mul4_fu_905_p2;
    sc_signal< sc_lv<16> > next_mul4_reg_1488;
    sc_signal< sc_logic > ap_sig_ioackin_gmem_ARREADY;
    sc_signal< bool > ap_block_state29_io;
    sc_signal< sc_lv<8> > ii_fu_915_p2;
    sc_signal< sc_lv<8> > ii_reg_1496;
    sc_signal< sc_lv<16> > h_V_fu_925_p2;
    sc_signal< sc_lv<16> > h_V_reg_1501;
    sc_signal< sc_lv<32> > r_V_14_fu_1195_p2;
    sc_signal< sc_lv<32> > r_V_14_reg_1506;
    sc_signal< sc_lv<1> > slt_fu_938_p2;
    sc_signal< sc_lv<1> > slt_reg_1511;
    sc_signal< sc_lv<48> > tmp_26_fu_952_p2;
    sc_signal< sc_lv<48> > tmp_26_reg_1516;
    sc_signal< sc_lv<48> > r_V_10_fu_960_p2;
    sc_signal< sc_lv<48> > r_V_10_reg_1521;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_lv<32> > r_V_11_fu_1200_p2;
    sc_signal< sc_lv<32> > r_V_11_reg_1526;
    sc_signal< sc_lv<1> > rev_fu_969_p2;
    sc_signal< sc_lv<1> > rev_reg_1531;
    sc_signal< sc_lv<24> > next_mul5_fu_974_p2;
    sc_signal< sc_lv<24> > next_mul5_reg_1536;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<8> > jj_fu_984_p2;
    sc_signal< sc_lv<8> > jj_reg_1544;
    sc_signal< sc_lv<48> > grp_fu_1205_p3;
    sc_signal< sc_lv<48> > r_V_13_reg_1555;
    sc_signal< sc_lv<1> > exitcond4_fu_979_p2;
    sc_signal< sc_lv<1> > brmerge_fu_1012_p2;
    sc_signal< sc_lv<1> > tmp_32_fu_1025_p2;
    sc_signal< sc_lv<32> > tmp_fu_1034_p2;
    sc_signal< sc_lv<32> > tmp_reg_1560;
    sc_signal< sc_lv<48> > tmp1_fu_1042_p2;
    sc_signal< sc_lv<48> > tmp1_reg_1565;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<16> > cin_fu_1052_p2;
    sc_signal< sc_lv<16> > cin_reg_1573;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<32> > gmem_addr_2_reg_1578;
    sc_signal< sc_lv<1> > exitcond5_fu_1047_p2;
    sc_signal< sc_lv<32> > next_mul_fu_1082_p2;
    sc_signal< sc_lv<32> > next_mul_reg_1584;
    sc_signal< sc_lv<48> > tmp_33_fu_1096_p2;
    sc_signal< sc_lv<48> > tmp_33_reg_1589;
    sc_signal< sc_lv<32> > gmem_addr_3_reg_1594;
    sc_signal< sc_lv<32> > gmem_addr_2_read_reg_1600;
    sc_signal< sc_lv<32> > gmem_addr_3_read_reg_1605;
    sc_signal< sc_lv<32> > grp_fu_473_p2;
    sc_signal< sc_lv<32> > tp_reg_1610;
    sc_signal< sc_logic > ap_CS_fsm_state46;
    sc_signal< sc_lv<32> > grp_fu_467_p2;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_lv<32> > gmem_addr_1_reg_1620;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_lv<32> > gmem_addr_read_reg_1626;
    sc_signal< sc_lv<32> > sum_3_reg_1631;
    sc_signal< sc_logic > ap_CS_fsm_state64;
    sc_signal< sc_lv<32> > p_s_fu_1183_p3;
    sc_signal< sc_lv<32> > p_s_reg_1638;
    sc_signal< sc_logic > ap_sig_ioackin_gmem_AWREADY;
    sc_signal< sc_lv<16> > i_op_assign_s_reg_282;
    sc_signal< sc_lv<16> > i_op_assign_1_reg_293;
    sc_signal< sc_lv<16> > phi_mul1_reg_304;
    sc_signal< sc_lv<16> > i_op_assign_2_reg_315;
    sc_signal< sc_lv<32> > r_V_9_reg_326;
    sc_signal< sc_lv<16> > phi_mul3_reg_338;
    sc_signal< sc_lv<32> > sum_reg_349;
    sc_signal< sc_lv<8> > i_op_assign_3_reg_361;
    sc_signal< sc_lv<16> > r_V_16_reg_372;
    sc_signal< sc_lv<32> > sum_1_reg_384;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_lv<8> > i_op_assign_5_reg_396;
    sc_signal< sc_lv<24> > r_V_17_reg_407;
    sc_signal< sc_lv<32> > sum_2_reg_418;
    sc_signal< sc_lv<16> > i_op_assign_reg_429;
    sc_signal< sc_lv<32> > r_V_18_reg_440;
    sc_signal< sc_lv<32> > sum_1_be_reg_451;
    sc_signal< sc_lv<64> > bias6_sum_cast_fu_836_p1;
    sc_signal< sc_lv<64> > feature_in2_sum9_cas_fu_1072_p1;
    sc_signal< sc_lv<64> > W4_sum_cast_fu_1109_p1;
    sc_signal< sc_lv<64> > feature_out8_sum_cas_fu_1127_p1;
    sc_signal< sc_logic > ap_reg_ioackin_gmem_ARREADY;
    sc_signal< sc_logic > ap_reg_ioackin_gmem_AWREADY;
    sc_signal< sc_logic > ap_reg_ioackin_gmem_WREADY;
    sc_signal< sc_logic > ap_sig_ioackin_gmem_WREADY;
    sc_signal< sc_lv<32> > grp_fu_467_p0;
    sc_signal< sc_lv<32> > grp_fu_467_p1;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_logic > ap_CS_fsm_state60;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<9> > tmp_2_cast_fu_522_p1;
    sc_signal< sc_lv<9> > r_V_tr_fu_526_p2;
    sc_signal< sc_lv<9> > p_neg4_fu_540_p2;
    sc_signal< sc_lv<8> > tmp_3_fu_546_p4;
    sc_signal< sc_lv<1> > tmp_8_fu_532_p3;
    sc_signal< sc_lv<8> > tmp_6_fu_566_p2;
    sc_signal< sc_lv<8> > tmp_12_fu_556_p4;
    sc_signal< sc_lv<9> > tmp_37_cast_fu_580_p1;
    sc_signal< sc_lv<9> > r_V_1_tr_fu_584_p2;
    sc_signal< sc_lv<9> > p_neg_fu_598_p2;
    sc_signal< sc_lv<8> > tmp_14_fu_604_p4;
    sc_signal< sc_lv<1> > tmp_13_fu_590_p3;
    sc_signal< sc_lv<8> > tmp_16_fu_624_p2;
    sc_signal< sc_lv<8> > tmp_15_fu_614_p4;
    sc_signal< sc_lv<8> > pad_x_V_fu_572_p3;
    sc_signal< sc_lv<8> > pad_y_V_fu_630_p3;
    sc_signal< sc_lv<9> > r_V_2_fu_654_p3;
    sc_signal< sc_lv<17> > r_V_2_cast_fu_661_p1;
    sc_signal< sc_lv<17> > r_V_3_fu_668_p2;
    sc_signal< sc_lv<18> > r_V_3_cast_fu_674_p1;
    sc_signal< sc_lv<18> > rhs_V_2_cast_fu_678_p1;
    sc_signal< sc_lv<18> > r_V_4_fu_681_p2;
    sc_signal< sc_lv<19> > grp_fu_694_p0;
    sc_signal< sc_lv<9> > grp_fu_694_p1;
    sc_signal< sc_lv<9> > r_V_6_fu_700_p3;
    sc_signal< sc_lv<17> > r_V_6_cast_fu_707_p1;
    sc_signal< sc_lv<17> > r_V_7_fu_714_p2;
    sc_signal< sc_lv<18> > r_V_7_cast_fu_720_p1;
    sc_signal< sc_lv<18> > rhs_V_5_cast_fu_724_p1;
    sc_signal< sc_lv<18> > r_V_8_fu_727_p2;
    sc_signal< sc_lv<19> > grp_fu_740_p0;
    sc_signal< sc_lv<9> > grp_fu_740_p1;
    sc_signal< sc_lv<16> > grp_fu_694_p2;
    sc_signal< sc_lv<16> > tmp_18_fu_758_p1;
    sc_signal< sc_lv<16> > grp_fu_740_p2;
    sc_signal< sc_lv<16> > tmp_21_fu_768_p1;
    sc_signal< sc_lv<31> > tmp_17_cast1_fu_823_p1;
    sc_signal< sc_lv<31> > bias6_sum_fu_831_p2;
    sc_signal< sc_lv<32> > r_V_1_fu_874_p0;
    sc_signal< sc_lv<16> > r_V_1_fu_874_p1;
    sc_signal< sc_lv<16> > tmp_27_fu_921_p1;
    sc_signal< sc_lv<17> > lhs_V_13_cast_fu_934_p1;
    sc_signal< sc_lv<32> > tmp3_fu_943_p2;
    sc_signal< sc_lv<48> > tmp3_cast_fu_948_p1;
    sc_signal< sc_lv<32> > r_V_10_fu_960_p0;
    sc_signal< sc_lv<16> > r_V_10_fu_960_p1;
    sc_signal< sc_lv<16> > tmp_29_fu_990_p1;
    sc_signal< sc_lv<16> > w_V_fu_994_p2;
    sc_signal< sc_lv<16> > tmp_30_fu_999_p2;
    sc_signal< sc_lv<1> > tmp_31_fu_1004_p3;
    sc_signal< sc_lv<17> > lhs_V_9_cast_fu_1021_p1;
    sc_signal< sc_lv<32> > lhs_V_12_cast_fu_1030_p1;
    sc_signal< sc_lv<32> > tmp1_fu_1042_p0;
    sc_signal< sc_lv<16> > tmp1_fu_1042_p1;
    sc_signal< sc_lv<48> > rhs_V_14_cast_fu_1058_p1;
    sc_signal< sc_lv<48> > r_V_15_fu_1062_p2;
    sc_signal< sc_lv<48> > feature_in2_sum9_fu_1067_p2;
    sc_signal< sc_lv<32> > tmp2_fu_1087_p2;
    sc_signal< sc_lv<48> > tmp2_cast_fu_1092_p1;
    sc_signal< sc_lv<49> > tmp_36_cast_cast_fu_1101_p1;
    sc_signal< sc_lv<49> > W4_sum_fu_1104_p2;
    sc_signal< sc_lv<49> > tmp_26_cast_cast_fu_1119_p1;
    sc_signal< sc_lv<49> > feature_out8_sum_fu_1122_p2;
    sc_signal< sc_lv<32> > sum_4_to_int_fu_1137_p1;
    sc_signal< sc_lv<8> > tmp_23_fu_1140_p4;
    sc_signal< sc_lv<23> > tmp_24_fu_1150_p1;
    sc_signal< sc_lv<1> > notrhs_fu_1160_p2;
    sc_signal< sc_lv<1> > notlhs_fu_1154_p2;
    sc_signal< sc_lv<1> > tmp_25_fu_1166_p2;
    sc_signal< sc_lv<1> > tmp_28_fu_477_p2;
    sc_signal< sc_lv<1> > rhs_V_fu_1172_p2;
    sc_signal< sc_lv<1> > r_V_fu_1178_p2;
    sc_signal< sc_lv<16> > r_V_5_fu_1190_p0;
    sc_signal< sc_lv<16> > r_V_5_fu_1190_p1;
    sc_signal< sc_lv<16> > r_V_14_fu_1195_p0;
    sc_signal< sc_lv<16> > r_V_11_fu_1200_p0;
    sc_signal< sc_lv<16> > r_V_11_fu_1200_p1;
    sc_signal< sc_lv<16> > grp_fu_1205_p0;
    sc_signal< sc_logic > grp_fu_694_ap_start;
    sc_signal< sc_logic > grp_fu_694_ap_done;
    sc_signal< sc_logic > grp_fu_740_ap_start;
    sc_signal< sc_logic > grp_fu_740_ap_done;
    sc_signal< sc_lv<71> > ap_NS_fsm;
    sc_signal< sc_lv<19> > grp_fu_694_p10;
    sc_signal< sc_lv<19> > grp_fu_740_p10;
    sc_signal< sc_lv<32> > r_V_11_fu_1200_p00;
    sc_signal< sc_lv<48> > r_V_1_fu_874_p00;
    sc_signal< sc_lv<32> > r_V_5_fu_1190_p00;
    sc_signal< sc_lv<48> > tmp1_fu_1042_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<71> ap_ST_fsm_state1;
    static const sc_lv<71> ap_ST_fsm_state2;
    static const sc_lv<71> ap_ST_fsm_state3;
    static const sc_lv<71> ap_ST_fsm_state4;
    static const sc_lv<71> ap_ST_fsm_state5;
    static const sc_lv<71> ap_ST_fsm_state6;
    static const sc_lv<71> ap_ST_fsm_state7;
    static const sc_lv<71> ap_ST_fsm_state8;
    static const sc_lv<71> ap_ST_fsm_state9;
    static const sc_lv<71> ap_ST_fsm_state10;
    static const sc_lv<71> ap_ST_fsm_state11;
    static const sc_lv<71> ap_ST_fsm_state12;
    static const sc_lv<71> ap_ST_fsm_state13;
    static const sc_lv<71> ap_ST_fsm_state14;
    static const sc_lv<71> ap_ST_fsm_state15;
    static const sc_lv<71> ap_ST_fsm_state16;
    static const sc_lv<71> ap_ST_fsm_state17;
    static const sc_lv<71> ap_ST_fsm_state18;
    static const sc_lv<71> ap_ST_fsm_state19;
    static const sc_lv<71> ap_ST_fsm_state20;
    static const sc_lv<71> ap_ST_fsm_state21;
    static const sc_lv<71> ap_ST_fsm_state22;
    static const sc_lv<71> ap_ST_fsm_state23;
    static const sc_lv<71> ap_ST_fsm_state24;
    static const sc_lv<71> ap_ST_fsm_state25;
    static const sc_lv<71> ap_ST_fsm_state26;
    static const sc_lv<71> ap_ST_fsm_state27;
    static const sc_lv<71> ap_ST_fsm_state28;
    static const sc_lv<71> ap_ST_fsm_state29;
    static const sc_lv<71> ap_ST_fsm_state30;
    static const sc_lv<71> ap_ST_fsm_state31;
    static const sc_lv<71> ap_ST_fsm_state32;
    static const sc_lv<71> ap_ST_fsm_state33;
    static const sc_lv<71> ap_ST_fsm_state34;
    static const sc_lv<71> ap_ST_fsm_state35;
    static const sc_lv<71> ap_ST_fsm_state36;
    static const sc_lv<71> ap_ST_fsm_state37;
    static const sc_lv<71> ap_ST_fsm_state38;
    static const sc_lv<71> ap_ST_fsm_state39;
    static const sc_lv<71> ap_ST_fsm_state40;
    static const sc_lv<71> ap_ST_fsm_state41;
    static const sc_lv<71> ap_ST_fsm_state42;
    static const sc_lv<71> ap_ST_fsm_state43;
    static const sc_lv<71> ap_ST_fsm_state44;
    static const sc_lv<71> ap_ST_fsm_state45;
    static const sc_lv<71> ap_ST_fsm_state46;
    static const sc_lv<71> ap_ST_fsm_state47;
    static const sc_lv<71> ap_ST_fsm_state48;
    static const sc_lv<71> ap_ST_fsm_state49;
    static const sc_lv<71> ap_ST_fsm_state50;
    static const sc_lv<71> ap_ST_fsm_state51;
    static const sc_lv<71> ap_ST_fsm_state52;
    static const sc_lv<71> ap_ST_fsm_state53;
    static const sc_lv<71> ap_ST_fsm_state54;
    static const sc_lv<71> ap_ST_fsm_state55;
    static const sc_lv<71> ap_ST_fsm_state56;
    static const sc_lv<71> ap_ST_fsm_state57;
    static const sc_lv<71> ap_ST_fsm_state58;
    static const sc_lv<71> ap_ST_fsm_state59;
    static const sc_lv<71> ap_ST_fsm_state60;
    static const sc_lv<71> ap_ST_fsm_state61;
    static const sc_lv<71> ap_ST_fsm_state62;
    static const sc_lv<71> ap_ST_fsm_state63;
    static const sc_lv<71> ap_ST_fsm_state64;
    static const sc_lv<71> ap_ST_fsm_state65;
    static const sc_lv<71> ap_ST_fsm_state66;
    static const sc_lv<71> ap_ST_fsm_state67;
    static const sc_lv<71> ap_ST_fsm_state68;
    static const sc_lv<71> ap_ST_fsm_state69;
    static const sc_lv<71> ap_ST_fsm_state70;
    static const sc_lv<71> ap_ST_fsm_state71;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3A;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<32> ap_const_lv32_46;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_GMEM_USER_VALUE;
    static const int C_M_AXI_GMEM_PROT_VALUE;
    static const int C_M_AXI_GMEM_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_3B;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_1FF;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_4;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const8();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const7();
    void thread_ap_var_for_const9();
    void thread_ap_clk_no_reset_();
    void thread_W4_sum_cast_fu_1109_p1();
    void thread_W4_sum_fu_1104_p2();
    void thread_Wout_V_fu_762_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state46();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state59();
    void thread_ap_CS_fsm_state60();
    void thread_ap_CS_fsm_state64();
    void thread_ap_CS_fsm_state65();
    void thread_ap_CS_fsm_state66();
    void thread_ap_CS_fsm_state71();
    void thread_ap_block_state29_io();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_ioackin_gmem_ARREADY();
    void thread_ap_sig_ioackin_gmem_AWREADY();
    void thread_ap_sig_ioackin_gmem_WREADY();
    void thread_bias6_sum_cast_fu_836_p1();
    void thread_bias6_sum_fu_831_p2();
    void thread_brmerge_fu_1012_p2();
    void thread_cin_fu_1052_p2();
    void thread_cout_fu_817_p2();
    void thread_exitcond1_fu_812_p2();
    void thread_exitcond2_fu_855_p2();
    void thread_exitcond3_fu_910_p2();
    void thread_exitcond4_fu_979_p2();
    void thread_exitcond5_fu_1047_p2();
    void thread_exitcond_fu_889_p2();
    void thread_feature_in2_sum9_cas_fu_1072_p1();
    void thread_feature_in2_sum9_fu_1067_p2();
    void thread_feature_out8_sum_cas_fu_1127_p1();
    void thread_feature_out8_sum_fu_1122_p2();
    void thread_gmem_ARADDR();
    void thread_gmem_ARVALID();
    void thread_gmem_AWVALID();
    void thread_gmem_BREADY();
    void thread_gmem_RREADY();
    void thread_gmem_WVALID();
    void thread_gmem_blk_n_AR();
    void thread_gmem_blk_n_AW();
    void thread_gmem_blk_n_B();
    void thread_gmem_blk_n_R();
    void thread_gmem_blk_n_W();
    void thread_grp_fu_1205_p0();
    void thread_grp_fu_467_p0();
    void thread_grp_fu_467_p1();
    void thread_grp_fu_694_ap_start();
    void thread_grp_fu_694_p0();
    void thread_grp_fu_694_p1();
    void thread_grp_fu_694_p10();
    void thread_grp_fu_740_ap_start();
    void thread_grp_fu_740_p0();
    void thread_grp_fu_740_p1();
    void thread_grp_fu_740_p10();
    void thread_h_V_fu_925_p2();
    void thread_i_fu_860_p2();
    void thread_ii_fu_915_p2();
    void thread_j_fu_894_p2();
    void thread_jj_fu_984_p2();
    void thread_lhs_V_12_cast_fu_1030_p1();
    void thread_lhs_V_13_cast_fu_934_p1();
    void thread_lhs_V_2_cast_fu_665_p1();
    void thread_lhs_V_4_cast_fu_711_p1();
    void thread_lhs_V_9_cast_fu_1021_p1();
    void thread_next_mul1_fu_846_p2();
    void thread_next_mul2_fu_879_p2();
    void thread_next_mul3_fu_884_p2();
    void thread_next_mul4_fu_905_p2();
    void thread_next_mul5_fu_974_p2();
    void thread_next_mul_fu_1082_p2();
    void thread_notlhs_fu_1154_p2();
    void thread_notrhs_fu_1160_p2();
    void thread_p_1_fu_638_p3();
    void thread_p_2_fu_646_p3();
    void thread_p_neg4_fu_540_p2();
    void thread_p_neg_fu_598_p2();
    void thread_p_s_fu_1183_p3();
    void thread_pad_x_V_fu_572_p3();
    void thread_pad_y_V_fu_630_p3();
    void thread_r_V_10_fu_960_p0();
    void thread_r_V_10_fu_960_p1();
    void thread_r_V_10_fu_960_p2();
    void thread_r_V_11_fu_1200_p0();
    void thread_r_V_11_fu_1200_p00();
    void thread_r_V_11_fu_1200_p1();
    void thread_r_V_14_fu_1195_p0();
    void thread_r_V_15_fu_1062_p2();
    void thread_r_V_1_fu_874_p0();
    void thread_r_V_1_fu_874_p00();
    void thread_r_V_1_fu_874_p1();
    void thread_r_V_1_fu_874_p2();
    void thread_r_V_1_tr_fu_584_p2();
    void thread_r_V_2_cast_fu_661_p1();
    void thread_r_V_2_fu_654_p3();
    void thread_r_V_3_cast_fu_674_p1();
    void thread_r_V_3_fu_668_p2();
    void thread_r_V_4_fu_681_p2();
    void thread_r_V_5_fu_1190_p0();
    void thread_r_V_5_fu_1190_p00();
    void thread_r_V_5_fu_1190_p1();
    void thread_r_V_6_cast_fu_707_p1();
    void thread_r_V_6_fu_700_p3();
    void thread_r_V_7_cast_fu_720_p1();
    void thread_r_V_7_fu_714_p2();
    void thread_r_V_8_fu_727_p2();
    void thread_r_V_fu_1178_p2();
    void thread_r_V_tr_fu_526_p2();
    void thread_rev_fu_969_p2();
    void thread_rhs_V_10_cast_fu_802_p1();
    void thread_rhs_V_14_cast_fu_1058_p1();
    void thread_rhs_V_1_cast_fu_796_p1();
    void thread_rhs_V_1_fu_790_p1();
    void thread_rhs_V_2_cast_fu_678_p1();
    void thread_rhs_V_2_fu_793_p1();
    void thread_rhs_V_5_cast_fu_724_p1();
    void thread_rhs_V_7_cast_fu_808_p1();
    void thread_rhs_V_8_cast_fu_799_p1();
    void thread_rhs_V_9_cast_fu_805_p1();
    void thread_rhs_V_fu_1172_p2();
    void thread_slt_fu_938_p2();
    void thread_sum_4_to_int_fu_1137_p1();
    void thread_tmp1_fu_1042_p0();
    void thread_tmp1_fu_1042_p00();
    void thread_tmp1_fu_1042_p1();
    void thread_tmp1_fu_1042_p2();
    void thread_tmp2_cast_fu_1092_p1();
    void thread_tmp2_fu_1087_p2();
    void thread_tmp3_cast_fu_948_p1();
    void thread_tmp3_fu_943_p2();
    void thread_tmp_10_fu_784_p1();
    void thread_tmp_11_fu_787_p1();
    void thread_tmp_12_fu_556_p4();
    void thread_tmp_13_cast_fu_752_p1();
    void thread_tmp_13_fu_590_p3();
    void thread_tmp_14_fu_604_p4();
    void thread_tmp_15_fu_614_p4();
    void thread_tmp_16_cast_fu_755_p1();
    void thread_tmp_16_fu_624_p2();
    void thread_tmp_17_cast1_fu_823_p1();
    void thread_tmp_17_cast_fu_827_p1();
    void thread_tmp_18_fu_758_p1();
    void thread_tmp_20_fu_866_p2();
    void thread_tmp_21_fu_768_p1();
    void thread_tmp_22_fu_900_p2();
    void thread_tmp_23_fu_1140_p4();
    void thread_tmp_24_fu_1150_p1();
    void thread_tmp_25_fu_1166_p2();
    void thread_tmp_26_cast_cast_fu_1119_p1();
    void thread_tmp_26_fu_952_p2();
    void thread_tmp_27_fu_921_p1();
    void thread_tmp_29_fu_990_p1();
    void thread_tmp_2_cast1_fu_746_p1();
    void thread_tmp_2_cast_fu_522_p1();
    void thread_tmp_30_fu_999_p2();
    void thread_tmp_31_fu_1004_p3();
    void thread_tmp_32_fu_1025_p2();
    void thread_tmp_33_fu_1096_p2();
    void thread_tmp_36_cast_cast_fu_1101_p1();
    void thread_tmp_37_cast_fu_580_p1();
    void thread_tmp_3_fu_546_p4();
    void thread_tmp_6_fu_566_p2();
    void thread_tmp_7_fu_772_p2();
    void thread_tmp_8_cast_fu_749_p1();
    void thread_tmp_8_fu_532_p3();
    void thread_tmp_9_fu_778_p1();
    void thread_tmp_fu_1034_p2();
    void thread_tmp_s_fu_781_p1();
    void thread_w_V_fu_994_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
