#ifndef NETWORK_H
#define NETWORK_H

#include <stdint.h>

#define NUM_INPUT 2
#define NETWORK_INPUT_SCALE 0.003921568859368563
#define NETWORK_INPUT_ZERO_POINT -128

#define NUM_OUTPUT 1
#define NETWORK_OUTPUT_SCALE 1.0619455575942993
#define NETWORK_OUTPUT_ZERO_POINT -128

#define NUM_LAYERS 3

const int8_t weights_0[8][2] = {{-4, -1}, {-5, 0}, {15, -127}, {-6, -6}, {-6, -21}, {6, -33}, {86, -3}, {7, -50}};

const int8_t weights_1[8][8] = {{12, 3, 75, 5, 20, 38, 23, 45}, {-6, 5, -86, -3, 28, 26, -36, 5}, {-10, 12, 71, -7, 27, 34, 26, 65}, {2, 13, 73, -1, 39, 32, 31, 54}, {1, -2, 80, -8, 21, 36, 13, 58}, {9, 2, 5, 9, -2, -1, 24, -15}, {-4, -6, -23, 3, 28, 32, -127, 65}, {4, 1, -39, 11, 22, -1, -10, -27}};

const int8_t weights_2[1][8] = {{44, -92, 50, 48, 54, -109, -127, -99}};

const int32_t bias_0[8] = {0, 0, 1299, 0, 6493, 3221, 1092, 1879};

const int32_t bias_1[8] = {286, 305, 352, 352, 362, -147, 312, 601};

const int32_t bias_2[1] = {94};

const uint16_t output_conversion_scale[] = {1446, 1836, 953};
const int8_t output_zero_point[] = {-128, -128, -128};

struct layer
	{
		// Layer data
		
		int8_t* weights;	
		int32_t* bias;
		
		int dimension_0;
		int dimension_1;
		
		// Input Quantization
		// int8_t input_zero_point;
		
		// Output Quantization
		uint16_t output_conversion_scale;
		int8_t output_zero_point;
	} typedef layer_t;

const layer_t layer_0 = {
	.weights = (int8_t*)weights_0,
	.bias = (int32_t*)bias_0,

	.dimension_0 = 8,
	.dimension_1 = 2,

	.output_conversion_scale = 1446, // / 2^17
	.output_zero_point = -128
};

const layer_t layer_1 = {
	.weights = (int8_t*)weights_1,
	.bias = (int32_t*)bias_1,

	.dimension_0 = 8,
	.dimension_1 = 8,

	.output_conversion_scale = 1836, // / 2^17
	.output_zero_point = -128
};

const layer_t layer_2 = {
	.weights = (int8_t*)weights_2,
	.bias = (int32_t*)bias_2,

	.dimension_0 = 1,
	.dimension_1 = 8,

	.output_conversion_scale = 953, // / 2^17
	.output_zero_point = -128
};

layer_t network[] = {layer_0, layer_1, layer_2};

#endif

