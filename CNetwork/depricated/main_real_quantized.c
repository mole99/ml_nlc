#include <stdio.h>
#include <stdint.h>
#include <math.h>

#define NUM_LAYERS 2
#define MULIPLICATION_FACTORS NUM_LAYERS - 1

#define NUM_INPUTS 2
#define NUM_OUTPUTS 1

// Input
#define INPUT_SCALE 0.003921568859368563
#define INPUT_ZERO_POINT -128

typedef int8_t zero_point_t;

typedef int8_t weight_type_t;
typedef int32_t bias_type_t;

// Layer 0
#define LAYER_0_SCALE 0.025475401431322098
#define LAYER_0_ZERO_POINT 0
weight_type_t weights_0[4][2] = {
			{101, 80},
			{19, -42},
			{-2, 2},
			{68, 127},
		};
		
// Layer 1
#define LAYER_1_SCALE 0.027435997501015663
#define LAYER_1_ZERO_POINT 0
weight_type_t weights_1[1][4] = {
			{127, -9, -31, 124}
		};
	
// Bias 0
#define BIAS_0_SCALE 9.990354010369629e-05
#define BIAS_0_ZERO_POINT 0
bias_type_t bias_0[4][1] = {
			{23675}, {-3548}, {-450}, {23677}
		};

// Bias 1
#define BIAS_1_SCALE 0.0007884062360972166
#define BIAS_1_ZERO_POINT 0
bias_type_t bias_1[1][1] = {
			{2980}
		};

// Dense 0 Relu
#define RELU_0_SCALE 0.02873619645833969
#define RELU_0_ZERO_POINT -128

// Output
#define OUTPUT_SCALE 0.20209836959838867
#define OUTPUT_ZERO_POINT -128


struct quantized_weights
{
	weight_type_t* values;
	int dimension_0;
	int dimension_1;
	
	// Quantization parameters
	float scale;
	zero_point_t zero_point;	
} typedef quantized_weights_t;

struct quantized_bias
{
	bias_type_t* values;
	int dimension_0;
	int dimension_1;
	
	// Quantization parameters
	float scale;
	zero_point_t zero_point;	
} typedef quantized_bias_t;

struct layer
{
	quantized_weights_t weights;
	quantized_bias_t bias;
	
	float M;
} typedef layer_t;
					
const layer_t layer_0 = {
			.weights = { 
					.values = (weight_type_t*)weights_0,
					.dimension_0 = 4,
					.dimension_1 = 2,
					.scale = LAYER_0_SCALE,
					.zero_point = LAYER_0_ZERO_POINT	
				},
			.bias = { 
					.values = (bias_type_t*)bias_0,
					.dimension_0 = 4,
					.dimension_1 = 1,
					.scale = BIAS_0_SCALE,
					.zero_point = BIAS_0_ZERO_POINT	
				},
			.M = 0.0
		};
		
const layer_t layer_1 = {
			.weights = { 
					.values = (weight_type_t*)weights_1,
					.dimension_0 = 1,
					.dimension_1 = 4,
					.scale = LAYER_1_SCALE,
					.zero_point = LAYER_1_ZERO_POINT	
				},
			.bias = { 
					.values = (bias_type_t*)bias_1,
					.dimension_0 = 1,
					.dimension_1 = 1,
					.scale = BIAS_1_SCALE,
					.zero_point = BIAS_1_ZERO_POINT	
				},
			.M = 0.0
		};
		
layer_t network[] = {layer_0, layer_1};

void printLayer(layer_t* layer)
{
	for (int i = 0; i < layer->weights.dimension_0; i++)
	{
		for (int j = 0; j < layer->weights.dimension_1; j++)
		{
			printf("%5d", layer->weights.values[i * layer->weights.dimension_1 + j]);
		}
		
		printf("\n");
	}
	
	printf("\n\n");
	
	for (int i = 0; i < layer->bias.dimension_0; i++)
	{
		for (int j = 0; j < layer->bias.dimension_1; j++)
		{
			printf("%5d", layer->bias.values[i * layer->bias.dimension_1 + j]);
		}
		
		printf("\n");
	}
	
	printf("\n\n");
}


void calculateNetwork(float* real_input, layer_t network[], float* output)
{	
	printf("Starting Calculation\n");
	
	printf("Input: [%f, %f]\n", real_input[0], real_input[1]);
	
	int8_t input[4];
	
	// Quantize the input
	for (int i=0; i<NUM_INPUTS; i++)
	{
		printf("%f\n", real_input[i] / INPUT_SCALE + INPUT_ZERO_POINT);
		input[i] = (int8_t)round(real_input[i] / INPUT_SCALE + INPUT_ZERO_POINT);
		printf("%d\n", input[i]);
	}
	
	printf("Quantized Input: [%d, %d]\n", input[0], input[1]);
	
	// For every layer
	for (int current_layer=0; current_layer<NUM_LAYERS; current_layer++)
	{
		if (network[current_layer].weights.dimension_0 != network[current_layer].bias.dimension_0)
		{
			printf("Dimension mismatch\n");
		}
		
		int32_t buffer[4] = {0};
		
		for (int i = 0; i < network[current_layer].weights.dimension_0; i++)
		{
			printf("%d. Neuron\n", i);
		
			for (int j = 0; j < network[current_layer].weights.dimension_1; j++)
			{
				// Dot product
				buffer[i] += (int16_t)network[current_layer].weights.values[i * network[current_layer].weights.dimension_1 + j] * (int16_t)input[j];
				
				// TODO every layer!!!
				if (i==0)
				{
					buffer[i] -= (int16_t)network[current_layer].weights.values[i * network[current_layer].weights.dimension_1 + j] * INPUT_ZERO_POINT;
				}
				else
				{
					buffer[i] -= (int16_t)network[current_layer].weights.values[i * network[current_layer].weights.dimension_1 + j] * RELU_0_ZERO_POINT;
				}
				
				printf("\t%d\n", buffer[i]);
			}
			
			printf("\tAdd bias\n");
			
			buffer[i] += network[current_layer].bias.values[i];
			
			printf("\t%d\n", buffer[i]);
			
			printf("\tRelu\n");
			
			// TODO every layer!!!
			if (i==0)
			{
				// Requantize
				
				buffer[i] = buffer[i] * BIAS_0_SCALE / RELU_0_SCALE + RELU_0_ZERO_POINT;
				
				// Relu
				/*if (buffer[i] < 0)
				{
					buffer[i] = 0;
				}*/
								
				//buffer[i] = (float)((unsigned char)buffer[i]);
			}
			else
			{
				// Requantize
				
				
				
				buffer[i] = buffer[i] * BIAS_1_SCALE / OUTPUT_SCALE + OUTPUT_ZERO_POINT;
				
				//buffer[i] = (float)((unsigned char)buffer[i]);
			}
			
			// Saturating cast
			if (buffer[i] > 127)
			{
				buffer[i] = 127;
			}
			
			if (buffer[i] < -128)
			{
				buffer[i] = -128;
			}
			
		}
		
		printf("\nbuffer:\n");
		for (int i = 0; i < network[current_layer].weights.dimension_0; i++)
		{
			printf("\t%d\n", buffer[i]);
			printf("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
			input[i] = buffer[i];
		}	
	}
	
	for (int i=0; i<NUM_OUTPUTS; i++)
	{
		output[i] = input[i];
	}
	
	// Dequantize the output
	for (int i=0; i<NUM_OUTPUTS; i++)
	{
		output[i] = (output[i] - OUTPUT_ZERO_POINT) * OUTPUT_SCALE;
	}
}


int main()
{
	printf("Starting up...\n\n");
	
	// Print layers and calculate M
	for (int i=0; i<NUM_LAYERS; i++)
	{
		printLayer(&network[i]);

		// First Layer
		if (i==0)
		{
		
			network[i].M = network[i].bias.scale/RELU_0_SCALE;
		}
		// Last Layer
		else if (i == NUM_LAYERS-1)
		{
			network[i].M = network[i].bias.scale/OUTPUT_SCALE;
		}
		// TODO !!!!!!!!! Networks > 2
		else
		{
			;
		}
		
		printf("M: %f\n", network[i].M);
	}
	
	float input_0[] = {0.0, 0.0};
	float input_1[] = {1.0, 0.0};
	float input_2[] = {0.0, 1.0};
	float input_3[] = {1.0, 1.0};
	float input_4[] = {0.25, 0.25};
	float input_5[] = {0.5, 0.5};
	float input_6[] = {0.75, 0.75};

	float output[7];

	calculateNetwork(input_0, network, &output[0]);
	calculateNetwork(input_1, network, &output[1]);
	calculateNetwork(input_2, network, &output[2]);
	calculateNetwork(input_3, network, &output[3]);
	calculateNetwork(input_4, network, &output[4]);
	calculateNetwork(input_5, network, &output[5]);
	calculateNetwork(input_6, network, &output[6]);
	
	printf("[0. 0.] = 18.59305\n\
[1. 0.] = 33.34623\n\
[0. 1.] = 36.579803\n\
[1. 1.] = 51.535084\n\
[0.25 0.25] = 27.08118\n\
[0.5 0.5] = 35.165115\n\
[0.75 0.75] = 43.24905\n");
	
	
	printf("Output:\n\n");
	for (int i=0; i<7; i++)
	{
		printf("%f\n", output[i]);
	}

	return 0;
}
