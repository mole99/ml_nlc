// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _getWeight_HH_
#define _getWeight_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "network_top_mux_3eOg.h"
#include "network_top_mux_1fYi.h"
#include "network_top_mux_4g8j.h"

namespace ap_rtl {

struct getWeight : public sc_module {
    // Port declarations 201
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > network_weights_weig;
    sc_in< sc_lv<8> > network_weights_weig_587;
    sc_in< sc_lv<8> > network_weights_weig_588;
    sc_in< sc_lv<8> > network_weights_weig_589;
    sc_in< sc_lv<8> > network_weights_weig_590;
    sc_in< sc_lv<8> > network_weights_weig_591;
    sc_in< sc_lv<8> > network_weights_weig_592;
    sc_in< sc_lv<8> > network_weights_weig_593;
    sc_in< sc_lv<8> > network_weights_weig_594;
    sc_in< sc_lv<8> > network_weights_weig_595;
    sc_in< sc_lv<8> > network_weights_weig_596;
    sc_in< sc_lv<8> > network_weights_weig_597;
    sc_in< sc_lv<8> > network_weights_weig_598;
    sc_in< sc_lv<8> > network_weights_weig_599;
    sc_in< sc_lv<8> > network_weights_weig_600;
    sc_in< sc_lv<8> > network_weights_weig_601;
    sc_in< sc_lv<8> > network_weights_weig_602;
    sc_in< sc_lv<8> > network_weights_weig_603;
    sc_in< sc_lv<8> > network_weights_weig_604;
    sc_in< sc_lv<8> > network_weights_weig_605;
    sc_in< sc_lv<8> > network_weights_weig_606;
    sc_in< sc_lv<8> > network_weights_weig_607;
    sc_in< sc_lv<8> > network_weights_weig_608;
    sc_in< sc_lv<8> > network_weights_weig_609;
    sc_in< sc_lv<8> > network_weights_weig_610;
    sc_in< sc_lv<8> > network_weights_weig_611;
    sc_in< sc_lv<8> > network_weights_weig_612;
    sc_in< sc_lv<8> > network_weights_weig_613;
    sc_in< sc_lv<8> > network_weights_weig_614;
    sc_in< sc_lv<8> > network_weights_weig_615;
    sc_in< sc_lv<8> > network_weights_weig_616;
    sc_in< sc_lv<8> > network_weights_weig_617;
    sc_in< sc_lv<8> > network_weights_weig_618;
    sc_in< sc_lv<8> > network_weights_weig_619;
    sc_in< sc_lv<8> > network_weights_weig_620;
    sc_in< sc_lv<8> > network_weights_weig_621;
    sc_in< sc_lv<8> > network_weights_weig_622;
    sc_in< sc_lv<8> > network_weights_weig_623;
    sc_in< sc_lv<8> > network_weights_weig_624;
    sc_in< sc_lv<8> > network_weights_weig_625;
    sc_in< sc_lv<8> > network_weights_weig_626;
    sc_in< sc_lv<8> > network_weights_weig_627;
    sc_in< sc_lv<8> > network_weights_weig_628;
    sc_in< sc_lv<8> > network_weights_weig_629;
    sc_in< sc_lv<8> > network_weights_weig_630;
    sc_in< sc_lv<8> > network_weights_weig_631;
    sc_in< sc_lv<8> > network_weights_weig_632;
    sc_in< sc_lv<8> > network_weights_weig_633;
    sc_in< sc_lv<8> > network_weights_weig_634;
    sc_in< sc_lv<8> > network_weights_weig_635;
    sc_in< sc_lv<8> > network_weights_weig_636;
    sc_in< sc_lv<8> > network_weights_weig_637;
    sc_in< sc_lv<8> > network_weights_weig_638;
    sc_in< sc_lv<8> > network_weights_weig_639;
    sc_in< sc_lv<8> > network_weights_weig_640;
    sc_in< sc_lv<8> > network_weights_weig_641;
    sc_in< sc_lv<8> > network_weights_weig_642;
    sc_in< sc_lv<8> > network_weights_weig_643;
    sc_in< sc_lv<8> > network_weights_weig_644;
    sc_in< sc_lv<8> > network_weights_weig_645;
    sc_in< sc_lv<8> > network_weights_weig_646;
    sc_in< sc_lv<8> > network_weights_weig_647;
    sc_in< sc_lv<8> > network_weights_weig_648;
    sc_in< sc_lv<8> > network_weights_weig_649;
    sc_in< sc_lv<8> > network_weights_weig_650;
    sc_in< sc_lv<8> > network_weights_weig_651;
    sc_in< sc_lv<8> > network_weights_weig_652;
    sc_in< sc_lv<8> > network_weights_weig_653;
    sc_in< sc_lv<8> > network_weights_weig_654;
    sc_in< sc_lv<8> > network_weights_weig_655;
    sc_in< sc_lv<8> > network_weights_weig_656;
    sc_in< sc_lv<8> > network_weights_weig_657;
    sc_in< sc_lv<8> > network_weights_weig_658;
    sc_in< sc_lv<8> > network_weights_weig_659;
    sc_in< sc_lv<8> > network_weights_weig_660;
    sc_in< sc_lv<8> > network_weights_weig_661;
    sc_in< sc_lv<8> > network_weights_weig_662;
    sc_in< sc_lv<8> > network_weights_weig_663;
    sc_in< sc_lv<8> > network_weights_weig_664;
    sc_in< sc_lv<8> > network_weights_weig_665;
    sc_in< sc_lv<8> > network_weights_weig_666;
    sc_in< sc_lv<8> > network_weights_weig_667;
    sc_in< sc_lv<8> > network_weights_weig_668;
    sc_in< sc_lv<8> > network_weights_weig_669;
    sc_in< sc_lv<8> > network_weights_weig_670;
    sc_in< sc_lv<8> > network_weights_weig_671;
    sc_in< sc_lv<8> > network_weights_weig_672;
    sc_in< sc_lv<8> > network_weights_weig_673;
    sc_in< sc_lv<8> > network_weights_weig_674;
    sc_in< sc_lv<8> > network_weights_weig_675;
    sc_in< sc_lv<8> > network_weights_weig_676;
    sc_in< sc_lv<8> > network_weights_weig_677;
    sc_in< sc_lv<8> > network_weights_weig_678;
    sc_in< sc_lv<8> > network_weights_weig_679;
    sc_in< sc_lv<8> > network_weights_weig_680;
    sc_in< sc_lv<8> > network_weights_weig_681;
    sc_in< sc_lv<8> > network_weights_weig_682;
    sc_in< sc_lv<8> > network_weights_weig_683;
    sc_in< sc_lv<8> > network_weights_weig_684;
    sc_in< sc_lv<8> > network_weights_weig_685;
    sc_in< sc_lv<8> > network_weights_weig_686;
    sc_in< sc_lv<8> > network_weights_weig_687;
    sc_in< sc_lv<8> > network_weights_weig_688;
    sc_in< sc_lv<8> > network_weights_weig_689;
    sc_in< sc_lv<8> > network_weights_weig_690;
    sc_in< sc_lv<8> > network_weights_weig_691;
    sc_in< sc_lv<8> > network_weights_weig_692;
    sc_in< sc_lv<8> > network_weights_weig_693;
    sc_in< sc_lv<8> > network_weights_weig_694;
    sc_in< sc_lv<8> > network_weights_weig_695;
    sc_in< sc_lv<8> > network_weights_weig_696;
    sc_in< sc_lv<8> > network_weights_weig_697;
    sc_in< sc_lv<8> > network_weights_weig_698;
    sc_in< sc_lv<8> > network_weights_weig_699;
    sc_in< sc_lv<8> > network_weights_weig_700;
    sc_in< sc_lv<8> > network_weights_weig_701;
    sc_in< sc_lv<8> > network_weights_weig_702;
    sc_in< sc_lv<8> > network_weights_weig_703;
    sc_in< sc_lv<8> > network_weights_weig_704;
    sc_in< sc_lv<8> > network_weights_weig_705;
    sc_in< sc_lv<8> > network_weights_weig_706;
    sc_in< sc_lv<8> > network_weights_weig_707;
    sc_in< sc_lv<8> > network_weights_weig_708;
    sc_in< sc_lv<8> > network_weights_weig_709;
    sc_in< sc_lv<8> > network_weights_weig_710;
    sc_in< sc_lv<8> > network_weights_weig_711;
    sc_in< sc_lv<8> > network_weights_weig_712;
    sc_in< sc_lv<8> > network_weights_weig_713;
    sc_in< sc_lv<8> > network_weights_weig_714;
    sc_in< sc_lv<8> > network_weights_weig_715;
    sc_in< sc_lv<8> > network_weights_weig_716;
    sc_in< sc_lv<8> > network_weights_weig_717;
    sc_in< sc_lv<8> > network_weights_weig_718;
    sc_in< sc_lv<8> > network_weights_weig_719;
    sc_in< sc_lv<8> > network_weights_weig_720;
    sc_in< sc_lv<8> > network_weights_weig_721;
    sc_in< sc_lv<8> > network_weights_weig_722;
    sc_in< sc_lv<8> > network_weights_weig_723;
    sc_in< sc_lv<8> > network_weights_weig_724;
    sc_in< sc_lv<8> > network_weights_weig_725;
    sc_in< sc_lv<8> > network_weights_weig_726;
    sc_in< sc_lv<8> > network_weights_weig_727;
    sc_in< sc_lv<8> > network_weights_weig_728;
    sc_in< sc_lv<8> > network_weights_weig_729;
    sc_in< sc_lv<8> > network_weights_weig_730;
    sc_in< sc_lv<8> > network_weights_weig_731;
    sc_in< sc_lv<8> > network_weights_weig_732;
    sc_in< sc_lv<8> > network_weights_weig_733;
    sc_in< sc_lv<8> > network_weights_weig_734;
    sc_in< sc_lv<8> > network_weights_weig_735;
    sc_in< sc_lv<8> > network_weights_weig_736;
    sc_in< sc_lv<8> > network_weights_weig_737;
    sc_in< sc_lv<8> > network_weights_weig_738;
    sc_in< sc_lv<8> > network_weights_weig_739;
    sc_in< sc_lv<8> > network_weights_weig_740;
    sc_in< sc_lv<8> > network_weights_weig_741;
    sc_in< sc_lv<8> > network_weights_weig_742;
    sc_in< sc_lv<8> > network_weights_weig_743;
    sc_in< sc_lv<8> > network_weights_weig_744;
    sc_in< sc_lv<8> > network_weights_weig_745;
    sc_in< sc_lv<8> > network_weights_weig_746;
    sc_in< sc_lv<8> > network_weights_weig_747;
    sc_in< sc_lv<8> > network_weights_weig_748;
    sc_in< sc_lv<8> > network_weights_weig_749;
    sc_in< sc_lv<8> > network_weights_weig_750;
    sc_in< sc_lv<8> > network_weights_weig_751;
    sc_in< sc_lv<8> > network_weights_weig_752;
    sc_in< sc_lv<8> > network_weights_weig_753;
    sc_in< sc_lv<8> > network_weights_weig_754;
    sc_in< sc_lv<8> > network_weights_weig_755;
    sc_in< sc_lv<8> > network_weights_weig_756;
    sc_in< sc_lv<8> > network_weights_weig_757;
    sc_in< sc_lv<8> > network_weights_weig_758;
    sc_in< sc_lv<8> > network_weights_weig_759;
    sc_in< sc_lv<8> > network_weights_weig_760;
    sc_in< sc_lv<8> > network_weights_weig_761;
    sc_in< sc_lv<8> > network_weights_weig_762;
    sc_in< sc_lv<8> > network_weights_weig_763;
    sc_in< sc_lv<8> > network_weights_weig_764;
    sc_in< sc_lv<8> > network_weights_weig_765;
    sc_in< sc_lv<8> > network_weights_weig_766;
    sc_in< sc_lv<8> > network_weights_weig_767;
    sc_in< sc_lv<8> > network_weights_weig_768;
    sc_in< sc_lv<8> > network_weights_weig_769;
    sc_in< sc_lv<8> > network_weights_weig_770;
    sc_in< sc_lv<8> > network_weights_weig_771;
    sc_in< sc_lv<8> > network_weights_weig_772;
    sc_in< sc_lv<8> > network_weights_weig_773;
    sc_in< sc_lv<8> > network_weights_weig_774;
    sc_in< sc_lv<8> > network_weights_weig_775;
    sc_in< sc_lv<8> > network_weights_weig_776;
    sc_in< sc_lv<8> > network_weights_weig_777;
    sc_in< sc_lv<8> > network_weights_weig_778;
    sc_in< sc_lv<8> > network_weights_weig_779;
    sc_in< sc_lv<8> > network_weights_weig_780;
    sc_in< sc_lv<8> > network_weights_weig_781;
    sc_in< sc_lv<4> > layer;
    sc_in< sc_lv<5> > index_0;
    sc_in< sc_lv<5> > index_1;
    sc_out< sc_lv<8> > ap_return;


    // Module declarations
    getWeight(sc_module_name name);
    SC_HAS_PROCESS(getWeight);

    ~getWeight();

    sc_trace_file* mVcdFile;

    network_top_mux_3eOg<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* network_top_mux_3eOg_U38;
    network_top_mux_1fYi<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8>* network_top_mux_1fYi_U39;
    network_top_mux_3eOg<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* network_top_mux_3eOg_U40;
    network_top_mux_4g8j<1,1,8,8,8,8,2,8>* network_top_mux_4g8j_U41;
    sc_signal< sc_lv<4> > trunc_ln11_fu_1620_p1;
    sc_signal< sc_lv<1> > trunc_ln11_1_fu_1624_p1;
    sc_signal< sc_lv<5> > tmp_4_fu_1628_p3;
    sc_signal< sc_lv<6> > tmp_fu_1640_p33;
    sc_signal< sc_lv<3> > trunc_ln14_fu_1710_p1;
    sc_signal< sc_lv<4> > trunc_ln14_1_fu_1714_p1;
    sc_signal< sc_lv<7> > tmp_5_fu_1718_p3;
    sc_signal< sc_lv<8> > tmp_1_fu_1730_p129;
    sc_signal< sc_lv<2> > trunc_ln17_fu_1992_p1;
    sc_signal< sc_lv<3> > trunc_ln17_1_fu_1996_p1;
    sc_signal< sc_lv<5> > tmp_6_fu_2000_p3;
    sc_signal< sc_lv<6> > tmp_2_fu_2012_p33;
    sc_signal< sc_lv<2> > tmp_3_fu_2086_p5;
    sc_signal< sc_lv<2> > trunc_ln8_fu_2100_p1;
    sc_signal< sc_lv<1> > icmp_ln8_3_fu_2122_p2;
    sc_signal< sc_lv<8> > tmp_fu_1640_p34;
    sc_signal< sc_lv<8> > tmp_1_fu_1730_p130;
    sc_signal< sc_lv<1> > icmp_ln8_2_fu_2116_p2;
    sc_signal< sc_lv<1> > icmp_ln8_1_fu_2110_p2;
    sc_signal< sc_lv<8> > tmp_2_fu_2012_p34;
    sc_signal< sc_lv<8> > tmp_3_fu_2086_p6;
    sc_signal< sc_lv<1> > icmp_ln8_fu_2104_p2;
    sc_signal< sc_lv<1> > or_ln8_fu_2136_p2;
    sc_signal< sc_lv<8> > select_ln8_fu_2128_p3;
    sc_signal< sc_lv<8> > select_ln8_1_fu_2142_p3;
    sc_signal< sc_lv<1> > or_ln8_1_fu_2150_p2;
    sc_signal< sc_lv<1> > or_ln8_2_fu_2164_p2;
    sc_signal< sc_lv<8> > select_ln8_2_fu_2156_p3;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
    void thread_ap_return();
    void thread_icmp_ln8_1_fu_2110_p2();
    void thread_icmp_ln8_2_fu_2116_p2();
    void thread_icmp_ln8_3_fu_2122_p2();
    void thread_icmp_ln8_fu_2104_p2();
    void thread_or_ln8_1_fu_2150_p2();
    void thread_or_ln8_2_fu_2164_p2();
    void thread_or_ln8_fu_2136_p2();
    void thread_select_ln8_1_fu_2142_p3();
    void thread_select_ln8_2_fu_2156_p3();
    void thread_select_ln8_fu_2128_p3();
    void thread_tmp_1_fu_1730_p129();
    void thread_tmp_2_fu_2012_p33();
    void thread_tmp_3_fu_2086_p5();
    void thread_tmp_4_fu_1628_p3();
    void thread_tmp_5_fu_1718_p3();
    void thread_tmp_6_fu_2000_p3();
    void thread_tmp_fu_1640_p33();
    void thread_trunc_ln11_1_fu_1624_p1();
    void thread_trunc_ln11_fu_1620_p1();
    void thread_trunc_ln14_1_fu_1714_p1();
    void thread_trunc_ln14_fu_1710_p1();
    void thread_trunc_ln17_1_fu_1996_p1();
    void thread_trunc_ln17_fu_1992_p1();
    void thread_trunc_ln8_fu_2100_p1();
};

}

using namespace ap_rtl;

#endif
