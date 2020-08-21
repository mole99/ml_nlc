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
//  File             $URL: http://172.29.227.177:20000/svn/leda_1/trunk/2v0/units/filter/hls/filter_c_top_helper.cpp $
//  Author
//  Date             $LastChangedDate: 2019-11-06 17:38:17 +0100 (Wed, 06 Nov 2019) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 4720 $
//
// Description       Helper functions for filter
//
//  ----------------------------------------------------------------------------
//                    Revision History (written manually)
//  ----------------------------------------------------------------------------
//
//  Date        Author     Change Description
//  ==========  =========  ========================================================
//  2017-03-09  kstrohma   Initial release
//  (rev xxxxx)

#include "filter_c_top_helper.h"

#ifdef FILTER_NAMESPACE
  namespace filter {
#endif

  // Monitoring of signals
  glbl_monitor_t   glbl_monitor[10];
  double           glbl_real_monitor[24];

  // Filter APB register configuration
  // Will be external memory (APB register)
  filter_coeff_t filter_coeff[18];
  filter_cfg_t   filter_cfg;

  // Init coefficients depending on the selected mode
  //   filte_sel:
  //     lp        ... low pass (1 stage)
  //     lp_k1     ... low pass (1 stage)
  //     lp_k1_k2  ... low pass (1 stage)
  //     shelf_f3  ... shelf filter 1980Hz (1 stage)
  //     megaclite ... Megaclite chain (9 stages)
  void filter_c_init(string filt_sel, filter_cfg_t *filter_cfg, filter_coeff_t filter_coeff[18]) {

    for (int i=0; i<18; i++) {
      filter_cfg->filt_en[i]     = false;
    }
    filter_cfg->gain_val  = 1.0;
    filter_cfg->delay_sel = 0; // Delay selection 0: Woofer, 1: Tweeter
    filter_cfg->delay_val = 0; // Delay value in samples

    // printf("==> gain_val =%4.8f %s \n", gain_val.to_double(), gain_val. to_string().c_str());

    if (filt_sel == "lp") {
      // Coefficients
      printf("Configured filter for LP\n");
      filter_cfg->filt_en[0]       = true;
      filter_coeff[0].gain        = 0.003916126660547369214837587492183956783;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1;
      #endif
      // Denominator (a0=1)
      filter_coeff[0].a1_n        = (-1)*-1.81534108270456817635363222507294267416 ;
      filter_coeff[0].a2_n          = (-1)* 0.831005589346757611579619151598308235407;
      // Numerator
      filter_coeff[0].b0          =  1;
      filter_coeff[0].b1          =  2;
      filter_coeff[0].b2          =  1;
      #ifdef FILTER_QN1_EN
        filter_coeff[0].ns_en       = false;
        filter_coeff[0].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[0].k2          =  0;
      #endif
    } else if (filt_sel == "lp_k1") {
      // Coefficients
      printf("Configured filter for LP with k1\n");
      filter_cfg->filt_en[0]       = true;
      filter_coeff[0].gain        =  0.003916126660547369214837587492183956783;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1;
      #endif
      // Denominator (a0=1)
      filter_coeff[0].a1_n        = (-1)*-1.81534108270456817635363222507294267416 ;
      filter_coeff[0].a2_n        = (-1)* 0.831005589346757611579619151598308235407;
      // Numerator
      filter_coeff[0].b0          = 1;
      filter_coeff[0].b1          = 2;
      filter_coeff[0].b2          = 1;
      #ifdef FILTER_QN1_EN
        filter_coeff[0].ns_en       = false;
        filter_coeff[0].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[0].k2          = 0;
      #endif
    } else if (filt_sel == "lp_k1_k2") {
      // Coefficients
      printf("Configured filter for LP with k1_k2\n");
      filter_cfg->filt_en[0]       = true;
      filter_coeff[0].gain        =  0.003916126660547369214837587492183956783;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1;
      #endif
      filter_coeff[0].a1_n        = (-1)*-1.81534108270456817635363222507294267416 ;
      filter_coeff[0].a2_n        = (-1)* 0.831005589346757611579619151598308235407;
      filter_coeff[0].b0          = 1;
      filter_coeff[0].b1          = 2;
      filter_coeff[0].b2          = 1;
      #ifdef FILTER_QN1_EN
        filter_coeff[0].ns_en       = false;
        filter_coeff[0].k1          =  0.5;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[0].k2          = 0.5; // filter_coeff[0].b2;
      #endif
    } else if (filt_sel == "shelf_f3") {
      // Coefficients
      printf("Configured filter for shelf filter with f=1980\n");
      filter_cfg->filt_en[0]       = true;
      filter_coeff[0].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1; // 2.754227427717883536217868822859600186348 ;
      #endif
      // Denominator (a0=1)
      filter_coeff[0].a1_n        = (-1)*-1.824813564508648955353464771178551018238;
      filter_coeff[0].a2_n        = (-1)* 0.887868168750441721925881211063824594021;
      // Numerator
      filter_coeff[0].b0          =  0.398787851509417257123146782760159112513;
      filter_coeff[0].b1          = -0.662550066179779961750284655863652005792;
      filter_coeff[0].b2          =  0.286655968326007315472025993585702963173;
      #ifdef FILTER_QN1_EN
        filter_coeff[0].ns_en       = false;
        filter_coeff[0].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[0].k2          = 0;
      #endif
    } else if (filt_sel == "shelf_f3_k1_k2") {
      // Coefficients
      printf("Configured filter for shelf filter with f=1980 and quantization noise feedback\n");
      filter_cfg->filt_en[0]       = true;
      filter_coeff[0].gain        =  1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1; // 2.754227427717883536217868822859600186348 ;
      #endif
      // Denominator (a0=1)
      filter_coeff[0].a1_n        = (-1)*-1.824813564508648955353464771178551018238;
      filter_coeff[0].a2_n        = (-1)* 0.887868168750441721925881211063824594021;
      // Numerator
      filter_coeff[0].b0          =  0.398787851509417257123146782760159112513;
      filter_coeff[0].b1          = -0.662550066179779961750284655863652005792;
      filter_coeff[0].b2          =  0.286655968326007315472025993585702963173;
      #ifdef FILTER_QN1_EN
        filter_coeff[0].ns_en       = true;
        filter_coeff[0].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[0].k2          = 0; // filter_coeff[0].a2;
      #endif
    } else if (filt_sel == "megaclite") {
      // Coefficients
      printf("Configured filter for Megaclite (9 stages)\n");
      filter_cfg->filt_en[0]       = true;
      filter_coeff[0].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1;
      #endif
      filter_coeff[0].b0          =  0.319408597860490;
      filter_coeff[0].b1          =  -0.624229555356244;
      filter_coeff[0].b2          =  0.305058433280511;
      filter_coeff[0].a1_n        =  (-1)*-1.974243922012000;
      filter_coeff[0].a2_n        =  (-1)*0.974481397796753;

      filter_cfg->filt_en[1]       = true;
      filter_coeff[1].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[1].gain_output = 1;
      #endif
      filter_coeff[1].b0          =  0.983635064556315;
      filter_coeff[1].b1          =  -1.808925329063770;
      filter_coeff[1].b2          =  0.849778561461226;
      filter_coeff[1].a1_n        =  (-1)*-1.808925329063770;
      filter_coeff[1].a2_n        =  (-1)*0.833413626017541;

      filter_cfg->filt_en[2]       = true;
      filter_coeff[2].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[2].gain_output = 1;
      #endif
      filter_coeff[2].b0          =  1.093409517154040;
      filter_coeff[2].b1          =  -1.822433570254210;
      filter_coeff[2].b2          =  0.791996419025276;
      filter_coeff[2].a1_n        =  (-1)*-1.822433570254210;
      filter_coeff[2].a2_n        =  (-1)*0.885405936179316;

      filter_cfg->filt_en[3]       = true;
      filter_coeff[3].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[3].gain_output = 1;
      #endif
      filter_coeff[3].b0          =  0.982329177277025;
      filter_coeff[3].b1          =  -1.688386986257360;
      filter_coeff[3].b2          =  0.871281582161652;
      filter_coeff[3].a1_n        =  (-1)*-1.688386986257360;
      filter_coeff[3].a2_n        =  (-1)*0.853610759438677;

      filter_cfg->filt_en[4]       = true;
      filter_coeff[4].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[4].gain_output = 1;
      #endif
      filter_coeff[4].b0          =  1.056438597613140;
      filter_coeff[4].b1          =  -1.406274631999880;
      filter_coeff[4].b2          =  0.690155212281140;
      filter_coeff[4].a1_n        =  (-1)*-1.406274631999880;
      filter_coeff[4].a2_n        =  (-1)*0.746593809894284;

      filter_cfg->filt_en[5]       = true;
      filter_coeff[5].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[5].gain_output = 1;
      #endif
      filter_coeff[5].b0          =  0.909183960640696;
      filter_coeff[5].b1          =  -1.040372537645370;
      filter_coeff[5].b2          =  0.799814816334166;
      filter_coeff[5].a1_n        =  (-1)*-1.040372537645370;
      filter_coeff[5].a2_n        =  (-1)*0.708998776974862;

      filter_cfg->filt_en[6]       = true;
      filter_coeff[6].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[6].gain_output = 1;
      #endif
      filter_coeff[6].b0          =  0.877016467691644;
      filter_coeff[6].b1          =  -0.461260815209430;
      filter_coeff[6].b2          =  0.678451143375803;
      filter_coeff[6].a1_n        =  (-1)*-0.461260815209430;
      filter_coeff[6].a2_n        =  (-1)*0.555467611067447;

      filter_cfg->filt_en[7]       = true;
      filter_coeff[7].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[7].gain_output = 1;
      #endif
      filter_coeff[7].b0          =  1.095347108815990;
      filter_coeff[7].b1          =  0.326574849326571;
      filter_coeff[7].b2          =  0.578620343549860;
      filter_coeff[7].a1_n        =  (-1)*0.326574849326571;
      filter_coeff[7].a2_n        =  (-1)*0.673967452365846;

      filter_cfg->filt_en[8]       = true;
      filter_coeff[8].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[8].gain_output = 1;
      #endif
      filter_coeff[8].b0          =  0.528564939714206;
      filter_coeff[8].b1          =  1.057129879428410;
      filter_coeff[8].b2          =  0.528564939714206;
      filter_coeff[8].a1_n        =  (-1)*0.585160827483669;
      filter_coeff[8].a2_n        =  (-1)*0.529098931373154;
    } else if (filt_sel == "no") {
      // Coefficients
      printf("Configured filter for feed through\n");
      filter_cfg->filt_en[0]       = true;
      filter_coeff[0].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1;
      #endif
      filter_coeff[0].a1_n        = (-1)*0;
      filter_coeff[0].a2_n        = (-1)*0;
      filter_coeff[0].b0          = 1;
      filter_coeff[0].b1          = 0;
      filter_coeff[0].b2          = 0;
      #ifdef FILTER_QN1_EN
        filter_coeff[0].ns_en       = false;
        filter_coeff[0].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[0].k2          = 0;
      #endif
      // printf("--> gain =%4.8f %s \n", filter_coeff[0].gain.to_double(), filter_coeff[0].gain.to_string().c_str());
      filter_cfg->filt_en[12]       = true;
      filter_coeff[12].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[12].gain_output = 1;
      #endif
      filter_coeff[12].a1_n        = (-1)*0;
      filter_coeff[12].a2_n        = (-1)*0;
      filter_coeff[12].b0          = 1;
      filter_coeff[12].b1          = 0;
      filter_coeff[12].b2          = 0;
      #ifdef FILTER_QN1_EN
        filter_coeff[12].ns_en       = false;
        filter_coeff[12].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[12].k2          = 0;
      #endif

    } else if (filt_sel == "delay") {
      // Delay
      filter_cfg->delay_sel = 0;
      filter_cfg->delay_val = 10;

      // Coefficients
      printf("Configured tweeter filter for feed through\n");
      filter_cfg->filt_en[0]      = true;
      filter_coeff[0].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1;
      #endif
      filter_coeff[0].a1_n        = (-1)*0;
      filter_coeff[0].a2_n        = (-1)*0;
      filter_coeff[0].b0          = 1;
      filter_coeff[0].b1          = 0;
      filter_coeff[0].b2          = 0;
      #ifdef FILTER_QN1_EN
        filter_coeff[0].ns_en       = false;
        filter_coeff[0].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[0].k2          = 0;
      #endif

      // Coefficients
      printf("Configured woofer filter for feed through\n");
      filter_cfg->filt_en[12]      = true;
      filter_coeff[12].gain        = 1;
      #ifdef FILTER_GAIN_OUT_EN
        filter_coeff[0].gain_output = 1;
      #endif
      filter_coeff[12].a1_n        = (-1)*0;
      filter_coeff[12].a2_n        = (-1)*0;
      filter_coeff[12].b0          = 1;
      filter_coeff[12].b1          = 0;
      filter_coeff[12].b2          = 0;
      #ifdef FILTER_QN1_EN
        filter_coeff[12].ns_en       = false;
        filter_coeff[12].k1          =  0;
      #endif
      #ifdef FILTER_QN2_EN
        filter_coeff[12].k2          = 0;
      #endif

        // printf("--> gain =%4.8f %s \n", filter_coeff[0].gain.to_double(), filter_coeff[0].gain.to_string().c_str());
    } else {
      printf("Invalid configuration requested!\n");
    }

  }

#ifdef FILTER_NAMESPACE
}
#endif
