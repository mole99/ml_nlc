#ifndef _NETWORK_TOP_H_
#define _NETWORK_TOP_H_

#include <stdint.h>

// 0 for Discharge, 1 for Charge
#define NETWORK_ARCH 1

#if NETWORK_ARCH == 0
	#define NUM_INPUT 2
	#define NETWORK_INPUT_SCALE 0.003921568859368563
	#define NETWORK_INPUT_ZERO_POINT -128

	#define NUM_OUTPUT 1
	#define NETWORK_OUTPUT_SCALE 1.0619455575942993
	#define NETWORK_OUTPUT_ZERO_POINT -128

	#define NUM_LAYERS 3
#endif

#if NETWORK_ARCH == 1
	#define NUM_INPUT 2
	#define NETWORK_INPUT_SCALE 0.003921568859368563
	#define NETWORK_INPUT_ZERO_POINT -128

	#define NUM_OUTPUT 1
	#define NETWORK_OUTPUT_SCALE 2.2023518085479736
	#define NETWORK_OUTPUT_ZERO_POINT -128

	#define NUM_LAYERS 3
#endif

struct network_weights
{
	int8_t weights_0[8][2];
	int8_t weights_1[8][8];
	int8_t weights_2[1][8];
	int32_t bias_0[8];
	int32_t bias_1[8];
	int32_t bias_2[1];
	uint16_t output_conversion_scale[3];
} typedef network_weights_t;

#ifdef DEBUG_BUILD
	#define DEBUG(x) x
#else
	#define DEBUG(x) do {} while (0)
#endif

void network_top(int8_t input[NUM_INPUT], network_weights_t* network_weights, int8_t output[NUM_OUTPUT]);

#endif
