#include <stdio.h>

#define NUM_LAYERS 2
#define MULIPLICATION_FACTORS NUM_LAYERS - 1

#define NUM_INPUTS 2
#define NUM_OUTPUTS 1

// Input
#define INPUT_SCALE 0.003921568859368563
#define INPUT_ZERO_POINT -128

// TODO "values": "[[-128, -96]]",

// Layer 0
#define LAYER_0_SCALE 0.025475401431322098
#define LAYER_0_ZERO_POINT 0
float weights_0[4][2] = {
			{101, 80},
			{19, -42},
			{-2, 2},
			{68, 127},
		};
		
// Layer 1
#define LAYER_1_SCALE 0.027435997501015663
#define LAYER_1_ZERO_POINT 0
float weights_1[1][4] = {
			{127, -9, -31, 124}
		};
	
// Bias 0
#define BIAS_0_SCALE 9.990354010369629e-05
#define BIAS_0_ZERO_POINT 0
float bias_0[4][1] = {
			{23675}, {-3548}, {-450}, {23677}
		};

// Bias 1
#define BIAS_1_SCALE 0.0007884062360972166
#define BIAS_1_ZERO_POINT 0
float bias_1[1][1] = {
			{2980}
		};

// Dense 0 Relu
#define RELU_0_SCALE 0.02873619645833969
#define RELU_0_ZERO_POINT -128

// TODO "values": "[[-64, -108, -108, 2]]",

// Output
#define OUTPUT_SCALE 0.20209836959838867
#define OUTPUT_ZERO_POINT -128

// TODO "values": "[[48]]",


struct quantized_values
{
	float* values;
	int dimension_0;
	int dimension_1;
	
	// Quantization parameters
	float scale;
	float zero_point;	
} typedef quantized_values_t;

struct layer
{
	quantized_values_t weights;
	quantized_values_t bias;
	
	float M;
} typedef layer_t;
					
const layer_t layer_0 = {
			.weights = { 
					.values = (float*)weights_0,
					.dimension_0 = 4,
					.dimension_1 = 2,
					.scale = LAYER_0_SCALE,
					.zero_point = LAYER_0_ZERO_POINT	
				},
			.bias = { 
					.values = (float*)bias_0,
					.dimension_0 = 4,
					.dimension_1 = 1,
					.scale = BIAS_0_SCALE,
					.zero_point = BIAS_0_ZERO_POINT	
				},
			.M = 0.0
		};
		
const layer_t layer_1 = {
			.weights = { 
					.values = (float*)weights_1,
					.dimension_0 = 1,
					.dimension_1 = 4,
					.scale = LAYER_1_SCALE,
					.zero_point = LAYER_1_ZERO_POINT	
				},
			.bias = { 
					.values = (float*)bias_1,
					.dimension_0 = 1,
					.dimension_1 = 1,
					.scale = BIAS_1_SCALE,
					.zero_point = BIAS_1_ZERO_POINT	
				},
			.M = 0.0
		};
		
layer_t network[] = {layer_0, layer_1};

void dequantizeValues(quantized_values_t* values)
{
	for (int i = 0; i < values->dimension_0; i++)
	{
		for (int j = 0; j < values->dimension_1; j++)
		{
			values->values[i * values->dimension_1 + j] = (values->values[i * values->dimension_1 + j] - values->zero_point) * values->scale;
		}
	}

}

void printLayer(quantized_values_t* values)
{
	for (int i = 0; i < values->dimension_0; i++)
	{
		for (int j = 0; j < values->dimension_1; j++)
		{
			printf("%10.3f", values->values[i * values->dimension_1 + j]);
		}
		
		printf("\n");
	}
	
	printf("\n\n");
}


void calculateNetwork(float* my_input, layer_t network[], float* output)
{	
	printf("Starting Calculation\n");
	
	float input[4];
	
	for (int i=0; i<NUM_INPUTS; i++)
	{
		input[i] = my_input[i];
	}
	
	printf("Input: [%f, %f]\n", input[0], input[1]);
	
	// Quantize the input
	for (int i=0; i<NUM_INPUTS; i++)
	{
		input[i] = input[i] / INPUT_SCALE + INPUT_ZERO_POINT;
	}
	
	printf("Quantized Input: [%f, %f]\n", input[0], input[1]);
	
	// For every layer
	for (int current_layer=0; current_layer<NUM_LAYERS; current_layer++)
	{
		if (network[current_layer].weights.dimension_0 != network[current_layer].bias.dimension_0)
		{
			printf("Dimension mismatch\n");
		}
		
		float buffer[4] = {0};
		
		for (int i = 0; i < network[current_layer].weights.dimension_0; i++)
		{
			printf("%d. Neuron\n", i);
		
			for (int j = 0; j < network[current_layer].weights.dimension_1; j++)
			{
				// Dot product
				buffer[i] += network[current_layer].weights.values[i * network[current_layer].weights.dimension_1 + j] * input[j];
				
				// TODO every layer!!!
				if (i==0)
				{
					buffer[i] -= network[current_layer].weights.values[i * network[current_layer].weights.dimension_1 + j] * INPUT_ZERO_POINT;
				}
				else
				{
					buffer[i] -= network[current_layer].weights.values[i * network[current_layer].weights.dimension_1 + j] * RELU_0_ZERO_POINT;
				}
				
				printf("\t%f\n", buffer[i]);
			}
			
			printf("\tAdd bias\n");
			buffer[i] += network[current_layer].bias.values[i];
			printf("\t%f\n", buffer[i]);
			
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
			
			
			
			printf("\t%f\n", buffer[i]);
		}
		
		printf("\nbuffer:\n");
		for (int i = 0; i < network[current_layer].weights.dimension_0; i++)
		{		
			printf("\t%f\n", buffer[i]);
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
		printLayer(&network[i].weights);
		printLayer(&network[i].bias);

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

	float output[4];

	calculateNetwork(input_0, network, &output[0]);
	calculateNetwork(input_1, network, &output[1]);
	calculateNetwork(input_2, network, &output[2]);
	calculateNetwork(input_3, network, &output[3]);
	
	
	printf("Output:\n\n");
	for (int i=0; i<4; i++)
	{
		printf("%f\n", output[i]);
	}

	return 0;
}
