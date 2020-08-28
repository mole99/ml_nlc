#include <stdio.h>
#include <stdint.h>

#include "network_top.h"

int8_t getWeight(network_weights_t* network_weights, int layer, int index_0, int index_1)
{
	switch (layer)
	{
		case 0:
			return network_weights->weights_0[index_0][index_1];
			break;
		case 1:
			return network_weights->weights_1[index_0][index_1];
			break;
		case 2:
			return network_weights->weights_2[index_0][index_1];
			break;
		case 3:
			return network_weights->weights_3[index_0][index_1];
			break;
	}

	return 0;
}

int32_t getBias(network_weights_t* network_weights, int layer, int index)
{
	switch (layer)
	{
		case 0:
			return network_weights->bias_0[index];
			break;
		case 1:
			return network_weights->bias_1[index];
			break;
		case 2:
			return network_weights->bias_2[index];
			break;
		case 3:
			return network_weights->bias_3[index];
			break;
	}

	return 0;
}

struct layer
{
	// Layer data
	const int dimension_0;
	const int dimension_1;
} typedef layer_t;

static const layer_t layer_0 = {
	.dimension_0 = 16,
	.dimension_1 = 2,
};

static const layer_t layer_1 = {
	.dimension_0 = 8,
	.dimension_1 = 16,
};

static const layer_t layer_2 = {
	.dimension_0 = 4,
	.dimension_1 = 8,
};

static const layer_t layer_3 = {
	.dimension_0 = 1,
	.dimension_1 = 4,
};

const layer_t network[] = {layer_0, layer_1, layer_2, layer_3};

void network_top(int8_t input[NUM_INPUT], network_weights_t* network_weights, int8_t output[NUM_OUTPUT])
{
	#pragma HLS INTERFACE       ap_none port=network_weights
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_0 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_1 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_2 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_3 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_0 complete dim=2
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_1 complete dim=2
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_2 complete dim=2
	#pragma HLS ARRAY_PARTITION variable=network_weights.weights_3 complete dim=2
	#pragma HLS ARRAY_PARTITION variable=network_weights.bias_0 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=network_weights.bias_1 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=network_weights.bias_2 complete dim=1
	#pragma HLS ARRAY_PARTITION variable=network_weights.bias_3 complete dim=1

	#pragma HLS ARRAY_PARTITION variable=network_weights.output_conversion_scale complete dim=1

	//#pragma HLS ALLOCATION instances=mul limit=100 operation
	//#pragma HLS ALLOCATION instances=add limit=100 operation

	// #pragma HLS inline region

	#pragma HLS latency min=4 max=8
	#pragma HLS pipeline


	// TODO memcpy
	int8_t input_buffer[16] = {input[0], input[1]};

	// For every layer
	for (int current_layer=0; current_layer<NUM_LAYERS; current_layer++)
	{
		#pragma HLS unroll //factor=2

		int32_t buffer[16];
		
		// For every neuron
		for (int i = 0; i < network[current_layer].dimension_0; i++)
		{
			#pragma HLS unroll

			DEBUG(printf("\tInitializing buffer with bias\n"));

			buffer[i] = getBias(network_weights, current_layer, i);

			DEBUG(printf("\t%d\n", buffer[i]));

			DEBUG(printf("Calculating %d. Neuron\n", i));
		
			// For every weight
			for (int j = 0; j < network[current_layer].dimension_1; j++)
			{
				#pragma HLS unroll

				DEBUG(printf("\tCalculating %d. weight", j));
			
				// Dot product TODO

				buffer[i] += getWeight(network_weights, current_layer, i, j) * input_buffer[j];

				DEBUG(printf("\t%d\n", buffer[i]));
				
				buffer[i] -= (int16_t)getWeight(network_weights, current_layer, i, j) * (int8_t)-128; //input_zero_point;
				
				DEBUG(printf("\t%d\n", buffer[i]));
			}
			
			// TODO Check for overflow in fixed point conversion
			buffer[i] = (((int32_t)buffer[i] * (uint16_t)(network_weights->output_conversion_scale[current_layer]))>>17) + (int8_t)-128; //output_zero_point;
			
			// Saturating cast
			if (buffer[i] > 127)
			{
				buffer[i] = 127;
			}
			
			if (buffer[i] < -127)
			{
				buffer[i] = -127;
			}
			
		}
		
		DEBUG(printf("\nResulting buffer:\n"));
		
		for (int i = 0; i < network[current_layer].dimension_0; i++)
		{
			DEBUG(printf("\t%d\n", buffer[i]));
			input_buffer[i] = buffer[i];
		}	
	}
	
	for (int i=0; i<NUM_OUTPUT; i++)
	{
		#pragma HLS unroll

		output[i] = input_buffer[i];
	}

}

