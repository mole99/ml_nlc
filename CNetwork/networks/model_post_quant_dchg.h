#ifndef NETWORK_H
#define NETWORK_H

#include <stdint.h>

#define NUM_INPUT 2
#define NETWORK_INPUT_SCALE 0.003921568859368563
#define NETWORK_INPUT_ZERO_POINT -128

#define NUM_OUTPUT 1
#define NETWORK_OUTPUT_SCALE 0.6022921800613403
#define NETWORK_OUTPUT_ZERO_POINT -128

#define NUM_LAYERS 4

const int8_t weights_0[16][2] = {{27, -85}, {-7, -11}, {-10, -1}, {58, 71}, {26, -127}, {1, -1}, {0, -5}, {-2, -10}, {-7, -10}, {-12, -3}, {-56, 91}, {90, 2}, {2, -27}, {13, 17}, {-12, -2}, {-11, -3}};

const int8_t weights_1[8][16] = {{44, 12, 3, 31, 73, -3, 13, 9, 9, -9, -22, 28, 25, 25, 5, -4}, {55, -12, -15, 7, 60, -2, -9, 4, 0, -4, -25, 8, 8, 27, 9, -4}, {31, -2, -13, -28, 8, 14, -4, -5, 11, 4, 12, -73, 22, 28, 15, 13}, {-6, -3, -12, -5, -9, -14, 15, 0, 14, 4, -6, -9, -10, -8, 3, 2}, {74, 9, -8, -2, 76, -1, -2, 13, 5, -12, -20, -5, 31, 18, -11, -10}, {29, 4, 11, -41, 73, -12, -5, 12, 3, 8, -127, 11, 6, -17, -9, 13}, {58, -9, 9, -12, 66, -7, -14, 0, -6, 5, -53, -4, 42, 15, -6, -15}, {-1, -2, 14, -13, 10, -14, 3, -14, 2, -4, -6, -3, -9, 3, 3, 8}};

const int8_t weights_2[4][8] = {{16, -9, 16, -12, -3, -96, 6, 13}, {-4, 0, -9, 16, -5, -7, -17, -5}, {-20, -9, 48, -3, 5, -32, 3, 13}, {39, 37, -23, 14, 37, 127, 44, 8}};

const int8_t weights_3[1][4] = {{-78, 0, -127, 50}};

const int32_t bias_0[16] = {4101, 0, 0, 2214, 3233, -346, 0, 0, 0, 0, 1419, 5, 10067, 12947, 0, 0};

const int32_t bias_1[8] = {1688, 1383, 1694, 0, 1245, 1222, 1651, 0};

const int32_t bias_2[4] = {-42, 0, -321, 442};

const int32_t bias_3[1] = {82};


struct layer
{
	// Layer data
	
	int8_t* weights;	
	int32_t* bias;
	
	int dimension_0;
	int dimension_1;
	
	// Input Quantization
	int8_t input_zero_point; // TODO remove?	
	
	// Output Quantization
	float output_conversion_scale;
	int8_t output_zero_point;
} typedef layer_t;

const layer_t layer_0 = {
	.weights = (int8_t*)weights_0,
	.bias = (int32_t*)bias_0,

	.dimension_0 = 16,
	.dimension_1 = 2,

	.input_zero_point = -128,

	.output_conversion_scale = 0.007259442005306482,
	.output_zero_point = -128
};

const layer_t layer_1 = {
	.weights = (int8_t*)weights_1,
	.bias = (int32_t*)bias_1,

	.dimension_0 = 8,
	.dimension_1 = 16,

	.input_zero_point = -128,

	.output_conversion_scale = 0.012142951600253582,
	.output_zero_point = -128
};

const layer_t layer_2 = {
	.weights = (int8_t*)weights_2,
	.bias = (int32_t*)bias_2,

	.dimension_0 = 4,
	.dimension_1 = 8,

	.input_zero_point = -128,

	.output_conversion_scale = 0.009247004985809326,
	.output_zero_point = -128
};

const layer_t layer_3 = {
	.weights = (int8_t*)weights_3,
	.bias = (int32_t*)bias_3,

	.dimension_0 = 1,
	.dimension_1 = 4,

	.input_zero_point = -128,

	.output_conversion_scale = 0.02284950576722622,
	.output_zero_point = -128
};

layer_t network[] = {layer_0, layer_1, layer_2, layer_3};

#endif

