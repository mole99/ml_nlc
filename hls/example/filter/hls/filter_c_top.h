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
//  File             $URL: http://10.3.34.6:20000/svn/leda_1/trunk/2v0/units/filter/hls/filter_c_top.h $
//  Author
//  Date             $LastChangedDate: 2020-01-03 15:36:53 +0100 (Fri, 03 Jan 2020) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 5173 $
//
// Description       Header file for CIC filter
//
//  ----------------------------------------------------------------------------
//                    Revision History (written manually)
//  ----------------------------------------------------------------------------
//
//  Date        Author     Change Description
//  ==========  =========  ========================================================
//  2017-03-09  kstrohma   Initial release
//  (rev xxxxx)

#ifndef _FILTER_C_TOP_H_
  #define _FILTER_C_TOP_H_

  #include <iostream>
  #include <iomanip>
  #include <cstdlib>

  using namespace std;

  // #include <hls_stream.h>
  #include "ap_fixed.h"
  #include "ap_int.h"

  // #define FILTER_QN1_EN
  // #define FILTER_QN2_EN
  // #define FILTER_GAIN_OUT_EN
  // #define FILTER_ORG_EN
  #ifndef FILTER_ORG_EN
    //#define FILTER_20BIT_EN
  #endif
  
  #define FILTER_NAMESPACE

  #ifdef FILTER_NAMESPACE
    namespace filter {
  #endif

    // input / output sample data type (same for all implementations)
    typedef ap_fixed<24,2,AP_RND,AP_SAT>    xin_t;             // filter input  audio data type
    typedef ap_fixed<24,2,AP_RND,AP_SAT>    yout_t;            // filter output audio data type

    // filter global configuration
    typedef ap_ufixed<6,4,AP_TRN,AP_WRAP>   gain_val_t;        // input gain for audio data
    typedef ap_uint<5>                      delay_val_t;       // Delay value

    // filter wise configuration
    #ifdef FILTER_ORG_EN
      typedef ap_fixed<16,2,AP_RND,AP_SAT>    filt_data_t;     // internal filter data type --> used between the filter stages
      typedef ap_fixed<16,2,AP_RND,AP_SAT>    xn_t;            // filter engine input data
      typedef ap_fixed<16,2,AP_TRN,AP_SAT>    yn_t;            // filter engine output data --> truncated, used truncation noise feedback
      typedef ap_fixed<yn_t::width,yn_t::iwidth,AP_RND,AP_SAT> yn_rnd_t;     // filter engine output data
      typedef ap_fixed<16,2,AP_RND,AP_SAT>    coeff_t;          // filter coefficient
      typedef ap_ufixed<16,2,AP_RND,AP_SAT>   coeff_gain_t;     // filter gain (pre and post)
      typedef ap_fixed<38,6,AP_TRN,AP_WRAP>   accu_t;           // filter internal accumulator
      typedef ap_fixed<17,-16,AP_TRN,AP_WRAP> qn_t;             // truncation error storage
    #else
      #ifdef FILTER_20BIT_EN
        typedef ap_fixed<16,2,AP_RND,AP_SAT>    filt_data_t;         // internal filter data type --> used between the filter stages
        typedef ap_fixed<20,2,AP_RND,AP_SAT>    xn_t;               // filter engine input data
        typedef ap_fixed<20,2,AP_TRN,AP_SAT>    yn_t;               // filter engine output data --> truncated, used truncation noise feedback
        typedef ap_fixed<yn_t::width,yn_t::iwidth,AP_RND,AP_SAT>    yn_rnd_t;     // filter engine output data
        typedef ap_fixed<16,2,AP_RND,AP_SAT>    coeff_t;      // filter coefficient
        typedef ap_fixed<16,4,AP_RND,AP_SAT>    coeff_gain_t;  // filter gain (pre and post)
        typedef ap_fixed<46,6,AP_TRN,AP_WRAP>   accu_t;       // filter internal accumulator
        typedef ap_fixed<yn_t::iwidth+1,-yn_t::iwidth,AP_TRN,AP_WRAP> qn_t;         // truncation error storage
      #else
        typedef ap_fixed<24,2,AP_RND,AP_SAT>    filt_data_t;        // internal filter data type --> used between the filter stages
        typedef ap_fixed<24,2,AP_RND,AP_SAT>    xn_t;               // filter engine input data
        typedef ap_fixed<24,2,AP_TRN,AP_SAT>    yn_t;               // filter engine output data --> truncated, used truncation noise feedback
        typedef ap_fixed<yn_t::width,yn_t::iwidth,AP_RND,AP_SAT>    yn_rnd_t;     // filter engine output data
        typedef ap_fixed<16,2,AP_RND,AP_SAT>    coeff_t;            // filter coefficient
        typedef ap_fixed<16,4,AP_RND,AP_SAT>    coeff_gain_t;       // filter gain (pre and post)
        typedef ap_fixed<45,9,AP_TRN,AP_WRAP>   accu_t;             // filter internal accumulator
        typedef ap_fixed<yn_t::iwidth+1,-yn_t::iwidth,AP_TRN,AP_WRAP> qn_t;  // truncation error storage
      #endif
    #endif

    // Data structure for global filter configurations
    struct filter_cfg_t {
      bool        filt_en[18]; // Filter stage enable
      gain_val_t  gain_val;    // Input gain value
      bool        delay_sel;   // Delay selection 0: Woofer, 1: Tweeter
	  delay_val_t delay_val;   // Delay value in samples
    };

    // Data structure for filter coefficients
    struct filter_coeff_t {
      coeff_gain_t gain;
      #ifdef FILTER_GAIN_OUT_EN
        coeff_gain_t  gain_output;
      #endif
      coeff_t     b0;
      coeff_t     b1;
      coeff_t     b2;
      coeff_t     a1_n;   // multiplied with -1
      coeff_t     a2_n;   // multiplied with -1
      #ifdef FILTER_QN1_EN
        bool        ns_en;
        coeff_t     k1;
      #endif
      #ifdef FILTER_QN2_EN
        coeff_t k2;
      #endif
    };

    // Data structure for intermediate storage
    struct filter_buf_t {
      yn_t   yn_1;
      yn_t   yn_2;
      xn_t   xn_1;
      xn_t   xn_2;
      #ifdef FILTER_QN1_EN
        qn_t   qn_1;
      #endif
      #ifdef FILTER_QN2_EN
        qn_t   qn_2;
      #endif
    };

    // Toplevel function for filter
    void filter_c_top (xin_t xn_0, yout_t *yn_0, yout_t *yn_1, bool buf_clr, filter_cfg_t cfg, filter_coeff_t coeff[18]);

    // audiodata_t filter_c_top (audiodata_t xn_0, bool buf_clr, gain_val_t gain_val, filter_coeff_t coeff[10]);
    #pragma XMC INPORT  xn_0
    #pragma XMC OUTPORT yn_0
    #pragma XMC OUTPORT yn_1
    #pragma XMC SUPPORTS_STREAMING
    void xmc_filter_c_top(ap_fixed<24,2,AP_TRN,AP_WRAP> xn_0, ap_fixed<24,2,AP_TRN,AP_WRAP> *yn_0, ap_fixed<24,2,AP_TRN,AP_WRAP> *yn_1);

  #ifdef FILTER_NAMESPACE
    }
  #endif
#endif



