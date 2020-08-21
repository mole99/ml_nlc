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
//  File             $URL: http://10.3.34.6:20000/svn/leda_1/trunk/2v0/units/filter/rtl/filter_top.sv $
//  Author
//  Date             $LastChangedDate: 2020-05-15 17:44:03 +0200 (Fri, 15 May 2020) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 7913 $
//
// Description       Filter toplevel 
//
//
//  ----------------------------------------------------------------------------
//                    Revision History (written manually)
//  ----------------------------------------------------------------------------
//
//  Date        Author     Change Description
//  ==========  =========  ========================================================
//  2017-03-09  kstrohma   Initial release
//  2019-01-07  lababei    Removed input 1, a single input source is used
//                         There are 2 output interfaces (an extra one will be added for the woofer)
//  2019-05-21  lababei    Replaced GIF interfaces with AXI stream interfaces. Using the new HLS model with woofer support
//  2019-06-18  lababei    Using apb_memory_access_ctrl module for table access
//  2019-10-01  dholler    fixed fpga clock gating
//  2019-12-27  kstrohma   adapted interface data bit width to 24bit
//  2020-01-27  kstrohma   updated apb_memory_access_ctrl with additional pin table_cfg_addr_dbl_q_i
//                         Updated module name to filter_top
//                         Removed IRQs
//  2020-02-14  kstrohma   Removed unused input table_wrdec_data_data_q_i of memory_accessctrl
//  2020-02-24  kstrohma   Updated power pins of SRAM
//  2020-04-04  kstrohma   Fixed clock enable sync reset
//  2020-04-17  kstrohma   Enabled gated clock for filter while sync reset is active
//  2020-04-23  kstrohma   Avoid clocking of SRAMs while scan_enable active 
//  2020-05-15  kstrohma   Fixed item above

`default_nettype none
`include "dig_top.h"
module filter_top (
  input       wire         clk                    , // I; System clock 
  input       wire         reset_ni               , // I; active low reset 
  output      logic        irq_o                  , // O; Interrupt 
  input       wire         reset_sync_ni          , // I; active low reset, synchronized    

  input       wire         scan_enable_i          , // I; Scan enable
  
  // APB interface signals
  input       wire         presetn_i              , // I; APB interface domain reset 
  input       wire         psel_i                 , // I; APB select 
  input       wire         penable_i              , // I; APB enable 
  input       wire         pwrite_i               , // I; APB write 
  input       wire  [ 7:0] paddr_i                , // I; APB address 
  input       wire  [31:0] pwdata_i               , // I; APB write data 
  output      logic        pready_o               , // O; APB ready 
  output      logic [31:0] prdata_o               , // O; APB read data 
  output      logic        pslverr_o              , // O; APB slave error 
  input       wire   [1:0] pprivilege_i           , // I; APB privilege mode 0 - low, 3 - high
  
  // Data interface 
  input       wire  [23:0] filt_in_slv_tdata_i    ,   // I; AXI data input 0 for filter (24bit --> 2F22)
  input       wire         filt_in_slv_tvalid_i   ,   // I; AXI data valid
  output      logic        filt_in_slv_tready_o   ,   // O; AXI data ready

  // Data interface 
  output      logic [23:0] filt_out0_mst_tdata_o  ,   // O; Out0 - AXI data output for filter (24bit --> 2F22)
  output      logic        filt_out0_mst_tvalid_o ,   // O; Out0 - AXI data valid
  input       wire         filt_out0_mst_tready_i ,   // I; Out0 - AXI data ready

  output      logic [23:0] filt_out1_mst_tdata_o  ,   // O; Out1 - AXI data output for filter (24bit --> 2F22)
  output      logic        filt_out1_mst_tvalid_o ,   // O; Out1 - AXI data valid
  input       wire         filt_out1_mst_tready_i     // I; Out1 - AXI data ready   
);
  
  
  // -------------------------------------------------------------------------
  // Definition 
  // -------------------------------------------------------------------------
  import filter_apb_reg_pkg::*;
  
  // APB register signals
  //marker_template_start 
  //[% PROCESS template/general.template%]
  //[% PROCESS template/apb.template%] [% 
  // SET RegList = data.filter_reg.data;
  // INCLUDE apb_reg_inst_signal;
  // %]
  //marker_template_code 
  // Based on RegList version 0.1 from 3. Apr 2020 
  logic         ctrl_filt_en_q                     ; // CTRL.FILT_EN register output 
  logic         ctrl_clkoff_q                      ; // CTRL.CLKOFF register output 
  logic         ctrl_bypass_q                      ; // CTRL.BYPASS register output 
  logic         cfg_delay_sel_q                    ; // CFG.DELAY_SEL register output 
  logic [ 12:8] cfg_delay_val_q                    ; // CFG.DELAY_VAL register output 
  logic         filt_ctrl_filt0_en_q               ; // FILT_CTRL.FILT0_EN register output 
  logic         filt_ctrl_filt1_en_q               ; // FILT_CTRL.FILT1_EN register output 
  logic         filt_ctrl_filt2_en_q               ; // FILT_CTRL.FILT2_EN register output 
  logic         filt_ctrl_filt3_en_q               ; // FILT_CTRL.FILT3_EN register output 
  logic         filt_ctrl_filt4_en_q               ; // FILT_CTRL.FILT4_EN register output 
  logic         filt_ctrl_filt5_en_q               ; // FILT_CTRL.FILT5_EN register output 
  logic         filt_ctrl_filt6_en_q               ; // FILT_CTRL.FILT6_EN register output 
  logic         filt_ctrl_filt7_en_q               ; // FILT_CTRL.FILT7_EN register output 
  logic         filt_ctrl_filt8_en_q               ; // FILT_CTRL.FILT8_EN register output 
  logic         filt_ctrl_filt9_en_q               ; // FILT_CTRL.FILT9_EN register output 
  logic         filt_ctrl_filt10_en_q              ; // FILT_CTRL.FILT10_EN register output 
  logic         filt_ctrl_filt11_en_q              ; // FILT_CTRL.FILT11_EN register output 
  logic         filt_ctrl_filt12_en_q              ; // FILT_CTRL.FILT12_EN register output 
  logic         filt_ctrl_filt13_en_q              ; // FILT_CTRL.FILT13_EN register output 
  logic         filt_ctrl_filt14_en_q              ; // FILT_CTRL.FILT14_EN register output 
  logic         filt_ctrl_filt15_en_q              ; // FILT_CTRL.FILT15_EN register output 
  logic         filt_ctrl_filt16_en_q              ; // FILT_CTRL.FILT16_EN register output 
  logic         filt_ctrl_filt17_en_q              ; // FILT_CTRL.FILT17_EN register output 
  logic [  5:0] gain_val_q                         ; // GAIN.VAL register output 
  logic         table_cfg_direct_q                 ; // TABLE_CFG.DIRECT register output 
  logic [  7:0] table_addr_addr_q                  ; // TABLE_ADDR.ADDR register output 
  logic [  7:0] table_addr_addr_d                  ; // TABLE_ADDR.ADDR register input 
  logic         table_addr_addr_den                ; // TABLE_ADDR.ADDR register data enable 
  logic         table_addr_addr_wtrig              ; // TABLE_ADDR.ADDR write trigger 
  logic [ 23:0] table_wr_data_data_q               ; // TABLE_WR_DATA.DATA register output 
  logic [ 23:0] table_wr_data_data_d               ; // TABLE_WR_DATA.DATA register input 
  logic         table_wr_data_data_den             ; // TABLE_WR_DATA.DATA register data enable 
  logic         table_wr_data_data_wtrig           ; // TABLE_WR_DATA.DATA write trigger 
  logic [ 23:0] table_wrinc_data_data_q            ; // TABLE_WRINC_DATA.DATA register output 
  logic [ 23:0] table_wrinc_data_data_d            ; // TABLE_WRINC_DATA.DATA register input 
  logic         table_wrinc_data_data_wtrig        ; // TABLE_WRINC_DATA.DATA write trigger 
  logic [ 23:0] table_wrdec_data_data_q            ; // TABLE_WRDEC_DATA.DATA register output 
  logic [ 23:0] table_wrdec_data_data_d            ; // TABLE_WRDEC_DATA.DATA register input 
  logic         table_wrdec_data_data_wtrig        ; // TABLE_WRDEC_DATA.DATA write trigger 
  logic [ 23:0] table_rd_data_data_d               ; // TABLE_RD_DATA.DATA register input 
  logic         table_rd_data_data_rtrig           ; // TABLE_RD_DATA.DATA read trigger 
  logic [ 23:0] table_rdinc_data_data_d            ; // TABLE_RDINC_DATA.DATA register input 
  logic         table_rdinc_data_data_rtrig        ; // TABLE_RDINC_DATA.DATA read trigger 
  logic [ 23:0] table_rddec_data_data_d            ; // TABLE_RDDEC_DATA.DATA register input 
  logic         table_rddec_data_data_rtrig        ; // TABLE_RDDEC_DATA.DATA read trigger 
  logic         test_filtclkoff_q                  ; // TEST.FILTCLKOFF register output 
  logic [ 17:0] reginfo_date_d                     ; // REGINFO.DATE register input 
  logic [  7:0] id_peripheral_type_d               ; // ID.PERIPHERAL_TYPE register input 
  logic [ 15:8] id_version_d                       ; // ID.VERSION register input 
//marker_template_end 

  logic        filt_in_slv_tready_o_int;
  
  logic        filt_out0_mst_tvalid_o_int;
  logic [23:0] filt_out0_mst_tdata_o_int;
  logic        filt_out0_mst_bypass_tvalid_ff;
  
  logic        filt_out1_mst_tvalid_o_int;
  logic [23:0] filt_out1_mst_tdata_o_int;
  logic        filt_out1_mst_bypass_tvalid_ff;
  
  logic        filt_start               ; // condition to start the filter
   
  logic        ctrl_filt_en_q_d_ff      ; // enable delayed
  logic        ctrl_filt_en_q_rise      ; // enable rising edge
  
  logic ap_done;
  logic ap_idle;
  logic ap_ce;
  logic ap_start;
  
  logic buf_clr_ff;
  
  logic  [6:0] coeff_mem_address0;
  logic        coeff_mem_ce0;
  logic [15:0] coeff_mem_d0;
  logic [15:0] coeff_mem_q0;
  logic        coeff_mem_we0;
  
  logic  [6:0] data_mem_address0;
  logic        data_mem_ce0;
  logic [23:0] data_mem_d0;
  logic [23:0] data_mem_q0;
  logic        data_mem_we0;  
  
  logic table_rd; // Table read pulse
  logic table_wr; // Table read pulse  
  
  logic clk_data_ram;
  
  logic        data_ram_ce_mux;
  logic        data_ram_cen_mux;
  logic        data_ram_wen_mux;
  logic [ 6:0] data_ram_addr_mux;
  logic [23:0] data_ram_din_mux;
  logic [23:0] data_ram_dout;
  
  logic clk_coeff_ram;
  
  logic        coeff_ram_ce_mux;
  logic        coeff_ram_cen_mux;
  logic        coeff_ram_wen_mux;
  logic [ 6:0] coeff_ram_addr_mux;
  logic [15:0] coeff_ram_din_mux;  
  logic [15:0] coeff_ram_dout; 
  
  
  // -------------------------------------------------------------------------
  // Implementation
  // -------------------------------------------------------------------------
  
  `ifdef POWER_PINS
    wire vdd_local = 1'b0;
    wire vss_local = 1'b0;
  `endif
  
  
  filter_apb_reg u_apb_reg (
    .clk                       (clk     ) , // System clock 
    .reset_ni                  (reset_ni) , // active low reset 
  
    .scan_enable_i             (scan_enable_i), // I; Scan enable
  
    // APB interface signals
    .presetn_i                 (presetn_i   ), // APB interface domain reset 
    .psel_i                    (psel_i      ), // APB select 
    .penable_i                 (penable_i   ), // APB enable 
    .pwrite_i                  (pwrite_i    ), // APB write 
    .paddr_i                   (paddr_i     ), // APB address 
    .pwdata_i                  (pwdata_i    ), // APB write data 
    .pready_o                  (pready_o    ), // APB ready 
    .prdata_o                  (prdata_o    ), // APB read data 
    .pslverr_o                 (pslverr_o   ), // APB slave error 
    .pprivilege_i              (pprivilege_i), // APB privilege mode 0 - low, 3 - high
    
    //marker_template_start 
    //[% PROCESS template/general.template%]
    //[% PROCESS template/apb.template%] [% 
    // SET RegList = data.filter_reg.data;
    // INCLUDE apb_reg_inst_inst;
    // %]
    //marker_template_code 
    // Based on RegList version 0.1 from 3. Apr 2020 
    .ctrl_filt_en_q_o                    (ctrl_filt_en_q                     ), // O; CTRL.FILT_EN register output 
    .ctrl_clkoff_q_o                     (ctrl_clkoff_q                      ), // O; CTRL.CLKOFF register output 
    .ctrl_bypass_q_o                     (ctrl_bypass_q                      ), // O; CTRL.BYPASS register output 
    .cfg_delay_sel_q_o                   (cfg_delay_sel_q                    ), // O; CFG.DELAY_SEL register output 
    .cfg_delay_val_q_o                   (cfg_delay_val_q                    ), // O; CFG.DELAY_VAL register output 
    .filt_ctrl_filt0_en_q_o              (filt_ctrl_filt0_en_q               ), // O; FILT_CTRL.FILT0_EN register output 
    .filt_ctrl_filt1_en_q_o              (filt_ctrl_filt1_en_q               ), // O; FILT_CTRL.FILT1_EN register output 
    .filt_ctrl_filt2_en_q_o              (filt_ctrl_filt2_en_q               ), // O; FILT_CTRL.FILT2_EN register output 
    .filt_ctrl_filt3_en_q_o              (filt_ctrl_filt3_en_q               ), // O; FILT_CTRL.FILT3_EN register output 
    .filt_ctrl_filt4_en_q_o              (filt_ctrl_filt4_en_q               ), // O; FILT_CTRL.FILT4_EN register output 
    .filt_ctrl_filt5_en_q_o              (filt_ctrl_filt5_en_q               ), // O; FILT_CTRL.FILT5_EN register output 
    .filt_ctrl_filt6_en_q_o              (filt_ctrl_filt6_en_q               ), // O; FILT_CTRL.FILT6_EN register output 
    .filt_ctrl_filt7_en_q_o              (filt_ctrl_filt7_en_q               ), // O; FILT_CTRL.FILT7_EN register output 
    .filt_ctrl_filt8_en_q_o              (filt_ctrl_filt8_en_q               ), // O; FILT_CTRL.FILT8_EN register output 
    .filt_ctrl_filt9_en_q_o              (filt_ctrl_filt9_en_q               ), // O; FILT_CTRL.FILT9_EN register output 
    .filt_ctrl_filt10_en_q_o             (filt_ctrl_filt10_en_q              ), // O; FILT_CTRL.FILT10_EN register output 
    .filt_ctrl_filt11_en_q_o             (filt_ctrl_filt11_en_q              ), // O; FILT_CTRL.FILT11_EN register output 
    .filt_ctrl_filt12_en_q_o             (filt_ctrl_filt12_en_q              ), // O; FILT_CTRL.FILT12_EN register output 
    .filt_ctrl_filt13_en_q_o             (filt_ctrl_filt13_en_q              ), // O; FILT_CTRL.FILT13_EN register output 
    .filt_ctrl_filt14_en_q_o             (filt_ctrl_filt14_en_q              ), // O; FILT_CTRL.FILT14_EN register output 
    .filt_ctrl_filt15_en_q_o             (filt_ctrl_filt15_en_q              ), // O; FILT_CTRL.FILT15_EN register output 
    .filt_ctrl_filt16_en_q_o             (filt_ctrl_filt16_en_q              ), // O; FILT_CTRL.FILT16_EN register output 
    .filt_ctrl_filt17_en_q_o             (filt_ctrl_filt17_en_q              ), // O; FILT_CTRL.FILT17_EN register output 
    .gain_val_q_o                        (gain_val_q                         ), // O; GAIN.VAL register output 
    .table_cfg_direct_q_o                (table_cfg_direct_q                 ), // O; TABLE_CFG.DIRECT register output 
    .table_addr_addr_q_o                 (table_addr_addr_q                  ), // O; TABLE_ADDR.ADDR register output 
    .table_addr_addr_d_i                 (table_addr_addr_d                  ), // I; TABLE_ADDR.ADDR register input 
    .table_addr_addr_den_i               (table_addr_addr_den                ), // I; TABLE_ADDR.ADDR register input enable 
    .table_addr_addr_wtrig_o             (table_addr_addr_wtrig              ), // O; TABLE_ADDR.ADDR write trigger 
    .table_wr_data_data_q_o              (table_wr_data_data_q               ), // O; TABLE_WR_DATA.DATA register output 
    .table_wr_data_data_d_i              (table_wr_data_data_d               ), // I; TABLE_WR_DATA.DATA register input 
    .table_wr_data_data_den_i            (table_wr_data_data_den             ), // I; TABLE_WR_DATA.DATA register input enable 
    .table_wr_data_data_wtrig_o          (table_wr_data_data_wtrig           ), // O; TABLE_WR_DATA.DATA write trigger 
    .table_wrinc_data_data_q_o           (table_wrinc_data_data_q            ), // O; TABLE_WRINC_DATA.DATA register output 
    .table_wrinc_data_data_d_i           (table_wrinc_data_data_d            ), // I; TABLE_WRINC_DATA.DATA register input 
    .table_wrinc_data_data_wtrig_o       (table_wrinc_data_data_wtrig        ), // O; TABLE_WRINC_DATA.DATA write trigger 
    .table_wrdec_data_data_q_o           (table_wrdec_data_data_q            ), // O; TABLE_WRDEC_DATA.DATA register output 
    .table_wrdec_data_data_d_i           (table_wrdec_data_data_d            ), // I; TABLE_WRDEC_DATA.DATA register input 
    .table_wrdec_data_data_wtrig_o       (table_wrdec_data_data_wtrig        ), // O; TABLE_WRDEC_DATA.DATA write trigger 
    .table_rd_data_data_d_i              (table_rd_data_data_d               ), // I; TABLE_RD_DATA.DATA register input 
    .table_rd_data_data_rtrig_o          (table_rd_data_data_rtrig           ), // O; TABLE_RD_DATA.DATA read trigger 
    .table_rdinc_data_data_d_i           (table_rdinc_data_data_d            ), // I; TABLE_RDINC_DATA.DATA register input 
    .table_rdinc_data_data_rtrig_o       (table_rdinc_data_data_rtrig        ), // O; TABLE_RDINC_DATA.DATA read trigger 
    .table_rddec_data_data_d_i           (table_rddec_data_data_d            ), // I; TABLE_RDDEC_DATA.DATA register input 
    .table_rddec_data_data_rtrig_o       (table_rddec_data_data_rtrig        ), // O; TABLE_RDDEC_DATA.DATA read trigger 
    .test_filtclkoff_q_o                 (test_filtclkoff_q                  ), // O; TEST.FILTCLKOFF register output 
    .reginfo_date_d_i                    (reginfo_date_d                     ), // I; REGINFO.DATE register input 
    .id_peripheral_type_d_i              (id_peripheral_type_d               ), // I; ID.PERIPHERAL_TYPE register input 
    .id_version_d_i                      (id_version_d                       ), // I; ID.VERSION register input 
//marker_template_end 
    .irq_o                               (irq_o   )                             // O;  Interrupt 
  );
  assign id_peripheral_type_d  = ID_PERIPHERAL_TYPE_RESET; 
  assign id_version_d          = ID_VERSION_RESET; 
  assign reginfo_date_d        = REGINFO_DATE_RESET;
  
  // gate the clock based on the CLKOFF register value
  `ifndef FPGA // ASIC specific
    // Clock gating signals
    logic clk_gating_en;
    logic clk_gated;
    
    assign clk_gating_en = ~ctrl_clkoff_q | ~reset_sync_ni;

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
  
  // condition to start the filter
  assign filt_start = (filt_in_slv_tvalid_i | ctrl_filt_en_q_rise) & (~ctrl_bypass_q) & ctrl_filt_en_q; // if bypass, filter does not work 
  
  // start delayed
  always_ff @(negedge reset_ni, posedge clk_gated) begin
    if (~reset_ni) begin
      ctrl_filt_en_q_d_ff <= 1'b0;
      buf_clr_ff          <= 1'b0;
    end else begin
      ctrl_filt_en_q_d_ff <= ctrl_filt_en_q;

      if (ctrl_filt_en_q_rise)begin
         buf_clr_ff <= 1'b1;
      end else if (ap_done)begin
        buf_clr_ff <= 1'b0;
      end
         
    end
  end  
   
  assign ctrl_filt_en_q_rise = ctrl_filt_en_q & (~ctrl_filt_en_q_d_ff);
  
  assign ap_ce = ctrl_filt_en_q | (~ap_idle);

  // gate the clock based on the test_filtclkoff_q register value
  `ifndef FPGA // ASIC specific
    // Clock gating signals
    logic filter_clk_gating_en;
    logic filter_clk_gated;

    assign filter_clk_gating_en = (~reset_sync_ni) | 
                                  (  ((~test_filtclkoff_q) | 
                                      (filt_out0_mst_tvalid_o | filt_out1_mst_tvalid_o | filt_start | (~ap_idle))
                                     ) & 
                                    (~ctrl_clkoff_q) & 
                                    (~ctrl_bypass_q)
                                  ); // stop the clock if not enable, bypass or global clock is switched off
        
    // gate the clock for the internal FFs
    std_clkgate_scan u_filter_clk_gate(
      .CLK    (clk                 ), // I; clock input
      .EN     (filter_clk_gating_en), // I; clock gating enable
      .SE     (scan_enable_i       ), // I; clock gating scan enable
      .CLK_OUT(filter_clk_gated    )  // O; gated clock
    );
  `else // FPGA specific
    logic filter_clk_gated;
    assign filter_clk_gated = clk;
  `endif   
  
  // instantiate the HLS model of the filter ------------------------------------
  filter_c_top u_filter_top(
    .xn_0_V_TDATA      (filt_in_slv_tdata_i       ),
    .ap_ce             (ap_ce                     ),
    .yn_0_V_TDATA      (filt_out0_mst_tdata_o_int ),
    .yn_1_V_TDATA      (filt_out1_mst_tdata_o_int ),
    .buf_clr           (buf_clr_ff                ),
    .cfg_filt_en_0     (filt_ctrl_filt0_en_q      ),
    .cfg_filt_en_1     (filt_ctrl_filt1_en_q      ),
    .cfg_filt_en_2     (filt_ctrl_filt2_en_q      ),
    .cfg_filt_en_3     (filt_ctrl_filt3_en_q      ),
    .cfg_filt_en_4     (filt_ctrl_filt4_en_q      ),
    .cfg_filt_en_5     (filt_ctrl_filt5_en_q      ),
    .cfg_filt_en_6     (filt_ctrl_filt6_en_q      ),
    .cfg_filt_en_7     (filt_ctrl_filt7_en_q      ),
    .cfg_filt_en_8     (filt_ctrl_filt8_en_q      ),
    .cfg_filt_en_9     (filt_ctrl_filt9_en_q      ),
    .cfg_filt_en_10    (filt_ctrl_filt10_en_q     ),
    .cfg_filt_en_11    (filt_ctrl_filt11_en_q     ),
    .cfg_filt_en_12    (filt_ctrl_filt12_en_q     ),
    .cfg_filt_en_13    (filt_ctrl_filt13_en_q     ),
    .cfg_filt_en_14    (filt_ctrl_filt14_en_q     ),
    .cfg_filt_en_15    (filt_ctrl_filt15_en_q     ),
    .cfg_filt_en_16    (filt_ctrl_filt16_en_q     ),
    .cfg_filt_en_17    (filt_ctrl_filt17_en_q     ),
    .cfg_gain_val_V    (gain_val_q                ),
    .cfg_delay_sel     (cfg_delay_sel_q           ),
    .cfg_delay_val_V   (cfg_delay_val_q           ),
    .coeff_mem_address0(coeff_mem_address0        ),
    .coeff_mem_ce0     (coeff_mem_ce0             ),
    .coeff_mem_d0      (coeff_mem_d0              ),
    .coeff_mem_q0      (coeff_mem_q0              ),
    .coeff_mem_we0     (coeff_mem_we0             ),
    .mem_address0      (data_mem_address0         ),
    .mem_ce0           (data_mem_ce0              ),
    .mem_d0            (data_mem_d0               ),
    .mem_q0            (data_mem_q0               ),
    .mem_we0           (data_mem_we0              ),
    .ap_clk            (filter_clk_gated          ),
    .ap_rst_n          (reset_sync_ni             ),
    .xn_0_V_TVALID     (filt_start                ),
    .xn_0_V_TREADY     (filt_in_slv_tready_o_int  ),
    .yn_0_V_TVALID     (filt_out0_mst_tvalid_o_int),
    .yn_0_V_TREADY     (filt_out0_mst_tready_i    ),
    .yn_1_V_TVALID     (filt_out1_mst_tvalid_o_int),
    .yn_1_V_TREADY     (filt_out1_mst_tready_i    ),
    .ap_done           (ap_done                   ),
    .ap_start          (ap_start                  ),
    .ap_ready          (                          ),
    .ap_idle           (ap_idle                   )
  );
  assign ap_start = filt_start | buf_clr_ff;


  // Manage filter bypass part
  always_comb begin
    if (ctrl_bypass_q) begin
     // Filter bypass
     filt_in_slv_tready_o   = 1'b1;
     filt_out0_mst_tvalid_o = filt_out0_mst_bypass_tvalid_ff; 
     filt_out0_mst_tdata_o  = filt_in_slv_tdata_i;
     filt_out1_mst_tvalid_o = filt_out1_mst_bypass_tvalid_ff; 
     filt_out1_mst_tdata_o  = filt_in_slv_tdata_i;
    end else begin
     filt_in_slv_tready_o   = filt_in_slv_tready_o_int;
     filt_out0_mst_tvalid_o = filt_out0_mst_tvalid_o_int; 
     filt_out0_mst_tdata_o  = filt_out0_mst_tdata_o_int;
     filt_out1_mst_tvalid_o = filt_out1_mst_tvalid_o_int; 
     filt_out1_mst_tdata_o  = filt_out1_mst_tdata_o_int;
    end
  end  
  
  // AXI streaming interface control
  always_ff @(posedge clk or negedge reset_ni) begin
    if (~reset_ni) begin
      filt_out0_mst_bypass_tvalid_ff <= 1'b0;
      filt_out1_mst_bypass_tvalid_ff <= 1'b0;      
    end else begin      
      // set the output valid and keep it set until ready is received
      if (filt_in_slv_tvalid_i & ctrl_bypass_q & ctrl_filt_en_q) begin
        filt_out0_mst_bypass_tvalid_ff <= 1'b1;
      end else if (filt_out0_mst_tready_i) begin
        filt_out0_mst_bypass_tvalid_ff <= 1'b0;
      end
      // set the output valid and keep it set until ready is received
      if (filt_in_slv_tvalid_i & ctrl_bypass_q & ctrl_filt_en_q) begin
        filt_out1_mst_bypass_tvalid_ff <= 1'b1;
      end else if (filt_out1_mst_tready_i) begin
        filt_out1_mst_bypass_tvalid_ff <= 1'b0;
      end     
    end   
  end  


  // Table APB access ---------------------------------------------------------
  apb_memory_access_ctrl #(
    .DATA_WIDTH (5'd24),
    .ADDR_WIDTH (4'd8)
  ) u_memory_access_ctrl (
    .clk                          (clk_gated ), // I; System clock
    .reset_ni                     (reset_ni  ), // I; active low reset

    // configuration
    .table_cfg_direct_q_i         (table_cfg_direct_q         ), // TABLE_CFG.DIRECT register output 
    .table_cfg_addr_dbl_q_i       (1'b0                       ), // TABLE_CFG.ADDR_DBL register output 
    
    // table access from CPU
    .table_addr_addr_q_i          (table_addr_addr_q          ), // TABLE_ADDR.ADDR register output 
    .table_addr_addr_d_o          (table_addr_addr_d          ), // TABLE_ADDR.ADDR register input 
    .table_addr_addr_den_o        (table_addr_addr_den        ), // TABLE_ADDR.ADDR register data enable 
    .table_addr_addr_wtrig_i      (table_addr_addr_wtrig      ), // TABLE_ADDR.ADDR write trigger 
    .table_wr_data_data_q_i       (table_wr_data_data_q       ), // TABLE_WR_DATA.DATA register output 
    .table_wr_data_data_d_o       (table_wr_data_data_d       ), // TABLE_WR_DATA.DATA register input 
    .table_wr_data_data_den_o     (table_wr_data_data_den     ), // TABLE_WR_DATA.DATA register data enable 
    .table_wr_data_data_wtrig_i   (table_wr_data_data_wtrig   ), // TABLE_WR_DATA.DATA write trigger 
    .table_wrinc_data_data_q_i    (table_wrinc_data_data_q    ), // TABLE_WRINC_DATA.DATA register output 
    .table_wrinc_data_data_d_o    (table_wrinc_data_data_d    ), // TABLE_WRINC_DATA.DATA register input 
    .table_wrinc_data_data_wtrig_i(table_wrinc_data_data_wtrig), // TABLE_WRINC_DATA.DATA write trigger 
    .table_wrdec_data_data_d_o    (table_wrdec_data_data_d    ), // TABLE_WRDEC_DATA.DATA register input 
    .table_wrdec_data_data_wtrig_i(table_wrdec_data_data_wtrig), // TABLE_WRDEC_DATA.DATA write trigger 
    .table_rd_data_data_d_i       (table_rd_data_data_d       ), // TABLE_RD_DATA.DATA register input 
    .table_rd_data_data_rtrig_i   (table_rd_data_data_rtrig   ), // TABLE_RD_DATA.DATA read trigger 
    .table_rdinc_data_data_d_o    (table_rdinc_data_data_d    ), // TABLE_RDINC_DATA.DATA register input 
    .table_rdinc_data_data_rtrig_i(table_rdinc_data_data_rtrig), // TABLE_RDINC_DATA.DATA read trigger 
    .table_rddec_data_data_d_o    (table_rddec_data_data_d    ), // TABLE_RDDEC_DATA.DATA register input 
    .table_rddec_data_data_rtrig_i(table_rddec_data_data_rtrig), // TABLE_RDDEC_DATA.DATA read trigger 

    // table access from internal source
    .int_table_wr_i               (1'b0                       ), // table write pulse
    .int_table_addr_addr_den_i    (1'b0                       ), // ADDR register data enable
    .int_table_addr_addr_d_i      (8'd0                       ), // ADDR register input
    .int_table_wr_data_data_den_i (1'b0                       ), // WR_DATA.DATA register input 
    .int_table_wr_data_data_d_i   (24'd0                      ), // WR_DATA.DATA register data enable
    
    // table read and write cycles
    .table_wr_o                   (table_wr                   ), // table write pulse
    .table_rd_o                   (table_rd                   )  // table read pulse
  );  

  assign table_rd_data_data_d    = (~table_addr_addr_q[7]) ? data_ram_dout : coeff_ram_dout; 
  
  // SRAM for sample buffering 

  // clock gate for the Data SRAM
  `ifndef FPGA // ASIC specific
    // gate the clock for the internal FFs
    std_clkgate u_clk_gate_data_sram(
      .CLK    (clk),             // I; clock input
      .EN     (data_ram_ce_mux), // I; clock gating enable
      .CLK_OUT(clk_data_ram)     // O; gated clock
    );
  `else // FPGA specific
    assign clk_data_ram = clk;
  `endif
    
  // SRAM handling part
  sram_96x24 u_data_sram(
    `ifdef POWER_PINS
      .VDD (vdd_local        ),
      .VSS (vss_local        ),
    `endif
    .Q   (data_ram_dout    ),
    .CLK (clk_data_ram     ),
    .CEN (data_ram_cen_mux ), // generate inverted signals for ce and we
    .WEN (data_ram_wen_mux ),
    .A   (data_ram_addr_mux),
    .D   (data_ram_din_mux )
  );  
  
  // RAM access
  always_comb begin
    if (table_cfg_direct_q) begin
      data_ram_addr_mux = table_addr_addr_q[6:0];
      data_ram_din_mux  = table_wr_data_data_q;
      data_ram_wen_mux  = table_rd;
      data_ram_ce_mux   = (~table_addr_addr_q[7]) & // only for addresses from 0 to 127
                          (table_wr | table_rd) & ~scan_enable_i;
      data_ram_cen_mux  = ~data_ram_ce_mux;
    end else begin
      data_ram_addr_mux = data_mem_address0;
      data_ram_din_mux  = data_mem_d0;
      data_ram_wen_mux  = ~data_mem_we0;
      data_ram_ce_mux   = data_mem_ce0 & ~scan_enable_i;
      data_ram_cen_mux  = ~data_mem_ce0;
    end
  end  
  
  assign data_mem_q0 = data_ram_dout;

  // SRAM for coefficients  
  
  // clock gate for the Coefficients SRAM
  `ifndef FPGA // ASIC specific
    // gate the clock for the internal FFs
    std_clkgate u_clk_gate_coeff_sram(
      .CLK    (clk),              // I; clock input
      .EN     (coeff_ram_ce_mux), // I; clock gating enable
      .CLK_OUT(clk_coeff_ram)     // O; gated clock
    );
  `else // FPGA specific
    assign clk_coeff_ram = clk;
  `endif
  
  sram_112x16 u_coeff_sram(
    `ifdef POWER_PINS
      .VDD (vdd_local         ),
      .VSS (vss_local         ),
    `endif
    .Q   (coeff_ram_dout    ),
    .CLK (clk_coeff_ram     ),
    .CEN (coeff_ram_cen_mux ),
    .WEN (coeff_ram_wen_mux ),
    .A   (coeff_ram_addr_mux),
    .D   (coeff_ram_din_mux )
  );        
  
  // RAM access
  always_comb begin
    if (table_cfg_direct_q) begin
      coeff_ram_addr_mux = table_addr_addr_q[6:0];
      coeff_ram_din_mux  = table_wr_data_data_q[15:0];
      coeff_ram_wen_mux  = table_rd;
      coeff_ram_ce_mux   = table_addr_addr_q[7] & // only for addresses from 128 to 255
                           (table_wr | table_rd) & ~scan_enable_i;
      coeff_ram_cen_mux  = ~coeff_ram_ce_mux;
    end else begin
      coeff_ram_addr_mux = coeff_mem_address0;
      coeff_ram_din_mux  = coeff_mem_d0;
      coeff_ram_wen_mux  = ~coeff_mem_we0;
      coeff_ram_ce_mux   = coeff_mem_ce0 & ~scan_enable_i;
      coeff_ram_cen_mux  = ~coeff_mem_ce0;
    end
  end  
  assign coeff_mem_q0 = coeff_ram_dout;

endmodule 
`default_nettype wire
