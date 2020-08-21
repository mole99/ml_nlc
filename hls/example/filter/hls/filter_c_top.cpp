//  --------------------------------------------------------------------------
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
//  File             $URL: http://10.3.34.6:20000/svn/leda_1/trunk/2v0/units/filter/hls/filter_c_top.cpp $
//  Author
//  Date             $LastChangedDate: 2020-01-03 15:36:53 +0100 (Fri, 03 Jan 2020) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 5173 $
//
// Description       CIC filter
//
//  ----------------------------------------------------------------------------
//                    Revision History (written manually)
//  ----------------------------------------------------------------------------
//
//  Date        Author     Change Description
//  ==========  =========  ========================================================
//  2017-03-09  kstrohma   Initial release
//  (rev xxxxx)
#include "filter_c_top.h"
#include "filter_c_top_helper.h"

#ifndef __SYNTHESIS__
  #define __SYNTHESIS__
#endif

#undef DEBUG_FILTER
// #define DEBUG_FILTER

#undef MONITOR_CC
//#define MONITOR_CC

#ifdef __SYNTHESIS__
  #undef DEBUG_FILTER
  #undef MONITOR_CC
#endif

#ifdef FILTER_NAMESPACE
  namespace filter {
#endif

// Model composer wrapper
void xmc_filter_c_top(ap_fixed<24,2,AP_TRN,AP_WRAP> xn_0, ap_fixed<24,2,AP_TRN,AP_WRAP> *yn_0, ap_fixed<24,2,AP_TRN,AP_WRAP> *yn_1) {

  static bool init_done = false;

  yout_t yn_0_int;
  yout_t yn_1_int;
  
  // ap_fixed<16,2,AP_TRN,AP_WRAP> yn_0_trunc_int;

  // yn_0_int = *yn_0;
  // yn_1_int = *yn_1;

  #ifdef FILTER_NAMESPACE
    if (~init_done) {
      init_done = true;
      filter_c_top(xn_0, &yn_0_int, &yn_1_int, true, filter::filter_cfg, filter::filter_coeff);
      filter_c_init("no", &filter::filter_cfg, filter::filter_coeff);
      //filter_c_init("no", gain_val, filter_coeff);
    }
    filter_c_top(xn_0, &yn_0_int, &yn_1_int, false, filter::filter_cfg, filter::filter_coeff);
  #else
    if (~init_done) {  
      init_done = true;
      filter_c_top(xn_0, &yn_0_int, &yn_1_int, true, filter_cfg, filter_coeff);
      filter_c_init("no", &filter_cfg, filter_coeff);
      //filter_c_init("no", gain_val, filter_coeff);
    }
    filter_c_top(xn_0, &yn_0_int, &yn_1_int, false, filter_cfg, filter_coeff);
  #endif
  //yn_0_trunc_int = yn_0_int;
  *yn_0 = yn_0_int;
  *yn_1 = yn_1_int;
}


#include <assert.h>
// Filter engine
filt_data_t filter_c_engine(filt_data_t xn_0, filter_coeff_t *coeff, filter_buf_t *buf) {
  #pragma HLS ALLOCATION instances=mul limit=1 operation
  #pragma HLS ALLOCATION instances=add limit=1 operation
  #pragma HLS INTERFACE ap_none port=coeff
  // #pragma HLS DATAFLOW

  xn_t        xn_0_scaled;
  yn_t        yn_0_int;
  yn_rnd_t    yn_rnd_0_int;
  filt_data_t filtdata_out;

  accu_t accu;
  qn_t   qn_0;

  #ifdef DEBUG_FILTER
    #ifdef FILTER_QN2_EN
      printf("  ==> xn_0=%4.8f xn_1=%4.8f xn_2=%4.8f yn_0=%4.8f yn_1=%4.8f yn_2=%4.8f ==> accu=%4.8f q=%4.8f qn_1=%4.8f qn_2=%4.8f\n", xn_0.to_double(), buf->xn_1.to_double(), buf->xn_2.to_double(), yn_0_int.to_double() , buf->yn_1.to_double(), buf->yn_2.to_double(), accu.to_double(), qn_0.to_double(), buf->qn_1.to_double(), buf->qn_2.to_double());
    #else
      printf("  ==> xn_0=%4.8f xn_1=%4.8f xn_2=%4.8f yn_0=%4.8f yn_1=%4.8f yn_2=%4.8f ==> accu=%4.8f q=%4.8f qn_1=%4.8f qn_2=%4.8f\n", xn_0.to_double(), buf->xn_1.to_double(), buf->xn_2.to_double(), yn_0_int.to_double() , buf->yn_1.to_double(), buf->yn_2.to_double(), accu.to_double(), qn_0.to_double(), buf->qn_1.to_double(), 0.0);
    #endif
  #endif

    // Calculation
  accu        =  coeff->gain * xn_0;
  xn_0_scaled = accu;
  accu =        xn_0_scaled * coeff->b0;
  //if (accu >=  4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  //if (accu <= -4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  accu = accu + buf->xn_1   * coeff->b1;
  //if (accu >=  4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  //if (accu <= -4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  accu = accu + buf->xn_2   * coeff->b2;
  //if (accu >=  4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  //if (accu <= -4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  accu = accu + buf->yn_1   * coeff->a1_n;
  //if (accu >=  4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  //if (accu <= -4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  accu = accu + buf->yn_2   * coeff->a2_n;
  //if (accu >=  4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  //if (accu <= -4) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  #ifdef FILTER_QN1_EN
    if (coeff->ns_en) {
      accu = accu + buf->qn_1  * (coeff->k1);
      #ifdef FILTER_QN2_EN
        accu = accu + buf->qn_2  * (coeff->k2);
      #endif
    }
  #endif


  #ifdef FILTER_GAIN_OUT_EN
    accu = acc * coeff->gain_output;
  #endif
  //if (accu >=  2) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}
  //if (accu <= -2) {printf("accu overflow: accu=%4.8f\n", accu.to_double());}

    // Sample assignment and shifting
  buf->xn_2 = buf->xn_1;
  buf->xn_1 = xn_0_scaled;

  buf->yn_2 = buf->yn_1;

  #ifdef FILTER_QN1_EN
    if (coeff->ns_en) {
      yn_0_int     = accu;
      filtdata_out = yn_0_int;
      buf->yn_1    = yn_0_int;
      qn_0      = accu - yn_0_int;
      #ifdef FILTER_QN2_EN
        buf->qn_2 = buf->qn_1;
      #endif
      buf->qn_1 = qn_0;
    } else {
      yn_rnd_0_int = accu;
      filtdata_out = yn_rnd_0_int;
      buf->yn_1    = yn_rnd_0_int;
    }
  #else
    yn_rnd_0_int = accu;
    filtdata_out = yn_rnd_0_int;
    buf->yn_1    = yn_rnd_0_int;
  #endif

  #ifdef DEBUG_FILTER
    #ifdef FILTER_QN2_EN
      printf("  ==> xn_0=%4.8f xn_1=%4.8f xn_2=%4.8f yn_0=%4.8f yn_1=%4.8f yn_2=%4.8f ==> accu=%4.8f q=%4.8f qn_1=%4.8f qn_2=%4.8f\n", xn_0.to_double(), buf->xn_1.to_double(), buf->xn_2.to_double(), yn_0_int.to_double() , buf->yn_1.to_double(), buf->yn_2.to_double(), accu.to_double(), qn_0.to_double(), buf->qn_1.to_double(), buf->qn_2.to_double());
    #else
      printf("  ==> xn_0=%4.8f xn_1=%4.8f xn_2=%4.8f yn_0=%4.8f yn_1=%4.8f yn_2=%4.8f ==> accu=%4.8f q=%4.8f qn_1=%4.8f qn_2=%4.8f\n", xn_0.to_double(), buf->xn_1.to_double(), buf->xn_2.to_double(), yn_0_int.to_double() , buf->yn_1.to_double(), buf->yn_2.to_double(), accu.to_double(), qn_0.to_double(), buf->qn_1.to_double(), 0.0);
    #endif
  #endif

  #ifndef __SYNTHESIS__
    // glbl_monitor[0] = xn_0;
    // glbl_monitor[1] = accu;
    // glbl_monitor[2] = yn_0_int;
    // glbl_monitor[3] = filtdata_out;
  #endif
  return filtdata_out;
}

filter_buf_t filter_buf[18];   // filter value storage
xin_t        delay_buf[24];    // delay buffer

// Toplevel for filter
void filter_c_top (xin_t xn_0, yout_t *yn_0, yout_t *yn_1, bool buf_clr, filter_cfg_t cfg, filter_coeff_t coeff[18]) {

  // Data interfaces are defines as AXI ports
  #pragma HLS INTERFACE axis register both port=xn_0
  #pragma HLS INTERFACE axis register both port=yn_0
  #pragma HLS INTERFACE axis register both port=yn_1

  // Configuration port assumed as constant input
  #pragma HLS INTERFACE       ap_none port=cfg
  #pragma HLS ARRAY_PARTITION variable=cfg.filt_en complete dim=1

  // filter buffer and delay buffer are implemented as global variable
  //   --> Based on a single ported SRAM
  #pragma HLS ARRAY_MAP variable=filter_buf instance=mem horizontal
  #pragma HLS ARRAY_MAP variable=delay_buf  instance=mem horizontal
  #pragma HLS RESOURCE  variable=filter_buf core=RAM_1P
  #pragma HLS RESOURCE  variable=delay_buf  core=RAM_1P

  // Filter coefficients are input, coming from a single ported SRAM
  // #pragma HLS INTERFACE axis register both port=yn_1 / ARRY_PARTITION, ARRAY_RESHAPE, ARRAY_MAP
  // #pragma HLS ARRAY_PARTITION variable=coeff complete dim=1
  // #pragma HLS INTERFACE ap_none port=coeff
  // #pragma HLS ARRAY_MAP variable=coeff      instance=mem horizontal

  // #pragma HLS DATA_PACK variable=coeff field_level
  // #pragma HLS ARRAY_MAP variable=coeff  instance=mem horizontal

  #pragma HLS ARRAY_MAP variable=coeff  instance=coeff_mem horizontal
  #pragma HLS RESOURCE  variable=coeff  core=RAM_1P

  #pragma HLS ALLOCATION instances=mul limit=1 operation
  #pragma HLS DATAFLOW

//  static filter_buf_t filter_buf[18];   // filter value storage
//  static xin_t        delay_buf[24];    // delay buffer
  bool tweeter_enabled;  // at least one tweeter filter is enabled
  bool woofer_enabled;   // at least on woofer filter is enabled

  // delay line access pointer
  static ap_uint<5>    delay_buf_ptr = 0;
  #pragma HLS RESET variable=delay_buf_ptr


  filt_data_t xn_0_gain;
  filt_data_t xn_tweeter;
  filt_data_t xn_woofer;
  filt_data_t filter_yn;

  // Implementation
  if (buf_clr) {
    // clear buffer
    clear_buf: for (int i=0; i<18; i++) {
      filter_buf[i].xn_1 = 0;
      filter_buf[i].xn_2 = 0;
      filter_buf[i].yn_1 = 0;
      filter_buf[i].yn_2 = 0;
      #ifdef FILTER_QN1_EN
        filter_buf[i].qn_1 = 0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_buf[i].qn_2 = 0;
      #endif
    }
    // clear delay buffer
    delay_buf_ptr = 0;
    clear_dealy: for (int i=0; i<24; i++) {
      delay_buf[i] = 0;
    }
  } else {
    // Input gain
    xn_0_gain = cfg.gain_val * xn_0;
    
    // Delay line
    if (cfg.delay_val > 0) {
      // delay applied
      if (cfg.delay_sel) {
        // Woofer is delayed
        xn_tweeter = xn_0_gain;
        xn_woofer  = delay_buf[delay_buf_ptr];
      } else {
        xn_tweeter = delay_buf[delay_buf_ptr];
        xn_woofer  = xn_0_gain;
      }
      delay_buf[delay_buf_ptr] = xn_0_gain;
      delay_buf_ptr++;
      delay_buf_ptr = delay_buf_ptr % cfg.delay_val;
    } else {
      // no delay applied
      xn_tweeter = xn_0_gain;
      xn_woofer  = xn_0_gain;
    }
    //printf("    --> %02i: Tweeter: %8.6f - Woofer: %8.6f\n", delay_wr_ptr, xn_tweeter.to_double(), xn_woofer.to_double());
    
    // Filter
    tweeter_enabled = false;
    iterate_tweeter_filter: for (int i=0; i<12; i++) {
      if (cfg.filt_en[i]) {
        tweeter_enabled = true;
        xn_tweeter      = filter_c_engine(xn_tweeter, &coeff[i], &filter_buf[i]);
       }
      #ifndef __SYNTHESIS__
        glbl_monitor[i] = filter_yn;
      #endif
    }
    woofer_enabled = false;
    iterate_woofer_filter: for (int i=12; i<18; i++) {
      if (cfg.filt_en[i]) {
        woofer_enabled = true;
        xn_woofer      = filter_c_engine(xn_woofer, &coeff[i], &filter_buf[i]);
      }
    }
    if (tweeter_enabled) {
      *yn_0 = xn_tweeter;
    } else {
      *yn_0 = (yout_t)0.1;
    }
    if (woofer_enabled) {
      *yn_1 = xn_woofer;
    } else {
      *yn_1 = (yout_t)0.2;
    }
  }

  #ifdef MONITOR_CC
    glbl_monitor[1] = comb1_xn;
  #endif
  #ifdef DEBUG_CIC
    printf("xn=%4.8f comb1_xn=%4.8f mon=%4.8f \n", xn.to_double(), comb1_xn.to_double(), glbl_monitor[1].to_double());
    printf("  comb1_xn_del=%4.8f comb2_xn_del=%4.8f comb3_xn_del=%4.8f comb4_xn_del=%4.8f comb5_xn_del=%4.8f\n", comb1_xn_del.to_double(), comb2_xn_del.to_double(), comb3_xn_del.to_double(), comb4_xn_del.to_double(), comb5_xn_del.to_double());
  #endif
}

#ifdef FILTER_NAMESPACE
  }
#endif
