#ifndef NETWORK_H
#define NETWORK_H

#include <stdint.h>

#define NUM_INPUT 2
#define NETWORK_INPUT_SCALE 0.003921568859368563
#define NETWORK_INPUT_ZERO_POINT -128

#define NUM_OUTPUT 1
#define NETWORK_OUTPUT_SCALE 1.404667615890503
#define NETWORK_OUTPUT_ZERO_POINT -128

#define NUM_LAYERS 4

const int8_t weights_0[16][2] = {{41, 54}, {-13, 2}, {36, 55}, {-8, 127}, {5, 103}, {96, 8}, {27, 79}, {-6, -12}, {-12, -16}, {8, -25}, {13, 70}, {105, 5}, {79, 22}, {-12, -3}, {17, 109}, {-12, -4}};

const int8_t weights_1[8][16] = {{-20, -6, 4, 32, 18, -127, -6, 9, 4, 0, -3, -120, -56, 1, 4, 8}, {5, -7, -3, 23, -11, -3, 7, 10, -12, -11, -16, -16, 5, -13, 2, 10}, {29, -12, 12, 40, 48, 18, 35, -2, -1, -7, 29, -2, 9, 8, 49, 5}, {5, 13, 2, 42, 42, -41, 25, 14, 10, -8, 5, -20, -5, 11, 23, 5}, {5, -15, -11, 33, 32, -44, 13, 11, 12, -7, 16, -50, -20, 6, 14, 6}, {35, 1, 36, 50, 52, 20, 37, 13, 3, -4, 35, 14, 19, 5, 38, 4}, {7, 7, 11, 28, 12, -78, -4, 4, -12, 5, 17, -69, -31, -1, 5, 7}, {4, 8, 3, -3, 4, -8, -13, -14, 9, -10, 5, 13, -15, 7, 6, 5}};

const int8_t weights_2[4][8] = {{-127, 89, 18, -39, -34, 34, -43, -6}, {-109, 78, 40, -59, -44, 25, -27, -13}, {-91, 83, 32, -46, -36, 24, -50, 7}, {-118, 81, 40, -56, -41, 37, -63, -5}};

const int8_t weights_3[1][4] = {{91, 92, 71, 127}};

const int32_t bias_0[16] = {-550, -440, -1859, 2100, -538, -4, -497, 0, 0, -1993, -2038, -11, -175, 0, -428, 0};

const int32_t bias_1[8] = {-384, 2516, -588, 1218, 638, -756, 302, -256};

const int32_t bias_2[4] = {-107, -40, -132, -105};

const int32_t bias_3[1] = {-116};


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

	.output_conversion_scale = 0.007394509855657816,
	.output_zero_point = -128
};

const layer_t layer_1 = {
	.weights = (int8_t*)weights_1,
	.bias = (int32_t*)bias_1,

	.dimension_0 = 8,
	.dimension_1 = 16,

	.input_zero_point = -128,

	.output_conversion_scale = 0.004670023452490568,
	.output_zero_point = -128
};

const layer_t layer_2 = {
	.weights = (int8_t*)weights_2,
	.bias = (int32_t*)bias_2,

	.dimension_0 = 4,
	.dimension_1 = 8,

	.input_zero_point = -128,

	.output_conversion_scale = 0.023149626329541206,
	.output_zero_point = -128
};

const layer_t layer_3 = {
	.weights = (int8_t*)weights_3,
	.bias = (int32_t*)bias_3,

	.dimension_0 = 1,
	.dimension_1 = 4,

	.input_zero_point = -128,

	.output_conversion_scale = 0.003220771672204137,
	.output_zero_point = -128
};

layer_t network[] = {layer_0, layer_1, layer_2, layer_3};

#endif

