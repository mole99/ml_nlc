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
//  File             $URL: http://10.3.34.6:20000/svn/leda_1/trunk/2v0/units/filter/rtl/filter_apb_reg_pkg.sv $
//  Author
//  Date             $LastChangedDate: 2020-04-03 09:00:15 +0200 (Fri, 03 Apr 2020) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 6877 $
//
// Description       package containing APB register definitions for filter module 
//
//  ----------------------------------------------------------------------------
//                    Revision History (written manually)
//  ----------------------------------------------------------------------------
//
//  Date        Author     Change Description
//  ==========  =========  ========================================================
//  2017-03-09  kstrohma   Initial release
//  (rev xxxxx)       

package filter_apb_reg_pkg;

  // -------------------------------------------------------------------------
  // Definition 
  // -------------------------------------------------------------------------

  //marker_template_start 
  //[% PROCESS template/general.template%]
  //[% PROCESS template/apb.template%] [% 
  // SET RegList = data.filter_reg.data;
  // INCLUDE apb_reg_param_def;
  // %]
  //marker_template_code 
  // Register CTRL
  parameter bit [7:0] CTRL_ADDR = 8'h10; 
    // Bitfield FILT_EN
    parameter int          CTRL_FILT_EN_WIDTH                  = 1; 
    parameter int          CTRL_FILT_EN_SHFT                   = 0; 
    parameter bit [31:0]   CTRL_FILT_EN_MSK                    = (2**1)-1 << 0; 
    parameter bit          CTRL_FILT_EN_RESET                  = 1'b0; 
    // Bitfield CLKOFF
    parameter int          CTRL_CLKOFF_WIDTH                   = 1; 
    parameter int          CTRL_CLKOFF_SHFT                    = 1; 
    parameter bit [31:0]   CTRL_CLKOFF_MSK                     = (2**1)-1 << 1; 
    parameter bit          CTRL_CLKOFF_RESET                   = 1'b1; 
    // Bitfield BYPASS
    parameter int          CTRL_BYPASS_WIDTH                   = 1; 
    parameter int          CTRL_BYPASS_SHFT                    = 2; 
    parameter bit [31:0]   CTRL_BYPASS_MSK                     = (2**1)-1 << 2; 
    parameter bit          CTRL_BYPASS_RESET                   = 1'b1; 

  // Register CFG
  parameter bit [7:0] CFG_ADDR = 8'h14; 
    // Bitfield DELAY_SEL
    parameter int          CFG_DELAY_SEL_WIDTH                 = 1; 
    parameter int          CFG_DELAY_SEL_SHFT                  = 0; 
    parameter bit [31:0]   CFG_DELAY_SEL_MSK                   = (2**1)-1 << 0; 
    parameter bit          CFG_DELAY_SEL_RESET                 = 1'b0; 
    // Bitfield DELAY_VAL
    parameter int          CFG_DELAY_VAL_WIDTH                 = 5; 
    parameter int          CFG_DELAY_VAL_SHFT                  = 8; 
    parameter bit [31:0]   CFG_DELAY_VAL_MSK                   = (2**5)-1 << 8; 
    parameter bit [ 12:8]  CFG_DELAY_VAL_RESET                 = 5'h00; 

  // Register FILT_CTRL
  parameter bit [7:0] FILT_CTRL_ADDR = 8'h18; 
    // Bitfield FILT0_EN
    parameter int          FILT_CTRL_FILT0_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT0_EN_SHFT             = 0; 
    parameter bit [31:0]   FILT_CTRL_FILT0_EN_MSK              = (2**1)-1 << 0; 
    parameter bit          FILT_CTRL_FILT0_EN_RESET            = 1'b0; 
    // Bitfield FILT1_EN
    parameter int          FILT_CTRL_FILT1_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT1_EN_SHFT             = 1; 
    parameter bit [31:0]   FILT_CTRL_FILT1_EN_MSK              = (2**1)-1 << 1; 
    parameter bit          FILT_CTRL_FILT1_EN_RESET            = 1'b0; 
    // Bitfield FILT2_EN
    parameter int          FILT_CTRL_FILT2_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT2_EN_SHFT             = 2; 
    parameter bit [31:0]   FILT_CTRL_FILT2_EN_MSK              = (2**1)-1 << 2; 
    parameter bit          FILT_CTRL_FILT2_EN_RESET            = 1'b0; 
    // Bitfield FILT3_EN
    parameter int          FILT_CTRL_FILT3_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT3_EN_SHFT             = 3; 
    parameter bit [31:0]   FILT_CTRL_FILT3_EN_MSK              = (2**1)-1 << 3; 
    parameter bit          FILT_CTRL_FILT3_EN_RESET            = 1'b0; 
    // Bitfield FILT4_EN
    parameter int          FILT_CTRL_FILT4_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT4_EN_SHFT             = 4; 
    parameter bit [31:0]   FILT_CTRL_FILT4_EN_MSK              = (2**1)-1 << 4; 
    parameter bit          FILT_CTRL_FILT4_EN_RESET            = 1'b0; 
    // Bitfield FILT5_EN
    parameter int          FILT_CTRL_FILT5_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT5_EN_SHFT             = 5; 
    parameter bit [31:0]   FILT_CTRL_FILT5_EN_MSK              = (2**1)-1 << 5; 
    parameter bit          FILT_CTRL_FILT5_EN_RESET            = 1'b0; 
    // Bitfield FILT6_EN
    parameter int          FILT_CTRL_FILT6_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT6_EN_SHFT             = 6; 
    parameter bit [31:0]   FILT_CTRL_FILT6_EN_MSK              = (2**1)-1 << 6; 
    parameter bit          FILT_CTRL_FILT6_EN_RESET            = 1'b0; 
    // Bitfield FILT7_EN
    parameter int          FILT_CTRL_FILT7_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT7_EN_SHFT             = 7; 
    parameter bit [31:0]   FILT_CTRL_FILT7_EN_MSK              = (2**1)-1 << 7; 
    parameter bit          FILT_CTRL_FILT7_EN_RESET            = 1'b0; 
    // Bitfield FILT8_EN
    parameter int          FILT_CTRL_FILT8_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT8_EN_SHFT             = 8; 
    parameter bit [31:0]   FILT_CTRL_FILT8_EN_MSK              = (2**1)-1 << 8; 
    parameter bit          FILT_CTRL_FILT8_EN_RESET            = 1'b0; 
    // Bitfield FILT9_EN
    parameter int          FILT_CTRL_FILT9_EN_WIDTH            = 1; 
    parameter int          FILT_CTRL_FILT9_EN_SHFT             = 9; 
    parameter bit [31:0]   FILT_CTRL_FILT9_EN_MSK              = (2**1)-1 << 9; 
    parameter bit          FILT_CTRL_FILT9_EN_RESET            = 1'b0; 
    // Bitfield FILT10_EN
    parameter int          FILT_CTRL_FILT10_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT10_EN_SHFT            = 10; 
    parameter bit [31:0]   FILT_CTRL_FILT10_EN_MSK             = (2**1)-1 << 10; 
    parameter bit          FILT_CTRL_FILT10_EN_RESET           = 1'b0; 
    // Bitfield FILT11_EN
    parameter int          FILT_CTRL_FILT11_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT11_EN_SHFT            = 11; 
    parameter bit [31:0]   FILT_CTRL_FILT11_EN_MSK             = (2**1)-1 << 11; 
    parameter bit          FILT_CTRL_FILT11_EN_RESET           = 1'b0; 
    // Bitfield FILT12_EN
    parameter int          FILT_CTRL_FILT12_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT12_EN_SHFT            = 12; 
    parameter bit [31:0]   FILT_CTRL_FILT12_EN_MSK             = (2**1)-1 << 12; 
    parameter bit          FILT_CTRL_FILT12_EN_RESET           = 1'b0; 
    // Bitfield FILT13_EN
    parameter int          FILT_CTRL_FILT13_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT13_EN_SHFT            = 13; 
    parameter bit [31:0]   FILT_CTRL_FILT13_EN_MSK             = (2**1)-1 << 13; 
    parameter bit          FILT_CTRL_FILT13_EN_RESET           = 1'b0; 
    // Bitfield FILT14_EN
    parameter int          FILT_CTRL_FILT14_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT14_EN_SHFT            = 14; 
    parameter bit [31:0]   FILT_CTRL_FILT14_EN_MSK             = (2**1)-1 << 14; 
    parameter bit          FILT_CTRL_FILT14_EN_RESET           = 1'b0; 
    // Bitfield FILT15_EN
    parameter int          FILT_CTRL_FILT15_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT15_EN_SHFT            = 15; 
    parameter bit [31:0]   FILT_CTRL_FILT15_EN_MSK             = (2**1)-1 << 15; 
    parameter bit          FILT_CTRL_FILT15_EN_RESET           = 1'b0; 
    // Bitfield FILT16_EN
    parameter int          FILT_CTRL_FILT16_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT16_EN_SHFT            = 16; 
    parameter bit [31:0]   FILT_CTRL_FILT16_EN_MSK             = (2**1)-1 << 16; 
    parameter bit          FILT_CTRL_FILT16_EN_RESET           = 1'b0; 
    // Bitfield FILT17_EN
    parameter int          FILT_CTRL_FILT17_EN_WIDTH           = 1; 
    parameter int          FILT_CTRL_FILT17_EN_SHFT            = 17; 
    parameter bit [31:0]   FILT_CTRL_FILT17_EN_MSK             = (2**1)-1 << 17; 
    parameter bit          FILT_CTRL_FILT17_EN_RESET           = 1'b0; 

  // Register GAIN
  parameter bit [7:0] GAIN_ADDR = 8'h1C; 
    // Bitfield VAL
    parameter int          GAIN_VAL_WIDTH                      = 6; 
    parameter int          GAIN_VAL_SHFT                       = 0; 
    parameter bit [31:0]   GAIN_VAL_MSK                        = (2**6)-1 << 0; 
    parameter bit [  5:0]  GAIN_VAL_RESET                      = 6'h04; 

  // Register TABLE_CFG
  parameter bit [7:0] TABLE_CFG_ADDR = 8'h40; 
    // Bitfield DIRECT
    parameter int          TABLE_CFG_DIRECT_WIDTH              = 1; 
    parameter int          TABLE_CFG_DIRECT_SHFT               = 0; 
    parameter bit [31:0]   TABLE_CFG_DIRECT_MSK                = (2**1)-1 << 0; 
    parameter bit          TABLE_CFG_DIRECT_RESET              = 1'b0; 

  // Register TABLE_ADDR
  parameter bit [7:0] TABLE_ADDR_ADDR = 8'h44; 
    // Bitfield ADDR
    parameter int          TABLE_ADDR_ADDR_WIDTH               = 8; 
    parameter int          TABLE_ADDR_ADDR_SHFT                = 0; 
    parameter bit [31:0]   TABLE_ADDR_ADDR_MSK                 = (2**8)-1 << 0; 
    parameter bit [  7:0]  TABLE_ADDR_ADDR_RESET               = 8'h00; 

  // Register TABLE_WR_DATA
  parameter bit [7:0] TABLE_WR_DATA_ADDR = 8'h48; 
    // Bitfield DATA
    parameter int          TABLE_WR_DATA_DATA_WIDTH            = 24; 
    parameter int          TABLE_WR_DATA_DATA_SHFT             = 0; 
    parameter bit [31:0]   TABLE_WR_DATA_DATA_MSK              = (2**24)-1 << 0; 
    parameter bit [ 23:0]  TABLE_WR_DATA_DATA_RESET            = 24'h000000; 

  // Register TABLE_WRINC_DATA
  parameter bit [7:0] TABLE_WRINC_DATA_ADDR = 8'h4C; 
    // Bitfield DATA
    parameter int          TABLE_WRINC_DATA_DATA_WIDTH         = 24; 
    parameter int          TABLE_WRINC_DATA_DATA_SHFT          = 0; 
    parameter bit [31:0]   TABLE_WRINC_DATA_DATA_MSK           = (2**24)-1 << 0; 
    parameter bit [ 23:0]  TABLE_WRINC_DATA_DATA_RESET         = 24'h000000; 

  // Register TABLE_WRDEC_DATA
  parameter bit [7:0] TABLE_WRDEC_DATA_ADDR = 8'h50; 
    // Bitfield DATA
    parameter int          TABLE_WRDEC_DATA_DATA_WIDTH         = 24; 
    parameter int          TABLE_WRDEC_DATA_DATA_SHFT          = 0; 
    parameter bit [31:0]   TABLE_WRDEC_DATA_DATA_MSK           = (2**24)-1 << 0; 
    parameter bit [ 23:0]  TABLE_WRDEC_DATA_DATA_RESET         = 24'h000000; 

  // Register TABLE_RD_DATA
  parameter bit [7:0] TABLE_RD_DATA_ADDR = 8'h54; 
    // Bitfield DATA
    parameter int          TABLE_RD_DATA_DATA_WIDTH            = 24; 
    parameter int          TABLE_RD_DATA_DATA_SHFT             = 0; 
    parameter bit [31:0]   TABLE_RD_DATA_DATA_MSK              = (2**24)-1 << 0; 
    parameter bit [ 23:0]  TABLE_RD_DATA_DATA_RESET            = 24'h000000; 

  // Register TABLE_RDINC_DATA
  parameter bit [7:0] TABLE_RDINC_DATA_ADDR = 8'h58; 
    // Bitfield DATA
    parameter int          TABLE_RDINC_DATA_DATA_WIDTH         = 24; 
    parameter int          TABLE_RDINC_DATA_DATA_SHFT          = 0; 
    parameter bit [31:0]   TABLE_RDINC_DATA_DATA_MSK           = (2**24)-1 << 0; 
    parameter bit [ 23:0]  TABLE_RDINC_DATA_DATA_RESET         = 24'h000000; 

  // Register TABLE_RDDEC_DATA
  parameter bit [7:0] TABLE_RDDEC_DATA_ADDR = 8'h5C; 
    // Bitfield DATA
    parameter int          TABLE_RDDEC_DATA_DATA_WIDTH         = 24; 
    parameter int          TABLE_RDDEC_DATA_DATA_SHFT          = 0; 
    parameter bit [31:0]   TABLE_RDDEC_DATA_DATA_MSK           = (2**24)-1 << 0; 
    parameter bit [ 23:0]  TABLE_RDDEC_DATA_DATA_RESET         = 24'h000000; 

  // Register TEST
  parameter bit [7:0] TEST_ADDR = 8'hF0; 
    // Bitfield FILTCLKOFF
    parameter int          TEST_FILTCLKOFF_WIDTH               = 1; 
    parameter int          TEST_FILTCLKOFF_SHFT                = 0; 
    parameter bit [31:0]   TEST_FILTCLKOFF_MSK                 = (2**1)-1 << 0; 
    parameter bit          TEST_FILTCLKOFF_RESET               = 1'b0; 

  // Register REGINFO
  parameter bit [7:0] REGINFO_ADDR = 8'hF8; 
    // Bitfield DATE
    parameter int          REGINFO_DATE_WIDTH                  = 18; 
    parameter int          REGINFO_DATE_SHFT                   = 0; 
    parameter bit [31:0]   REGINFO_DATE_MSK                    = (2**18)-1 << 0; 
    parameter bit [ 17:0]  REGINFO_DATE_RESET                  = 18'd200403; 

  // Register ID
  parameter bit [7:0] ID_ADDR = 8'hFC; 
    // Bitfield PERIPHERAL_TYPE
    parameter int          ID_PERIPHERAL_TYPE_WIDTH            = 8; 
    parameter int          ID_PERIPHERAL_TYPE_SHFT             = 0; 
    parameter bit [31:0]   ID_PERIPHERAL_TYPE_MSK              = (2**8)-1 << 0; 
    parameter bit [  7:0]  ID_PERIPHERAL_TYPE_RESET            = 8'h0a; 
    // Bitfield VERSION
    parameter int          ID_VERSION_WIDTH                    = 8; 
    parameter int          ID_VERSION_SHFT                     = 8; 
    parameter bit [31:0]   ID_VERSION_MSK                      = (2**8)-1 << 8; 
    parameter bit [ 15:8]  ID_VERSION_RESET                    = 8'h02; 
//marker_template_end 
  
  
endpackage 
