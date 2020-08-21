// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="filter_c_top,hls_ip_2018_2_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=100.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=20.350833,HLS_SYN_LAT=160,HLS_SYN_TPT=161,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=850,HLS_SYN_LUT=2344,HLS_VERSION=2018_2_2}" *)

module filter_c_top (
        xn_0_V_TDATA,
        ap_ce,
        yn_0_V_TDATA,
        yn_1_V_TDATA,
        buf_clr,
        cfg_filt_en_0,
        cfg_filt_en_1,
        cfg_filt_en_2,
        cfg_filt_en_3,
        cfg_filt_en_4,
        cfg_filt_en_5,
        cfg_filt_en_6,
        cfg_filt_en_7,
        cfg_filt_en_8,
        cfg_filt_en_9,
        cfg_filt_en_10,
        cfg_filt_en_11,
        cfg_filt_en_12,
        cfg_filt_en_13,
        cfg_filt_en_14,
        cfg_filt_en_15,
        cfg_filt_en_16,
        cfg_filt_en_17,
        cfg_gain_val_V,
        cfg_delay_sel,
        cfg_delay_val_V,
        coeff_mem_address0,
        coeff_mem_ce0,
        coeff_mem_d0,
        coeff_mem_q0,
        coeff_mem_we0,
        mem_address0,
        mem_ce0,
        mem_d0,
        mem_q0,
        mem_we0,
        ap_clk,
        ap_rst_n,
        xn_0_V_TVALID,
        xn_0_V_TREADY,
        yn_0_V_TVALID,
        yn_0_V_TREADY,
        yn_1_V_TVALID,
        yn_1_V_TREADY,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);


input  [23:0] xn_0_V_TDATA;
input   ap_ce;
output  [23:0] yn_0_V_TDATA;
output  [23:0] yn_1_V_TDATA;
input   buf_clr;
input  [0:0] cfg_filt_en_0;
input  [0:0] cfg_filt_en_1;
input  [0:0] cfg_filt_en_2;
input  [0:0] cfg_filt_en_3;
input  [0:0] cfg_filt_en_4;
input  [0:0] cfg_filt_en_5;
input  [0:0] cfg_filt_en_6;
input  [0:0] cfg_filt_en_7;
input  [0:0] cfg_filt_en_8;
input  [0:0] cfg_filt_en_9;
input  [0:0] cfg_filt_en_10;
input  [0:0] cfg_filt_en_11;
input  [0:0] cfg_filt_en_12;
input  [0:0] cfg_filt_en_13;
input  [0:0] cfg_filt_en_14;
input  [0:0] cfg_filt_en_15;
input  [0:0] cfg_filt_en_16;
input  [0:0] cfg_filt_en_17;
input  [5:0] cfg_gain_val_V;
input  [0:0] cfg_delay_sel;
input  [4:0] cfg_delay_val_V;
output  [6:0] coeff_mem_address0;
output   coeff_mem_ce0;
output  [15:0] coeff_mem_d0;
input  [15:0] coeff_mem_q0;
output   coeff_mem_we0;
output  [6:0] mem_address0;
output   mem_ce0;
output  [23:0] mem_d0;
input  [23:0] mem_q0;
output   mem_we0;
input   ap_clk;
input   ap_rst_n;
input   xn_0_V_TVALID;
output   xn_0_V_TREADY;
output   yn_0_V_TVALID;
input   yn_0_V_TREADY;
output   yn_1_V_TVALID;
input   yn_1_V_TREADY;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

 reg    ap_rst_n_inv;
wire    Block_codeRepl5_proc_U0_ap_start;
wire    Block_codeRepl5_proc_U0_ap_done;
wire    Block_codeRepl5_proc_U0_ap_continue;
wire    Block_codeRepl5_proc_U0_ap_idle;
wire    Block_codeRepl5_proc_U0_ap_ready;
wire   [0:0] Block_codeRepl5_proc_U0_buf_clr;
wire    Block_codeRepl5_proc_U0_xn_0_V_TREADY;
wire   [23:0] Block_codeRepl5_proc_U0_yn_0_V_TDATA;
wire    Block_codeRepl5_proc_U0_yn_0_V_TVALID;
wire   [6:0] Block_codeRepl5_proc_U0_coeff_mem_address0;
wire    Block_codeRepl5_proc_U0_coeff_mem_ce0;
wire   [23:0] Block_codeRepl5_proc_U0_yn_1_V_TDATA;
wire    Block_codeRepl5_proc_U0_yn_1_V_TVALID;
wire   [6:0] Block_codeRepl5_proc_U0_mem_address0;
wire    Block_codeRepl5_proc_U0_mem_ce0;
wire    Block_codeRepl5_proc_U0_mem_we0;
wire   [23:0] Block_codeRepl5_proc_U0_mem_d0;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Block_codeRepl5_proc_U0_start_full_n;
wire    Block_codeRepl5_proc_U0_start_write;

Block_codeRepl5_proc Block_codeRepl5_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_codeRepl5_proc_U0_ap_start),
    .ap_done(Block_codeRepl5_proc_U0_ap_done),
    .ap_continue(Block_codeRepl5_proc_U0_ap_continue),
    .ap_ce(ap_ce),
    .ap_idle(Block_codeRepl5_proc_U0_ap_idle),
    .ap_ready(Block_codeRepl5_proc_U0_ap_ready),
    .buf_clr(Block_codeRepl5_proc_U0_buf_clr),
    .cfg_gain_val_V(cfg_gain_val_V),
    .xn_0_V_TDATA(xn_0_V_TDATA),
    .xn_0_V_TVALID(xn_0_V_TVALID),
    .xn_0_V_TREADY(Block_codeRepl5_proc_U0_xn_0_V_TREADY),
    .cfg_delay_val_V(cfg_delay_val_V),
    .cfg_delay_sel(cfg_delay_sel),
    .cfg_filt_en_1(cfg_filt_en_1),
    .cfg_filt_en_2(cfg_filt_en_2),
    .cfg_filt_en_3(cfg_filt_en_3),
    .cfg_filt_en_4(cfg_filt_en_4),
    .cfg_filt_en_5(cfg_filt_en_5),
    .cfg_filt_en_6(cfg_filt_en_6),
    .cfg_filt_en_7(cfg_filt_en_7),
    .cfg_filt_en_8(cfg_filt_en_8),
    .cfg_filt_en_9(cfg_filt_en_9),
    .cfg_filt_en_10(cfg_filt_en_10),
    .cfg_filt_en_11(cfg_filt_en_11),
    .cfg_filt_en_0(cfg_filt_en_0),
    .yn_0_V_TDATA(Block_codeRepl5_proc_U0_yn_0_V_TDATA),
    .yn_0_V_TVALID(Block_codeRepl5_proc_U0_yn_0_V_TVALID),
    .yn_0_V_TREADY(yn_0_V_TREADY),
    .cfg_filt_en_13(cfg_filt_en_13),
    .cfg_filt_en_14(cfg_filt_en_14),
    .cfg_filt_en_15(cfg_filt_en_15),
    .cfg_filt_en_16(cfg_filt_en_16),
    .cfg_filt_en_17(cfg_filt_en_17),
    .cfg_filt_en_12(cfg_filt_en_12),
    .coeff_mem_address0(Block_codeRepl5_proc_U0_coeff_mem_address0),
    .coeff_mem_ce0(Block_codeRepl5_proc_U0_coeff_mem_ce0),
    .coeff_mem_q0(coeff_mem_q0),
    .yn_1_V_TDATA(Block_codeRepl5_proc_U0_yn_1_V_TDATA),
    .yn_1_V_TVALID(Block_codeRepl5_proc_U0_yn_1_V_TVALID),
    .yn_1_V_TREADY(yn_1_V_TREADY),
    .mem_address0(Block_codeRepl5_proc_U0_mem_address0),
    .mem_ce0(Block_codeRepl5_proc_U0_mem_ce0),
    .mem_we0(Block_codeRepl5_proc_U0_mem_we0),
    .mem_d0(Block_codeRepl5_proc_U0_mem_d0),
    .mem_q0(mem_q0)
);

assign Block_codeRepl5_proc_U0_ap_continue = 1'b1;

assign Block_codeRepl5_proc_U0_ap_start = ap_start;

assign Block_codeRepl5_proc_U0_buf_clr = buf_clr;

assign Block_codeRepl5_proc_U0_start_full_n = 1'b1;

assign Block_codeRepl5_proc_U0_start_write = 1'b0;

assign ap_done = Block_codeRepl5_proc_U0_ap_done;

assign ap_idle = Block_codeRepl5_proc_U0_ap_idle;

assign ap_ready = Block_codeRepl5_proc_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Block_codeRepl5_proc_U0_ap_done;

assign ap_sync_ready = Block_codeRepl5_proc_U0_ap_ready;

assign coeff_mem_address0 = Block_codeRepl5_proc_U0_coeff_mem_address0;

assign coeff_mem_ce0 = Block_codeRepl5_proc_U0_coeff_mem_ce0;

assign coeff_mem_d0 = 16'd0;

assign coeff_mem_we0 = 1'b0;

assign mem_address0 = Block_codeRepl5_proc_U0_mem_address0;

assign mem_ce0 = Block_codeRepl5_proc_U0_mem_ce0;

assign mem_d0 = Block_codeRepl5_proc_U0_mem_d0;

assign mem_we0 = Block_codeRepl5_proc_U0_mem_we0;

assign xn_0_V_TREADY = Block_codeRepl5_proc_U0_xn_0_V_TREADY;

assign yn_0_V_TDATA = Block_codeRepl5_proc_U0_yn_0_V_TDATA;

assign yn_0_V_TVALID = Block_codeRepl5_proc_U0_yn_0_V_TVALID;

assign yn_1_V_TDATA = Block_codeRepl5_proc_U0_yn_1_V_TDATA;

assign yn_1_V_TVALID = Block_codeRepl5_proc_U0_yn_1_V_TVALID;

endmodule //filter_c_top
