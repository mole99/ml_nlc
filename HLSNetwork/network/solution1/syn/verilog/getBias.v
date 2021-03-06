// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module getBias (
        ap_ready,
        network_weights_bias,
        network_weights_bias_86,
        network_weights_bias_87,
        network_weights_bias_88,
        network_weights_bias_89,
        network_weights_bias_90,
        network_weights_bias_91,
        network_weights_bias_92,
        network_weights_bias_93,
        network_weights_bias_94,
        network_weights_bias_95,
        network_weights_bias_96,
        network_weights_bias_97,
        network_weights_bias_98,
        network_weights_bias_99,
        network_weights_bias_100,
        network_weights_bias_101,
        network_weights_bias_102,
        network_weights_bias_103,
        network_weights_bias_104,
        network_weights_bias_105,
        network_weights_bias_106,
        network_weights_bias_107,
        network_weights_bias_108,
        network_weights_bias_109,
        network_weights_bias_110,
        network_weights_bias_111,
        network_weights_bias_112,
        network_weights_bias_113,
        layer,
        index,
        ap_return
);


output   ap_ready;
input  [31:0] network_weights_bias;
input  [31:0] network_weights_bias_86;
input  [31:0] network_weights_bias_87;
input  [31:0] network_weights_bias_88;
input  [31:0] network_weights_bias_89;
input  [31:0] network_weights_bias_90;
input  [31:0] network_weights_bias_91;
input  [31:0] network_weights_bias_92;
input  [31:0] network_weights_bias_93;
input  [31:0] network_weights_bias_94;
input  [31:0] network_weights_bias_95;
input  [31:0] network_weights_bias_96;
input  [31:0] network_weights_bias_97;
input  [31:0] network_weights_bias_98;
input  [31:0] network_weights_bias_99;
input  [31:0] network_weights_bias_100;
input  [31:0] network_weights_bias_101;
input  [31:0] network_weights_bias_102;
input  [31:0] network_weights_bias_103;
input  [31:0] network_weights_bias_104;
input  [31:0] network_weights_bias_105;
input  [31:0] network_weights_bias_106;
input  [31:0] network_weights_bias_107;
input  [31:0] network_weights_bias_108;
input  [31:0] network_weights_bias_109;
input  [31:0] network_weights_bias_110;
input  [31:0] network_weights_bias_111;
input  [31:0] network_weights_bias_112;
input  [31:0] network_weights_bias_113;
input  [3:0] layer;
input  [4:0] index;
output  [31:0] ap_return;

wire   [3:0] tmp_fu_274_p17;
wire   [2:0] tmp_4_fu_316_p9;
wire   [1:0] tmp_5_fu_342_p5;
wire   [1:0] trunc_ln29_fu_356_p1;
wire   [0:0] icmp_ln29_3_fu_378_p2;
wire   [31:0] tmp_fu_274_p18;
wire   [31:0] tmp_4_fu_316_p10;
wire   [0:0] icmp_ln29_2_fu_372_p2;
wire   [0:0] icmp_ln29_1_fu_366_p2;
wire   [31:0] tmp_5_fu_342_p6;
wire   [0:0] icmp_ln29_fu_360_p2;
wire   [0:0] or_ln29_fu_392_p2;
wire   [31:0] select_ln29_fu_384_p3;
wire   [31:0] select_ln29_1_fu_398_p3;
wire   [0:0] or_ln29_1_fu_406_p2;
wire   [0:0] or_ln29_2_fu_420_p2;
wire   [31:0] select_ln29_2_fu_412_p3;

network_top_mux_1bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 32 ),
    .din11_WIDTH( 32 ),
    .din12_WIDTH( 32 ),
    .din13_WIDTH( 32 ),
    .din14_WIDTH( 32 ),
    .din15_WIDTH( 32 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 32 ))
network_top_mux_1bkb_U1(
    .din0(network_weights_bias),
    .din1(network_weights_bias_86),
    .din2(network_weights_bias_87),
    .din3(network_weights_bias_88),
    .din4(network_weights_bias_89),
    .din5(network_weights_bias_90),
    .din6(network_weights_bias_91),
    .din7(network_weights_bias_92),
    .din8(network_weights_bias_93),
    .din9(network_weights_bias_94),
    .din10(network_weights_bias_95),
    .din11(network_weights_bias_96),
    .din12(network_weights_bias_97),
    .din13(network_weights_bias_98),
    .din14(network_weights_bias_99),
    .din15(network_weights_bias_100),
    .din16(tmp_fu_274_p17),
    .dout(tmp_fu_274_p18)
);

network_top_mux_8cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
network_top_mux_8cud_U2(
    .din0(network_weights_bias_101),
    .din1(network_weights_bias_102),
    .din2(network_weights_bias_103),
    .din3(network_weights_bias_104),
    .din4(network_weights_bias_105),
    .din5(network_weights_bias_106),
    .din6(network_weights_bias_107),
    .din7(network_weights_bias_108),
    .din8(tmp_4_fu_316_p9),
    .dout(tmp_4_fu_316_p10)
);

network_top_mux_4dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
network_top_mux_4dEe_U3(
    .din0(network_weights_bias_109),
    .din1(network_weights_bias_110),
    .din2(network_weights_bias_111),
    .din3(network_weights_bias_112),
    .din4(tmp_5_fu_342_p5),
    .dout(tmp_5_fu_342_p6)
);

assign ap_ready = 1'b1;

assign ap_return = ((or_ln29_2_fu_420_p2[0:0] === 1'b1) ? select_ln29_2_fu_412_p3 : 32'd0);

assign icmp_ln29_1_fu_366_p2 = ((trunc_ln29_fu_356_p1 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln29_2_fu_372_p2 = ((trunc_ln29_fu_356_p1 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln29_3_fu_378_p2 = ((trunc_ln29_fu_356_p1 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln29_fu_360_p2 = ((trunc_ln29_fu_356_p1 == 2'd3) ? 1'b1 : 1'b0);

assign or_ln29_1_fu_406_p2 = (icmp_ln29_fu_360_p2 | icmp_ln29_1_fu_366_p2);

assign or_ln29_2_fu_420_p2 = (or_ln29_fu_392_p2 | or_ln29_1_fu_406_p2);

assign or_ln29_fu_392_p2 = (icmp_ln29_3_fu_378_p2 | icmp_ln29_2_fu_372_p2);

assign select_ln29_1_fu_398_p3 = ((icmp_ln29_1_fu_366_p2[0:0] === 1'b1) ? tmp_5_fu_342_p6 : network_weights_bias_113);

assign select_ln29_2_fu_412_p3 = ((or_ln29_fu_392_p2[0:0] === 1'b1) ? select_ln29_fu_384_p3 : select_ln29_1_fu_398_p3);

assign select_ln29_fu_384_p3 = ((icmp_ln29_3_fu_378_p2[0:0] === 1'b1) ? tmp_fu_274_p18 : tmp_4_fu_316_p10);

assign tmp_4_fu_316_p9 = index[2:0];

assign tmp_5_fu_342_p5 = index[1:0];

assign tmp_fu_274_p17 = index[3:0];

assign trunc_ln29_fu_356_p1 = layer[1:0];

endmodule //getBias
