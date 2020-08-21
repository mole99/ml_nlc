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
//  File             $URL: http://10.3.34.6:20000/svn/leda_1/trunk/2v0/units/filter/hls/filter_c_tb.cpp $
//  Author
//  Date             $LastChangedDate: 2020-01-03 15:36:53 +0100 (Fri, 03 Jan 2020) $
//  Last changed by  $LastChangedBy: kstrohma $
//  Version          $Revision: 5173 $
//
// Description       Upsampling filter
//
//  ----------------------------------------------------------------------------
//                    Revision History (written manually)
//  ----------------------------------------------------------------------------
//
//  Date        Author     Change Description
//  ==========  =========  ========================================================
//  2017-03-09  kstrohma   Initial release
//  (rev xxxxx)


#include <iostream>
#include <fstream>
#include <math.h>

#include "filter_c_top_helper.h"

#ifdef FILTER_NAMESPACE
  using namespace filter;
#endif


int main(void) {

	const bool verbose         = true;

	int retval = 0;

    double x_real;
	ap_fixed<4,2,AP_RND,AP_SAT>   x_rnd_sat;
    ap_fixed<4,2,AP_TRN,AP_SAT>   x_trn_sat;

    ap_fixed<16,2,AP_TRN,AP_SAT>   x_test;

    x_test = -2.5; printf("x = -2.5 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test = -2.0; printf("x = -2.0 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test = -1.5; printf("x = -1.5 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test = -1.0; printf("x = -1.0 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test = -0.5; printf("x = -0.5 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test =  0.5; printf("x =  0.5 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test =  1.0; printf("x =  1.0 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test =  1.5; printf("x =  1.5 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test =  2.0; printf("x =  2.0 -->  %s\n"  , x_test.to_string(10).c_str());
    x_test =  2.5; printf("x =  2.5 -->  %s\n"  , x_test.to_string(10).c_str());
    return 1;

	// input sine wave definition
	float  ampl                 =     1.9;
    string filt_list[2]         = {"delay", "lp"};
	float  fsig[2]              = {100.0, 2000.0};
	// float  fsig[7]              = {100.0, 200.0, 500.0, 1000.0, 2000.0, 5000.0, 10000.0};
	float  fsample              = 48000.0;
	float  tsample              = 1/fsample;
    int    sample_offset        = 1024;
    int    sample_nr            = 65536/4;
    //int    sample_offset        = 0;
    //int    sample_nr            = 50;
	float  time_step;
	float  sample;

    xin_t  xn;
    yout_t yn_0, yn;
    yout_t yn_1;
    yout_t yn_tweeter;
    yout_t yn_woofer;

    char tmp_str1[128];
    char tmp_str2[128];
    /*
    for (int i=0; i<128; i++) {
      x_real = (i - 64.0)/16.0;
      x_rnd_sat = x_real;
      x_trn_sat = x_real;
      printf("Dec: %2.6f rnd=%2.6f trn=%2.6f\n", x_real, x_rnd_sat.to_double(), x_trn_sat.to_double());
    }
    return 1;
    */

    for (int i_filt=0; i_filt<(sizeof(filt_list)/sizeof(*filt_list)); i_filt++) {
      for (int i_f=0; i_f<(sizeof(fsig)/sizeof(*fsig)); i_f++) {
        printf("Simulating with following configuration: \n");
        printf("  Configuration: %s \n"     , filt_list[i_filt].c_str());
        printf("  Frequency    : %4.0fHz \n", fsig[i_f]);
        printf("  Amplitude    : %6.2f   \n", ampl);
        printf("  Samples      : %7i   \n"  , sample_nr);
        #ifdef FILTER_NAMESPACE
          filter_c_top(xn, &yn_0, &yn_1, true, filter::filter_cfg, filter::filter_coeff);
          filter_c_init(filt_list[i_filt], &filter::filter_cfg, filter::filter_coeff);
       #else
          filter_c_top(xn, &yn_0, &yn_1, true, filter_cfg, filter_coeff);
          filter_c_init(filt_list[i_filt], &filter_cfg, filter_coeff);
       #endif

      sprintf(tmp_str1, "../../../sampleout_%s_%02if%03ikHz.csv", filt_list[i_filt].c_str(), int(fsig[i_f]/1000), int((fsig[i_f]/1000.0 - int(fsig[i_f]/1000))*1000));
      std::ofstream file_sample_out (tmp_str1);
      file_sample_out.precision(10);
      file_sample_out << std::showbase << std::fixed << std::showpoint;
      file_sample_out << "Time" << ";" <<  "Input" << ";" << "Output" << ";" << "glbl_monitor[0]" << std::endl;

      sprintf(tmp_str2, "../../../glbl_monitor_%s_%02if%03ikHz.csv", filt_list[i_filt].c_str(), int(fsig[i_f]/1000), int((fsig[i_f]/1000.0 - int(fsig[i_f]/1000))*1000));
      std::ofstream file_glb_monitor (tmp_str2);
      file_glb_monitor.precision(10);
      file_glb_monitor << std::showbase << std::fixed << std::showpoint;
      file_glb_monitor << "0" << ";" <<  "1" << ";" << "2" << ";" << "3" << std::endl;

      time_step = 0;
      for (int i=0; i<(sample_offset+sample_nr); i++) {
        sample    = ampl * sin((2*M_PI * i * fsig[i_f]) / fsample);
	    time_step = time_step + tsample;
	    xn        = sample;

        #ifdef FILTER_NAMESPACE
	      filter_c_top(xn, &yn_0, &yn_1, false, filter::filter_cfg, filter::filter_coeff);
        #else
	      filter_c_top(xn, &yn_0, &yn_1, false, filter_cfg, filter_coeff);
        #endif
        yn = yn_0;
        yn_tweeter = yn_0;
        yn_woofer  = yn_1;
        //yn = filter_c_top(xn, false, filter::gain_val, filter::filter_coeff);
	    if (verbose) {
//        printf("Sample [%3i]: %3.8f --> %3.8f\n", i, xn.to_double(), yn.to_double());
	    }
	    if (i >= sample_offset) {
          file_sample_out    << time_step       << ";" <<  xn << ";" << yn_tweeter << ";" << yn_woofer << ";" <<glbl_monitor[0] << std::endl;
          file_glb_monitor   << glbl_monitor[0] << ";" << glbl_monitor[1] << ";" << glbl_monitor[2] << ";" << glbl_monitor[3] << ";" << glbl_monitor[4] << ";"
        		             << glbl_monitor[5] << ";" << glbl_monitor[6] << ";" << glbl_monitor[7] << ";" << glbl_monitor[8] << ";" << glbl_monitor[8] << ";"
							 << xn << ";" << yn << std::endl;
	    }
      }
      file_sample_out.close();
      file_glb_monitor.close();
	}
    }
	// Compare the results file with the golden results
	if (retval != 0) {
		printf("Test failed  !!!\n");
		retval=1;
	} else {
		printf("Test passed !\n");
  }

	// Return 0 if the test passes
  return retval;
}


// ---------------------------------------------------------------------------
// For testbench ....
// ---------------------------------------------------------------------------

