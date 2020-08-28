#ifndef _NETWORK_TOP_H_
	#define _NETWORK_TOP_H_

	#include <stdint.h>

	#define NUM_INPUT 2
	#define NETWORK_INPUT_SCALE 0.003921568859368563
	#define NETWORK_INPUT_ZERO_POINT -128

	#define NUM_OUTPUT 1
	#define NETWORK_OUTPUT_SCALE 0.6022921800613403
	#define NETWORK_OUTPUT_ZERO_POINT -128

	#define NUM_LAYERS 4

	struct network_weights
	{
		int8_t weights_0[16][2];
		int8_t weights_1[8][16];
		int8_t weights_2[4][8];
		int8_t weights_3[1][4];
		int32_t bias_0[16];
		int32_t bias_1[8];
		int32_t bias_2[4];
		int32_t bias_3[1];
	} typedef network_weights_t;

	#ifdef DEBUG_BUILD
		#define DEBUG(x) x
	#else
		#define DEBUG(x) do {} while (0)
	#endif

	void network_top(int8_t input[NUM_INPUT], network_weights_t* network_weights, int8_t output[NUM_OUTPUT]);
#endif
