//                    Copyright Message
//  --------------------------------------------------------------------------
//
//  CONFIDENTIAL and PROPRIETARY
//  COPYRIGHT (c) USound 2017
//
//  All rights are reserved. Reproduction in whole or in part is
//  prohibited without the written consent of the copyright owner.
//
//
//  ----------------------------------------------------------------------------
//                    Design Information
//  ----------------------------------------------------------------------------
//
//  File             $URL: http://10.3.34.6:20000/svn/leda_1/trunk/2v0/units/filter/rtl/filter_apb_reg.sv $
//  Author
//  Date             $LastChangedDate: 2020-04-03 09:00:15 +0200 (Fri, 03 Apr 2020) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 6877 $
//
// Description       APB register file for filter
//
//  ----------------------------------------------------------------------------
//                    Revision History (written manually)
//  ----------------------------------------------------------------------------
//
//  Date        Author     Change Description
//  ==========  =========  ========================================================
//  2017-04-04  kstrohma   Initial release
//  (rev xxxxx)       

`include "dig_top.h"
module filter_apb_reg (
  input       logic        clk                       , // System clock 
  input       logic        reset_ni                  , // active loaw reset 
  
  input       wire         scan_enable_i             , // I; Scan enable
  
  // APB interface signals
  input       logic        presetn_i                 , // APB interface domain reset 
  input       logic        psel_i                    , // APB select 
  input       logic        penable_i                 , // APB enable 
  input       logic        pwrite_i                  , // APB write 
  input       logic [7:0]  paddr_i                   , // APB address 
  input       logic [31:0] pwdata_i                  , // APB write data 
  output      logic        pready_o                  , // APB ready 
  output      logic [31:0] prdata_o                  , // APB read data 
  output      logic        pslverr_o                 , // APB slave error 
  input       wire   [1:0] pprivilege_i              , // APB privilege mode 0 - low, 3 - high
  
  //marker_template_start 
  //[% PROCESS template/general.template%]
  //[% PROCESS template/apb.template%] [% 
  // SET RegList = data.filter_reg.data;
  // INCLUDE apb_reg_module_pins;
  // %]
  //marker_template_code 
  // Based on RegList version 0.1 from 3. Apr 2020 
  output  logic         ctrl_filt_en_q_o                    , // O; CTRL.FILT_EN register output 
  output  logic         ctrl_clkoff_q_o                     , // O; CTRL.CLKOFF register output 
  output  logic         ctrl_bypass_q_o                     , // O; CTRL.BYPASS register output 
  output  logic         cfg_delay_sel_q_o                   , // O; CFG.DELAY_SEL register output 
  output logic  [ 12:8] cfg_delay_val_q_o                   , // O; CFG.DELAY_VAL register output 
  output  logic         filt_ctrl_filt0_en_q_o              , // O; FILT_CTRL.FILT0_EN register output 
  output  logic         filt_ctrl_filt1_en_q_o              , // O; FILT_CTRL.FILT1_EN register output 
  output  logic         filt_ctrl_filt2_en_q_o              , // O; FILT_CTRL.FILT2_EN register output 
  output  logic         filt_ctrl_filt3_en_q_o              , // O; FILT_CTRL.FILT3_EN register output 
  output  logic         filt_ctrl_filt4_en_q_o              , // O; FILT_CTRL.FILT4_EN register output 
  output  logic         filt_ctrl_filt5_en_q_o              , // O; FILT_CTRL.FILT5_EN register output 
  output  logic         filt_ctrl_filt6_en_q_o              , // O; FILT_CTRL.FILT6_EN register output 
  output  logic         filt_ctrl_filt7_en_q_o              , // O; FILT_CTRL.FILT7_EN register output 
  output  logic         filt_ctrl_filt8_en_q_o              , // O; FILT_CTRL.FILT8_EN register output 
  output  logic         filt_ctrl_filt9_en_q_o              , // O; FILT_CTRL.FILT9_EN register output 
  output  logic         filt_ctrl_filt10_en_q_o             , // O; FILT_CTRL.FILT10_EN register output 
  output  logic         filt_ctrl_filt11_en_q_o             , // O; FILT_CTRL.FILT11_EN register output 
  output  logic         filt_ctrl_filt12_en_q_o             , // O; FILT_CTRL.FILT12_EN register output 
  output  logic         filt_ctrl_filt13_en_q_o             , // O; FILT_CTRL.FILT13_EN register output 
  output  logic         filt_ctrl_filt14_en_q_o             , // O; FILT_CTRL.FILT14_EN register output 
  output  logic         filt_ctrl_filt15_en_q_o             , // O; FILT_CTRL.FILT15_EN register output 
  output  logic         filt_ctrl_filt16_en_q_o             , // O; FILT_CTRL.FILT16_EN register output 
  output  logic         filt_ctrl_filt17_en_q_o             , // O; FILT_CTRL.FILT17_EN register output 
  output logic  [  5:0] gain_val_q_o                        , // O; GAIN.VAL register output 
  output  logic         table_cfg_direct_q_o                , // O; TABLE_CFG.DIRECT register output 
  output logic  [  7:0] table_addr_addr_q_o                 , // O; TABLE_ADDR.ADDR register output 
  input  logic  [  7:0] table_addr_addr_d_i                 , // I; TABLE_ADDR.ADDR register input 
  input   logic         table_addr_addr_den_i               , // I; TABLE_ADDR.ADDR register data enable 
  output  logic         table_addr_addr_wtrig_o             , // O; TABLE_ADDR.ADDR write trigger 
  output logic  [ 23:0] table_wr_data_data_q_o              , // O; TABLE_WR_DATA.DATA register output 
  input  logic  [ 23:0] table_wr_data_data_d_i              , // I; TABLE_WR_DATA.DATA register input 
  input   logic         table_wr_data_data_den_i            , // I; TABLE_WR_DATA.DATA register data enable 
  output  logic         table_wr_data_data_wtrig_o          , // O; TABLE_WR_DATA.DATA write trigger 
  output logic  [ 23:0] table_wrinc_data_data_q_o           , // O; TABLE_WRINC_DATA.DATA register output 
  input  logic  [ 23:0] table_wrinc_data_data_d_i           , // I; TABLE_WRINC_DATA.DATA register input 
  output  logic         table_wrinc_data_data_wtrig_o       , // O; TABLE_WRINC_DATA.DATA write trigger 
  output logic  [ 23:0] table_wrdec_data_data_q_o           , // O; TABLE_WRDEC_DATA.DATA register output 
  input  logic  [ 23:0] table_wrdec_data_data_d_i           , // I; TABLE_WRDEC_DATA.DATA register input 
  output  logic         table_wrdec_data_data_wtrig_o       , // O; TABLE_WRDEC_DATA.DATA write trigger 
  input  logic  [ 23:0] table_rd_data_data_d_i              , // I; TABLE_RD_DATA.DATA register input 
  output  logic         table_rd_data_data_rtrig_o          , // O; TABLE_RD_DATA.DATA read trigger 
  input  logic  [ 23:0] table_rdinc_data_data_d_i           , // I; TABLE_RDINC_DATA.DATA register input 
  output  logic         table_rdinc_data_data_rtrig_o       , // O; TABLE_RDINC_DATA.DATA read trigger 
  input  logic  [ 23:0] table_rddec_data_data_d_i           , // I; TABLE_RDDEC_DATA.DATA register input 
  output  logic         table_rddec_data_data_rtrig_o       , // O; TABLE_RDDEC_DATA.DATA read trigger 
  output  logic         test_filtclkoff_q_o                 , // O; TEST.FILTCLKOFF register output 
  input  logic  [ 17:0] reginfo_date_d_i                    , // I; REGINFO.DATE register input 
  input  logic  [  7:0] id_peripheral_type_d_i              , // I; ID.PERIPHERAL_TYPE register input 
  input  logic  [ 15:8] id_version_d_i                      , // I; ID.VERSION register input 
//marker_template_end 
  output      logic        irq_o                                  // O; Interrupt 
);
  
  
  // -------------------------------------------------------------------------
  // Definition 
  // -------------------------------------------------------------------------

  logic [7:0]paddr_ff; // address storage



  
  // Address hit indication 
  //marker_template_start 
  //[% PROCESS template/general.template%]
  //[% PROCESS template/apb.template%] [% 
  // SET RegList = data.filter_reg.data;
  // INCLUDE apb_reg_signal_addr_hit;
  // %]
  //marker_template_code 
  logic         paddr_ctrl_hit                     ; // CTRL address hit 
  logic         paddr_cfg_hit                      ; // CFG address hit 
  logic         paddr_filt_ctrl_hit                ; // FILT_CTRL address hit 
  logic         paddr_gain_hit                     ; // GAIN address hit 
  logic         paddr_table_cfg_hit                ; // TABLE_CFG address hit 
  logic         paddr_table_addr_hit               ; // TABLE_ADDR address hit 
  logic         paddr_table_wr_data_hit            ; // TABLE_WR_DATA address hit 
  logic         paddr_table_wrinc_data_hit         ; // TABLE_WRINC_DATA address hit 
  logic         paddr_table_wrdec_data_hit         ; // TABLE_WRDEC_DATA address hit 
  logic         paddr_table_rd_data_hit            ; // TABLE_RD_DATA address hit 
  logic         paddr_table_rdinc_data_hit         ; // TABLE_RDINC_DATA address hit 
  logic         paddr_table_rddec_data_hit         ; // TABLE_RDDEC_DATA address hit 
  logic         paddr_test_hit                     ; // TEST address hit 
  logic         paddr_reginfo_hit                  ; // REGINFO address hit 
  logic         paddr_id_hit                       ; // ID address hit 
//marker_template_end 

  // Register FFs
  //marker_template_start 
  //[% PROCESS template/general.template%]
  //[% PROCESS template/apb.template%] [% 
  // SET RegList = data.filter_reg.data;
  // INCLUDE apb_reg_signal_ff;
  // %]
  //marker_template_code 
  logic         ctrl_filt_en_ff                    ; // CTRL.FILT_EN FF 
  logic         ctrl_clkoff_ff                     ; // CTRL.CLKOFF FF 
  logic         ctrl_bypass_ff                     ; // CTRL.BYPASS FF 
  logic         cfg_delay_sel_ff                   ; // CFG.DELAY_SEL FF 
  logic [ 12:8] cfg_delay_val_ff                   ; // CFG.DELAY_VAL FF 
  logic         filt_ctrl_filt0_en_ff              ; // FILT_CTRL.FILT0_EN FF 
  logic         filt_ctrl_filt1_en_ff              ; // FILT_CTRL.FILT1_EN FF 
  logic         filt_ctrl_filt2_en_ff              ; // FILT_CTRL.FILT2_EN FF 
  logic         filt_ctrl_filt3_en_ff              ; // FILT_CTRL.FILT3_EN FF 
  logic         filt_ctrl_filt4_en_ff              ; // FILT_CTRL.FILT4_EN FF 
  logic         filt_ctrl_filt5_en_ff              ; // FILT_CTRL.FILT5_EN FF 
  logic         filt_ctrl_filt6_en_ff              ; // FILT_CTRL.FILT6_EN FF 
  logic         filt_ctrl_filt7_en_ff              ; // FILT_CTRL.FILT7_EN FF 
  logic         filt_ctrl_filt8_en_ff              ; // FILT_CTRL.FILT8_EN FF 
  logic         filt_ctrl_filt9_en_ff              ; // FILT_CTRL.FILT9_EN FF 
  logic         filt_ctrl_filt10_en_ff             ; // FILT_CTRL.FILT10_EN FF 
  logic         filt_ctrl_filt11_en_ff             ; // FILT_CTRL.FILT11_EN FF 
  logic         filt_ctrl_filt12_en_ff             ; // FILT_CTRL.FILT12_EN FF 
  logic         filt_ctrl_filt13_en_ff             ; // FILT_CTRL.FILT13_EN FF 
  logic         filt_ctrl_filt14_en_ff             ; // FILT_CTRL.FILT14_EN FF 
  logic         filt_ctrl_filt15_en_ff             ; // FILT_CTRL.FILT15_EN FF 
  logic         filt_ctrl_filt16_en_ff             ; // FILT_CTRL.FILT16_EN FF 
  logic         filt_ctrl_filt17_en_ff             ; // FILT_CTRL.FILT17_EN FF 
  logic [  5:0] gain_val_ff                        ; // GAIN.VAL FF 
  logic         table_cfg_direct_ff                ; // TABLE_CFG.DIRECT FF 
  logic [  7:0] table_addr_addr_ff                 ; // TABLE_ADDR.ADDR FF 
  logic         table_addr_addr_wtrig_ff           ; // TABLE_ADDR.ADDR write trigger FF 
  logic [ 23:0] table_wr_data_data_ff              ; // TABLE_WR_DATA.DATA FF 
  logic         table_wr_data_data_wtrig_ff        ; // TABLE_WR_DATA.DATA write trigger FF 
  logic         test_filtclkoff_ff                 ; // TEST.FILTCLKOFF FF 
//marker_template_end 
  


  // -------------------------------------------------------------------------
  // Implementation
  // -------------------------------------------------------------------------

    //marker_template_start 
    //[% PROCESS template/general.template%]
    //[% PROCESS template/apb.template%] [% 
    // SET RegList = data.filter_reg.data;
    // INCLUDE apb_reg_module_clk_gating;
    // %]
    //marker_template_code 
    `ifndef FPGA // ASIC specific
      // Clock gating signals
      logic clk_gating_en;
      logic clk_gated;

      assign clk_gating_en = psel_i
                          | table_addr_addr_den_i
                          | table_addr_addr_wtrig_ff
                          | table_wr_data_data_den_i
                          | table_wr_data_data_wtrig_ff;

      // gate the clock for the internal FFs
      std_clkgate_scan u_clk_gate(
        .CLK    (clk),           // I; clock input
        .EN     (clk_gating_en), // I; clock gating enable
        .SE     (scan_enable_i), // I; clock gating scan enable
        .CLK_OUT(clk_gated)      // O; gated clock
      );
    `else // FPGA specific
      logic clk_gated; 
      assign clk_gated = clk;
    `endif
//marker_template_end 
   
  // store address
  always_ff @(posedge clk_gated, negedge presetn_i) begin
    if (~presetn_i) begin
      paddr_ff <= 8'h00;
    end else begin 
      if (psel_i & ~penable_i) begin 
        paddr_ff <= paddr_i;
      end   
    end 
  end   
  

  // Address decoder ----------------------------------------------------------
  always_comb begin
    //marker_template_start 
    //[% PROCESS template/general.template%]
    //[% PROCESS template/apb.template%] [% 
    // SET RegList = data.filter_reg.data;
    // INCLUDE apb_reg_addr_hit;
    // %]
    //marker_template_code 
    // Default value
    paddr_ctrl_hit                 = 1'b0; 
    paddr_cfg_hit                  = 1'b0; 
    paddr_filt_ctrl_hit            = 1'b0; 
    paddr_gain_hit                 = 1'b0; 
    paddr_table_cfg_hit            = 1'b0; 
    paddr_table_addr_hit           = 1'b0; 
    paddr_table_wr_data_hit        = 1'b0; 
    paddr_table_wrinc_data_hit     = 1'b0; 
    paddr_table_wrdec_data_hit     = 1'b0; 
    paddr_table_rd_data_hit        = 1'b0; 
    paddr_table_rdinc_data_hit     = 1'b0; 
    paddr_table_rddec_data_hit     = 1'b0; 
    paddr_test_hit                 = 1'b0; 
    paddr_reginfo_hit              = 1'b0; 
    paddr_id_hit                   = 1'b0; 
    case (paddr_ff)
      (8'h10): paddr_ctrl_hit                 = 1'b1; 
      (8'h14): paddr_cfg_hit                  = 1'b1; 
      (8'h18): paddr_filt_ctrl_hit            = 1'b1; 
      (8'h1C): paddr_gain_hit                 = 1'b1; 
      (8'h40): paddr_table_cfg_hit            = 1'b1; 
      (8'h44): paddr_table_addr_hit           = 1'b1; 
      (8'h48): paddr_table_wr_data_hit        = 1'b1; 
      (8'h4C): paddr_table_wrinc_data_hit     = 1'b1; 
      (8'h50): paddr_table_wrdec_data_hit     = 1'b1; 
      (8'h54): paddr_table_rd_data_hit        = 1'b1; 
      (8'h58): paddr_table_rdinc_data_hit     = 1'b1; 
      (8'h5C): paddr_table_rddec_data_hit     = 1'b1; 
      (8'hF0): paddr_test_hit                 = 1'b1; 
      (8'hF8): paddr_reginfo_hit              = 1'b1; 
      (8'hFC): paddr_id_hit                   = 1'b1; 
    endcase
//marker_template_end 
  end 


  // Register file ------------------------------------------------------------
  //   write via APB
  //   write from HW
  always_ff @(posedge clk_gated, negedge presetn_i) begin
    if (~presetn_i) begin
      //marker_template_start 
      //[% PROCESS template/general.template%]
      //[% PROCESS template/apb.template%] [% 
      // SET RegList = data.filter_reg.data;
      // INCLUDE apb_reg_ff_reset;
      // %]
      //marker_template_code 
      ctrl_filt_en_ff                     <= 1'b0; 
      ctrl_clkoff_ff                      <= 1'b1; 
      ctrl_bypass_ff                      <= 1'b1; 
      cfg_delay_sel_ff                    <= 1'b0; 
      cfg_delay_val_ff                    <= 5'h00; 
      filt_ctrl_filt0_en_ff               <= 1'b0; 
      filt_ctrl_filt1_en_ff               <= 1'b0; 
      filt_ctrl_filt2_en_ff               <= 1'b0; 
      filt_ctrl_filt3_en_ff               <= 1'b0; 
      filt_ctrl_filt4_en_ff               <= 1'b0; 
      filt_ctrl_filt5_en_ff               <= 1'b0; 
      filt_ctrl_filt6_en_ff               <= 1'b0; 
      filt_ctrl_filt7_en_ff               <= 1'b0; 
      filt_ctrl_filt8_en_ff               <= 1'b0; 
      filt_ctrl_filt9_en_ff               <= 1'b0; 
      filt_ctrl_filt10_en_ff              <= 1'b0; 
      filt_ctrl_filt11_en_ff              <= 1'b0; 
      filt_ctrl_filt12_en_ff              <= 1'b0; 
      filt_ctrl_filt13_en_ff              <= 1'b0; 
      filt_ctrl_filt14_en_ff              <= 1'b0; 
      filt_ctrl_filt15_en_ff              <= 1'b0; 
      filt_ctrl_filt16_en_ff              <= 1'b0; 
      filt_ctrl_filt17_en_ff              <= 1'b0; 
      gain_val_ff                         <= 6'h04; 
      table_cfg_direct_ff                 <= 1'b0; 
      table_addr_addr_ff                  <= 8'h00; 
      table_addr_addr_wtrig_ff            <= 1'b0; 
      table_wr_data_data_ff               <= 24'h000000; 
      table_wr_data_data_wtrig_ff         <= 1'b0; 
      test_filtclkoff_ff                  <= 1'b0; 
//marker_template_end     
    end else begin 
      if (psel_i && pwrite_i && penable_i) begin
      // write to register via APB bus
      //marker_template_start 
      //[% PROCESS template/general.template%]
      //[% PROCESS template/apb.template%] [% 
      // SET RegList = data.filter_reg.data;
      // INCLUDE apb_reg_ff_write_data;
      // %]
      //marker_template_code 
      if (paddr_ctrl_hit) begin 
          ctrl_filt_en_ff                     <= pwdata_i[  0:0]; 
          ctrl_clkoff_ff                      <= pwdata_i[  1:1]; 
          ctrl_bypass_ff                      <= pwdata_i[  2:2]; 
      end
      if (paddr_cfg_hit) begin 
          cfg_delay_sel_ff                    <= pwdata_i[  0:0]; 
          cfg_delay_val_ff[ 12:8]             <= pwdata_i[ 12:8]; 
      end
      if (paddr_filt_ctrl_hit) begin 
          filt_ctrl_filt0_en_ff               <= pwdata_i[  0:0]; 
          filt_ctrl_filt1_en_ff               <= pwdata_i[  1:1]; 
          filt_ctrl_filt2_en_ff               <= pwdata_i[  2:2]; 
          filt_ctrl_filt3_en_ff               <= pwdata_i[  3:3]; 
          filt_ctrl_filt4_en_ff               <= pwdata_i[  4:4]; 
          filt_ctrl_filt5_en_ff               <= pwdata_i[  5:5]; 
          filt_ctrl_filt6_en_ff               <= pwdata_i[  6:6]; 
          filt_ctrl_filt7_en_ff               <= pwdata_i[  7:7]; 
          filt_ctrl_filt8_en_ff               <= pwdata_i[  8:8]; 
          filt_ctrl_filt9_en_ff               <= pwdata_i[  9:9]; 
          filt_ctrl_filt10_en_ff              <= pwdata_i[10:10]; 
          filt_ctrl_filt11_en_ff              <= pwdata_i[11:11]; 
          filt_ctrl_filt12_en_ff              <= pwdata_i[12:12]; 
          filt_ctrl_filt13_en_ff              <= pwdata_i[13:13]; 
          filt_ctrl_filt14_en_ff              <= pwdata_i[14:14]; 
          filt_ctrl_filt15_en_ff              <= pwdata_i[15:15]; 
          filt_ctrl_filt16_en_ff              <= pwdata_i[16:16]; 
          filt_ctrl_filt17_en_ff              <= pwdata_i[17:17]; 
      end
      if (paddr_gain_hit) begin 
          gain_val_ff[  5:0]                  <= pwdata_i[  5:0]; 
      end
      if (paddr_table_cfg_hit) begin 
        if (pprivilege_i >= 2'd1) begin 
          table_cfg_direct_ff                 <= pwdata_i[  0:0]; 
        end 
      end
      if (paddr_table_addr_hit) begin 
        if (pprivilege_i >= 2'd1) begin 
          table_addr_addr_ff[  7:0]           <= pwdata_i[  7:0]; 
        end 
      end
      if (paddr_table_wr_data_hit) begin 
        if (pprivilege_i >= 2'd1) begin 
          table_wr_data_data_ff[ 23:0]        <= pwdata_i[ 23:0]; 
        end 
      end
      if (paddr_test_hit) begin 
        if (pprivilege_i >= 2'd1) begin 
          test_filtclkoff_ff                  <= pwdata_i[  0:0]; 
        end 
      end
//marker_template_end     
    end
    // HW update of register    
    //marker_template_start 
    //[% PROCESS template/general.template%]
    //[% PROCESS template/apb.template%] [% 
    // SET RegList = data.filter_reg.data;
    // INCLUDE apb_reg_ff_hw_data;
    // %]
    //marker_template_code 
    // read and write trigger 
    table_addr_addr_wtrig_ff            <= psel_i & penable_i &  pwrite_i & paddr_table_addr_hit; 
    table_wr_data_data_wtrig_ff         <= psel_i & penable_i &  pwrite_i & paddr_table_wr_data_hit; 
    if (table_addr_addr_den_i) begin
      table_addr_addr_ff <= table_addr_addr_d_i; 
    end
    if (table_wr_data_data_den_i) begin
      table_wr_data_data_ff <= table_wr_data_data_d_i; 
    end
//marker_template_end     
    end    
  end
    

  // Read data generation -----------------------------------------------------
  always_comb begin
      prdata_o = 32'h00000000;
      if (psel_i && ~pwrite_i && penable_i) begin
        // write to register via APB bus
        //marker_template_start 
        //[% PROCESS template/general.template%]
        //[% PROCESS template/apb.template%] [% 
        // SET RegList = data.filter_reg.data;
        // INCLUDE apb_reg_read_data;
        // %]
        //marker_template_code 
        if (paddr_ctrl_hit) begin 
            prdata_o[  0:0] = ctrl_filt_en_ff; 
            prdata_o[  1:1] = ctrl_clkoff_ff; 
            prdata_o[  2:2] = ctrl_bypass_ff; 
        end
        if (paddr_cfg_hit) begin 
            prdata_o[  0:0] = cfg_delay_sel_ff; 
            prdata_o[ 12:8] = cfg_delay_val_ff; 
        end
        if (paddr_filt_ctrl_hit) begin 
            prdata_o[  0:0] = filt_ctrl_filt0_en_ff; 
            prdata_o[  1:1] = filt_ctrl_filt1_en_ff; 
            prdata_o[  2:2] = filt_ctrl_filt2_en_ff; 
            prdata_o[  3:3] = filt_ctrl_filt3_en_ff; 
            prdata_o[  4:4] = filt_ctrl_filt4_en_ff; 
            prdata_o[  5:5] = filt_ctrl_filt5_en_ff; 
            prdata_o[  6:6] = filt_ctrl_filt6_en_ff; 
            prdata_o[  7:7] = filt_ctrl_filt7_en_ff; 
            prdata_o[  8:8] = filt_ctrl_filt8_en_ff; 
            prdata_o[  9:9] = filt_ctrl_filt9_en_ff; 
            prdata_o[10:10] = filt_ctrl_filt10_en_ff; 
            prdata_o[11:11] = filt_ctrl_filt11_en_ff; 
            prdata_o[12:12] = filt_ctrl_filt12_en_ff; 
            prdata_o[13:13] = filt_ctrl_filt13_en_ff; 
            prdata_o[14:14] = filt_ctrl_filt14_en_ff; 
            prdata_o[15:15] = filt_ctrl_filt15_en_ff; 
            prdata_o[16:16] = filt_ctrl_filt16_en_ff; 
            prdata_o[17:17] = filt_ctrl_filt17_en_ff; 
        end
        if (paddr_gain_hit) begin 
            prdata_o[  5:0] = gain_val_ff; 
        end
        if (paddr_table_cfg_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[  0:0] = table_cfg_direct_ff; 
          end else begin
            prdata_o[  0:0] = 1'd0; 
          end
        end
        if (paddr_table_addr_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[  7:0] = table_addr_addr_ff; 
          end else begin
            prdata_o[  7:0] = 8'd0; 
          end
        end
        if (paddr_table_wr_data_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[ 23:0] = table_wr_data_data_ff; 
          end else begin
            prdata_o[ 23:0] = 24'd0; 
          end
        end
        if (paddr_table_wrinc_data_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[ 23:0] = table_wrinc_data_data_d_i; 
          end else begin
            prdata_o[ 23:0] = 24'd0; 
          end
        end
        if (paddr_table_wrdec_data_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[ 23:0] = table_wrdec_data_data_d_i; 
          end else begin
            prdata_o[ 23:0] = 24'd0; 
          end
        end
        if (paddr_table_rd_data_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[ 23:0] = table_rd_data_data_d_i; 
          end else begin
            prdata_o[ 23:0] = 24'd0; 
          end
        end
        if (paddr_table_rdinc_data_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[ 23:0] = table_rdinc_data_data_d_i; 
          end else begin
            prdata_o[ 23:0] = 24'd0; 
          end
        end
        if (paddr_table_rddec_data_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[ 23:0] = table_rddec_data_data_d_i; 
          end else begin
            prdata_o[ 23:0] = 24'd0; 
          end
        end
        if (paddr_test_hit) begin 
          if (pprivilege_i >= 2'd1) begin
            prdata_o[  0:0] = test_filtclkoff_ff; 
          end else begin
            prdata_o[  0:0] = 1'd0; 
          end
        end
        if (paddr_reginfo_hit) begin 
            prdata_o[ 17:0] = reginfo_date_d_i; 
        end
        if (paddr_id_hit) begin 
            prdata_o[  7:0] = id_peripheral_type_d_i; 
            prdata_o[ 15:8] = id_version_d_i; 
        end
//marker_template_end     
    end  
  end
  
    
  // Output signals -----------------------------------------------------------  
  assign pready_o  = psel_i & penable_i;
  assign pslverr_o = 1'b0;
  
  assign irq_o     =  1'b0;
  
  //marker_template_start 
  //[% PROCESS template/general.template%]
  //[% PROCESS template/apb.template%] [% 
  // SET RegList = data.filter_reg.data;
  // INCLUDE apb_reg_output_signals;
  // %]
  //marker_template_code 
  assign ctrl_filt_en_q_o                    = ctrl_filt_en_ff; 
  assign ctrl_clkoff_q_o                     = ctrl_clkoff_ff; 
  assign ctrl_bypass_q_o                     = ctrl_bypass_ff; 
  assign cfg_delay_sel_q_o                   = cfg_delay_sel_ff; 
  assign cfg_delay_val_q_o                   = cfg_delay_val_ff; 
  assign filt_ctrl_filt0_en_q_o              = filt_ctrl_filt0_en_ff; 
  assign filt_ctrl_filt1_en_q_o              = filt_ctrl_filt1_en_ff; 
  assign filt_ctrl_filt2_en_q_o              = filt_ctrl_filt2_en_ff; 
  assign filt_ctrl_filt3_en_q_o              = filt_ctrl_filt3_en_ff; 
  assign filt_ctrl_filt4_en_q_o              = filt_ctrl_filt4_en_ff; 
  assign filt_ctrl_filt5_en_q_o              = filt_ctrl_filt5_en_ff; 
  assign filt_ctrl_filt6_en_q_o              = filt_ctrl_filt6_en_ff; 
  assign filt_ctrl_filt7_en_q_o              = filt_ctrl_filt7_en_ff; 
  assign filt_ctrl_filt8_en_q_o              = filt_ctrl_filt8_en_ff; 
  assign filt_ctrl_filt9_en_q_o              = filt_ctrl_filt9_en_ff; 
  assign filt_ctrl_filt10_en_q_o             = filt_ctrl_filt10_en_ff; 
  assign filt_ctrl_filt11_en_q_o             = filt_ctrl_filt11_en_ff; 
  assign filt_ctrl_filt12_en_q_o             = filt_ctrl_filt12_en_ff; 
  assign filt_ctrl_filt13_en_q_o             = filt_ctrl_filt13_en_ff; 
  assign filt_ctrl_filt14_en_q_o             = filt_ctrl_filt14_en_ff; 
  assign filt_ctrl_filt15_en_q_o             = filt_ctrl_filt15_en_ff; 
  assign filt_ctrl_filt16_en_q_o             = filt_ctrl_filt16_en_ff; 
  assign filt_ctrl_filt17_en_q_o             = filt_ctrl_filt17_en_ff; 
  assign gain_val_q_o                        = gain_val_ff; 
  assign table_cfg_direct_q_o                = table_cfg_direct_ff; 
  assign table_addr_addr_q_o                 = table_addr_addr_ff; 
  assign table_addr_addr_wtrig_o             = table_addr_addr_wtrig_ff; 
  assign table_wr_data_data_q_o              = table_wr_data_data_ff; 
  assign table_wr_data_data_wtrig_o          = table_wr_data_data_wtrig_ff; 
  assign table_wrinc_data_data_q_o           = pwdata_i[ 23:0]; 
  assign table_wrinc_data_data_wtrig_o       = psel_i & penable_i &  pwrite_i & paddr_table_wrinc_data_hit; 
  assign table_wrdec_data_data_q_o           = pwdata_i[ 23:0]; 
  assign table_wrdec_data_data_wtrig_o       = psel_i & penable_i &  pwrite_i & paddr_table_wrdec_data_hit; 
  assign table_rd_data_data_rtrig_o          = psel_i & penable_i & ~pwrite_i & paddr_table_rd_data_hit; 
  assign table_rdinc_data_data_rtrig_o       = psel_i & penable_i & ~pwrite_i & paddr_table_rdinc_data_hit; 
  assign table_rddec_data_data_rtrig_o       = psel_i & penable_i & ~pwrite_i & paddr_table_rddec_data_hit; 
  assign test_filtclkoff_q_o                 = test_filtclkoff_ff; 
//marker_template_end     
   
  
endmodule 
