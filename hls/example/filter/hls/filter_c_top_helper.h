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
//  File             $URL: http://172.29.227.177:20000/svn/leda_1/trunk/2v0/units/filter/hls/filter_c_top_helper.h $
//  Author
//  Date             $LastChangedDate: 2019-05-20 17:24:06 +0200 (Mon, 20 May 2019) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 3710 $
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
#ifndef FILTER_C_TOP_HELPER_H
  #define FILTER_C_TOP_HELPER_H

  #include "ap_fixed.h"
  #include "ap_int.h"
  #include "filter_c_top.h"
  using namespace std;

  #ifdef FILTER_NAMESPACE
    namespace filter {
  #endif
    typedef ap_fixed<64,16,AP_RND,AP_SAT> glbl_monitor_t;

    // Global monitors -- can be used inside the function for data recording
    extern glbl_monitor_t   glbl_monitor[10];
    extern double           glbl_real_monitor[24];

    // Filter APB register configuration
    // Will be external memory (APB register)
    extern filter_coeff_t filter_coeff[18];
    extern filter_cfg_t   filter_cfg;

    void filter_c_init(string filt_sel, filter_cfg_t *filter_cfg, filter_coeff_t filter_coeff[18]);

  #ifdef FILTER_NAMESPACE
    }
  #endif
#endif



