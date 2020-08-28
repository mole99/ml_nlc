#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include "network_top.h"

#if NETWORK_ARCH == 0
	#include "networks/model_post_quant_dchg.h"
	#include "test_data/ideal_dchg.h"
#endif

#if NETWORK_ARCH == 1
	#include "networks/model_post_quant_chg.h"
	#include "test_data/ideal_chg.h"
#endif

void testNetwork(float input[NUM_INPUT], float output[NUM_OUTPUT])
{
	int8_t quantized_input[NUM_INPUT];
	int8_t quantized_output[NUM_OUTPUT];
	
	network_weights_t network_weights;

	memcpy(network_weights.weights_0, weights_0, sizeof(weights_0));
	memcpy(network_weights.weights_1, weights_1, sizeof(weights_1));
	memcpy(network_weights.weights_2, weights_2, sizeof(weights_2));
	memcpy(network_weights.weights_3, weights_3, sizeof(weights_3));

	memcpy(network_weights.bias_0, bias_0, sizeof(bias_0));
	memcpy(network_weights.bias_1, bias_1, sizeof(bias_1));
	memcpy(network_weights.bias_2, bias_2, sizeof(bias_2));
	memcpy(network_weights.bias_3, bias_3, sizeof(bias_3));

	memcpy(network_weights.output_conversion_scale, output_conversion_scale, sizeof(output_conversion_scale));

	// Quantize input
	for (int i=0; i<NUM_INPUT; i++)
	{
		float tmp = input[i] / NETWORK_INPUT_SCALE + NETWORK_INPUT_ZERO_POINT;
		
		if (tmp > 0)
		{
			quantized_input[i] = (int8_t)(tmp + 0.5);
		}
		else
		{
			quantized_input[i] = (int8_t)(tmp - 0.5);
		}
	}
	
	network_top(quantized_input, &network_weights, quantized_output);
	
	// Dequantize output
	for (int i=0; i<NUM_OUTPUT; i++)
	{
		output[i] = (quantized_output[i] - NETWORK_OUTPUT_ZERO_POINT) * NETWORK_OUTPUT_SCALE;
	}
}

float abs_f(float a)
{
	if (a < 0)
	{
		return -a;
	}
	
	return a;
}

void testDataset()
{
	FILE* fp;
	fp = fopen("test_results.csv", "w+");
	
	float mean_absolute_error = 0;
	
	for (int i=0; i<NUM_IDEAL_ENTRIES; i++)
	{
		float input[NUM_INPUT];
		float output[NUM_OUTPUT];
		float correct_output[NUM_OUTPUT];

		for (int j=0; j<NUM_INPUT; j++)
		{
			input[j] = dataset[i][j];
		}
		
		for (int j=0; j<NUM_OUTPUT; j++)
		{
			correct_output[j] = dataset[i][NUM_INPUT + j];
		}
		
		DEBUG(printf("Input: [%f, %f]\n", input[0], input[1]));
		DEBUG(printf("Correct Output: [%f]\n", correct_output[0]));
		
		testNetwork(input, output);
		
		DEBUG(printf("Network Output: [%f]\n", output[0]));
		
		float error = output[0] - correct_output[0];
		
		mean_absolute_error += abs_f(error);
		
		DEBUG(printf("Error: %f\n", error));
		
		fprintf(fp, "%f\n", error);
	}
	
	mean_absolute_error /= NUM_IDEAL_ENTRIES;
	
	printf("mean_absolute_error: %f\n", mean_absolute_error);
	
	fclose(fp);
}


int main()
{
	printf("Starting up...\n");
	
	float input_0[NUM_INPUT] = {0.0, 0.0};
	float input_1[NUM_INPUT] = {1.0, 0.0};
	float input_2[NUM_INPUT] = {0.0, 1.0};
	float input_3[NUM_INPUT] = {1.0, 1.0};
	float input_4[NUM_INPUT] = {0.25, 0.25};
	float input_5[NUM_INPUT] = {0.5, 0.5};
	float input_6[NUM_INPUT] = {0.75, 0.75};
	
	float output[7];

	testNetwork(input_0, &output[0]);
	testNetwork(input_1, &output[1]);
	testNetwork(input_2, &output[2]);
	testNetwork(input_3, &output[3]);
	testNetwork(input_4, &output[4]);
	testNetwork(input_5, &output[5]);
	testNetwork(input_6, &output[6]);
	
	printf("\n[0. 0.] = 65.64985\n\
[1. 0.] = 153.5845\n\
[0. 1.] = 5.4206295\n\
[1. 1.] = 55.41088\n\
[0.25 0.25] = 53.001713\n\
[0.5 0.5] = 53.604004\n\
[0.75 0.75] = 53.604004\n\n");
	
	printf("NUM_IDEAL_ENTRIES: %d\n", NUM_IDEAL_ENTRIES);
	
	printf("Output:\n\n");
	for (int i=0; i<7; i++)
	{
		printf("%f\n", output[i]);
	}
	
	testDataset();

	return 0;
}
