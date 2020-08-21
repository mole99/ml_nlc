#include "svdpi.h"

#include "stdio.h"

#include "filter_c_top.h"
#include "filter_c_top_helper.h"

typedef struct {
  int gain;
  int b0;
  int b1;
  int b2;  
  int a1_n;
  int a2_n;    
} SV_filter_coeff_t;

typedef struct {
  int  filt_en;
  int  gain;
  int  delay_sel;
  int  delay_val;
} SV_filter_cfg_t;
    
extern "C" void filter_c_top_wrapper (int xn_0, 
                                      int buf_clr, 
                                      const svOpenArrayHandle fiter_coeff_p,
                                      const svOpenArrayHandle fiter_cfg_p,
                                      int *yn_0,
                                      int *yn_1);
  
filter::xin_t convert_to_xin_t (int in) {
  filter::xin_t out;
  int tmp;
  for (int i = 23; i>=0; i--) {
    tmp = in >> i;
    
    if (tmp & 1) tmp = 1; // lsb is 1
    else         tmp = 0; // lsb is 0
    
    out[i] = tmp;
  }
  return out;
}

int convert_from_xin_t (filter::xin_t in) {
  int out;
  out = 0;
  for (int i = 23; i>=0; i--) {
    if (in[i] == 1)
      out = out | (1<<i);
  }
 
  //printf("\nConverted data is %x\n",out);
  
  return out;
}

filter::gain_val_t convert_to_gain (int in) {
  filter::gain_val_t out;
  int tmp;
  for (int i = 5; i>=0; i--) {
    tmp = in >> i;
    
    if (tmp & 1) tmp = 1; // lsb is 1
    else         tmp = 0; // lsb is 0

    out[i] = tmp;
  }
  
  return out;  
}

filter::coeff_t convert_to_filt_coeff (int in) {
  filter::coeff_t out;
  int tmp;
  for (int i = 15; i>=0; i--) {
    tmp = in >> i;
    
    if (tmp & 1) tmp = 1; // lsb is 1
    else         tmp = 0; // lsb is 0
    
    out[i] = tmp;
  }
  return out;
}

filter::coeff_gain_t convert_to_filt_coeff_gain (int in) {
  filter::coeff_gain_t out;
  int tmp;
  for (int i = 15; i>=0; i--) {
    tmp = in >> i;
    
    if (tmp & 1) tmp = 1; // lsb is 1
    else         tmp = 0; // lsb is 0
    
    out[i] = tmp;
  }
  return out;
}


void filter_c_top_wrapper (int xn_0, 
                           int buf_clr, 
                           const svOpenArrayHandle fiter_coeff_p,
                           const svOpenArrayHandle fiter_cfg_p,
                           int *yn_0,
                           int *yn_1) {

  filter::yout_t result_yn_0_p = 0;
  filter::yout_t result_yn_1_p = 0;
                                         
  //printf("\nxn_0 is %x\n",xn_0);
  //printf("buf_clr is %d\n",buf_clr);
  
  // match the array of coefficients from SV, to the ones to be used in C  
  SV_filter_coeff_t *sv_coeff_array = (SV_filter_coeff_t *)svGetArrayPtr(fiter_coeff_p);

  // match the array of configuration from SV, to the ones to be used in C  
  SV_filter_cfg_t *sv_cfg_array = (SV_filter_cfg_t *)svGetArrayPtr(fiter_cfg_p);
  
  //printf("coeff_p_0.gain is %x \n",sv_coeff_array[0].gain); 
  //printf("coeff_p_0.b0 is %x \n",sv_coeff_array[0].b0); 
  //printf("coeff_p_0.b1 is %x \n",sv_coeff_array[0].b1); 
  //printf("coeff_p_0.b2 is %x \n",sv_coeff_array[0].b2); 
  //printf("coeff_p_0.a1_n is %x \n",sv_coeff_array[0].a1_n); 
  //printf("coeff_p_0.a2_n is %x \n",sv_coeff_array[0].a2_n); 

  //printf("cfg_p_0.filt_en is %x \n",sv_cfg_array[0].filt_en); 
  //printf("cfg_p_0.gain is %x \n",sv_cfg_array[0].gain); 
  //printf("cfg_p_0.delay_sel is %x \n",sv_cfg_array[0].delay_sel); 
  //printf("cfg_p_0.delay_val is %x \n",sv_cfg_array[0].delay_val); 
  
  // convert the data received from SV to the data types in C
  bool buf_clr_int;
  buf_clr_int = (buf_clr == 1) ? true : false;
  
  filter::xin_t xn_0_int;
  xn_0_int =  convert_to_xin_t (xn_0);

  filter::filter_coeff_t coeff_int[18];

  for (int k = 0; k < 18; k++) {
    coeff_int[k].gain    = convert_to_filt_coeff_gain (sv_coeff_array[k].gain);
    coeff_int[k].b0      = convert_to_filt_coeff (sv_coeff_array[k].b0);
    coeff_int[k].b1      = convert_to_filt_coeff (sv_coeff_array[k].b1);
    coeff_int[k].b2      = convert_to_filt_coeff (sv_coeff_array[k].b2);
    coeff_int[k].a1_n    = convert_to_filt_coeff (sv_coeff_array[k].a1_n);
    coeff_int[k].a2_n    = convert_to_filt_coeff (sv_coeff_array[k].a2_n);
  }
  
  filter::filter_cfg_t cfg_int;
  
  for (int j = 0; j<18; j++) {
    cfg_int.filt_en[j] = (((sv_cfg_array[0].filt_en>>j) % 2) == 1) ? true : false;
  }
  cfg_int.gain_val = convert_to_gain (sv_cfg_array[0].gain);
  cfg_int.delay_sel = (sv_cfg_array[0].delay_sel == 1) ? true : false;
  cfg_int.delay_val = sv_cfg_array[0].delay_val;
    
  filter_c_top (xn_0_int, &result_yn_0_p, &result_yn_1_p, buf_clr_int, cfg_int, coeff_int);
  
  //printf ("Filter processing is done \n");     

  //cout << "result_yn_0_p is: %h" << result_yn_0_p<<endl;
  //cout << "result_yn_1_p is: %h" << result_yn_1_p<<endl;  
    
  *yn_0 = convert_from_xin_t(result_yn_0_p); 
  *yn_1 = convert_from_xin_t(result_yn_1_p);   

  //cout << "yn_0 is: " << *yn_0<<endl;
  //cout << "yn_1 is: " << *yn_1<<endl;   
}
