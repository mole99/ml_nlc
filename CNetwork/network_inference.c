#include <stdio.h>
#include <stdint.h>

#define NETWORK_ARCH 0

#if NETWORK_ARCH == 0

#include "networks/model_post_quant_dchg.h"
#include "test_data/ideal_dchg.h"

#endif

#if NETWORK_ARCH == 1

#include "networks/model_post_quant_chg.h"
#include "test_data/ideal_chg.h"

#endif

#ifdef DEBUG_BUILD
#  define DEBUG(x) x
#else
#  define DEBUG(x) do {} while (0)
#endif

void calculateNetwork(int8_t input[NUM_INPUT], int8_t output[NUM_OUTPUT])
{
	int8_t input_buffer[16];
	
	for (int i=0; i<NUM_INPUT; i++)
	{
		input_buffer[i] = input[i];
	}

	// For every layer
	for (int current_layer=0; current_layer<NUM_LAYERS; current_layer++)
	{
		int32_t buffer[16];
		
		// For every neuron
		for (int i = 0; i < network[current_layer].dimension_0; i++)
		{
			DEBUG(printf("\tInitializing buffer with bias\n"));
			
			buffer[i] = network[current_layer].bias[i];
			
			DEBUG(printf("\t%d\n", buffer[i]));
		
			DEBUG(printf("Calculating %d. Neuron\n", i));
		
			// For every weight
			for (int j = 0; j < network[current_layer].dimension_1; j++)
			{
				DEBUG(printf("\tCalculating %d. weight", j));
			
				// Dot product
				buffer[i] += network[current_layer].weights[i * network[current_layer].dimension_1 + j] * input_buffer[j];
				
				DEBUG(printf("\t%d\n", buffer[i]));
								
				int8_t input_zero_point;
				
				if (current_layer == 0)
				{
					input_zero_point = NETWORK_INPUT_ZERO_POINT;
				}
				else
				{
					input_zero_point = network[current_layer - 1].output_zero_point;
				}
				
				if (input_zero_point != 0)
				{
					buffer[i] -= network[current_layer].weights[i * network[current_layer].dimension_1 + j] * input_zero_point;
				}
				
				DEBUG(printf("\t%d\n", buffer[i]));
			}
			
			
			
			DEBUG(printf("\tRelu\n"));
			
			// TODO Relu? subsumed by saturation
			
			// Relu
			/*if (buffer[i] < 0)
			{
				buffer[i] = 0;
			}*/
				
			
			// TODO Check for overflow in fixed point conversion
			buffer[i] = (((int32_t)buffer[i] * (uint16_t)(network[current_layer].output_conversion_scale))>>17) + network[current_layer].output_zero_point;
			
			// TODO old float multiplication
			//buffer[i] = buffer[i] * network[current_layer].output_conversion_scale + network[current_layer].output_zero_point;
			
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
		output[i] = input_buffer[i];
	}

}

void testNetwork(float input[NUM_INPUT], float output[NUM_OUTPUT])
{
	int8_t quantized_input[NUM_INPUT];
	int8_t quantized_output[NUM_OUTPUT];
	
	for (int i=0; i<NUM_INPUT; i++)
	{
		float tmp = input[i] / NETWORK_INPUT_SCALE + NETWORK_INPUT_ZERO_POINT;
		
		// Round to nearest integer TODO check
		if (tmp > 0)
		{
			quantized_input[i] = (int8_t)(tmp + 0.5);
		}
		else
		{
			quantized_input[i] = (int8_t)(tmp - 0.5);
		}
	}
	
	calculateNetwork(quantized_input, quantized_output);
	
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
	
	
	printf("Output:\n\n");
	for (int i=0; i<7; i++)
	{
		printf("%f\n", output[i]);
	}
	
	testDataset();

	return 0;
}
