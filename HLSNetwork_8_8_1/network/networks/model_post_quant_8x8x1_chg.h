#ifndef NETWORK_CHG_H
#define NETWORK_CHG_H

#include <stdint.h>

#define NUM_INPUT 2
#define NETWORK_INPUT_SCALE 0.003921568859368563
#define NETWORK_INPUT_ZERO_POINT -128

#define NUM_OUTPUT 1
#define NETWORK_OUTPUT_SCALE 2.2023518085479736
#define NETWORK_OUTPUT_ZERO_POINT -128

#define NUM_LAYERS 3

const int8_t weights_0[8][2] = {{-4, -4}, {-64, 61}, {-3, 108}, {25, 63}, {76, 22}, {127, 10}, {42, 47}, {52, 30}};

const int8_t weights_1[8][8] = {{-7, -28, -110, -35, 15, 23, 1, 21}, {7, -48, 9, 20, -21, 3, 18, 1}, {5, 20, 16, 15, 16, 19, 21, 23}, {-6, 34, 17, 6, -61, -127, 1, -10}, {3, 16, 25, 25, 19, 23, 25, 19}, {-4, 16, 14, 20, 14, 25, 14, 24}, {-3, 17, 25, 25, 18, 27, 20, 21}, {7, 22, 27, 13, -39, -56, 1, -1}};

const int8_t weights_2[1][8] = {{-44, 127, 22, -112, 15, 13, 19, -54}};

const int32_t bias_0[8] = {0, 730, 1086, -294, 1055, 1, -201, -749};

const int32_t bias_1[8] = {-467, 885, -421, 263, -511, -413, -513, 201};

const int32_t bias_2[1] = {-94};

const uint16_t output_conversion_scale[] = {958, 1325, 1440};
const int8_t output_zero_point[] = {-128, -128, -128};

#endif

