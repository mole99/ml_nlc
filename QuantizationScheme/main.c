#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

float min(float a, float b)
{
	if (a < b)
	{
		return a;
	}
	
	return b;
}

float max(float a, float b)
{
	if (a > b)
	{
		return a;
	}
	
	return b;
}

float clamp(float r, float a, float b)
{
	return (min(max(r, a), b));
}

float scale(float a, float b, float n)
{
	return (b - a) / (n - 1);
}

float abs_f(float a)
{
	if (a < 0)
	{
		return -a;
	}
	
	return a;
}

void quantizeList(float real_values[], int length, int8_t quantized_values[], int n, float* S, uint8_t* Z, bool symmetric_quantization)
{
	// [a; b] is the quantization range
	float a = real_values[0];
	float b = real_values[0];

	for (int i = 0; i < length; i++)
	{
		printf("Current weight: %f\n", real_values[i]);
	
		if (real_values[i] < a)
		{
			a = real_values[i];
		}
		
		if (real_values[i] > b)
		{
			b = real_values[i];
		}
	}
	
	uint8_t signed_integer_offset = 128;
	
	// Symmetric quantization
	if (symmetric_quantization)
	{
		float max = (abs_f(a), abs_f(b));
		
		a = -max;
		b = max;
		
		n -= 1;
		signed_integer_offset = 127;
	}
	
	printf("Quantization range = [%f; %f]\n", a, b);
	
	// Calculate Scale
	float scale_value = scale(a, b, n);
	
	*S = scale_value;
	
	// Calculate zero point
	float clamped_value = clamp(0, a, b);
	
	printf("Quantizing zero point\n");
	printf("\tClamped: %f\n", clamped_value);
	
	float tmp = (clamped_value - a) / scale_value;
	
	printf("\ttmp: %f\n", tmp);
	
	int8_t quantized_value = (int8_t)(tmp + 0.5) - signed_integer_offset;
	
	printf("\tQuantized zero point: %d\n", quantized_value);
	
	float requantized_value = (float)(quantized_value + signed_integer_offset) * scale_value + a;
		
	printf("\tRequantized zero point: %f\n", requantized_value);
	
	*Z = quantized_value;

	float mean_abs_error = 0.f;
	float mean_abs_relative_error = 0.f;

	for (int i = 0; i < length; i++)
	{
		float r = real_values[i];
		float clamped_value = clamp(r, a, b);
		
		printf("Quantizing %f\n", r);
		printf("\tClamped: %f\n", clamped_value);
		
		float tmp = (clamped_value - a) / scale_value;
		
		int8_t quantized_value = (int8_t)(tmp + 0.5) - signed_integer_offset;
		
		quantized_values[i] = quantized_value;
		
		printf("\tQuantized value: %d\n", quantized_value);
		
		float requantized_value = (float)(quantized_value + signed_integer_offset) * scale_value + a;
		
		printf("\tRequantized value: %f\n", requantized_value);
		
		float abs_error = abs_f(requantized_value - r);
		float abs_relative_error = abs_error / r;
		
		mean_abs_error += abs_error;
		mean_abs_relative_error += abs_relative_error;
		
		printf("\tabs_error: %f\n", abs_error);
		printf("\tabs_relative_error: %f\n", abs_relative_error);
	}
	
	mean_abs_error /= length;
	mean_abs_relative_error /= length;
	
	printf("Summary\n");
	printf("\tmean_abs_error: %f\n", mean_abs_error);
	printf("\tmean_abs_relative_error: %f\n", mean_abs_relative_error);
}

float calculateRealValues(float weights[], float input[], int length)
{
	float sum = 0;

	for (int i = 0; i < length; i++)
	{
		sum += weights[i] * input[i];
	}
	
	return sum;
}

float calculateQuantizedValues(int8_t quantized_weights[], int8_t quantized_input[], int length, uint16_t fixedpoint_M)
{
	// Needs to be greater than 16 bit
	// 8 bit * 8 bit = 16 bit
	// 16 bit + bias > 16 bit
	int32_t sum = 0;

	for (int i = 0; i < length; i++)
	{
		printf("%d, %d\n", quantized_weights[i], quantized_input[i]);
		sum += (int8_t)quantized_weights[i] * (int8_t)quantized_input[i];
		printf("sum: %d\n", sum);
	}
	
	float result = (((int32_t)sum * ((int16_t)fixedpoint_M) / (int)pow(2, 16)));
	
	return result;
}

double randomNormalized()
{
    return (double)rand() / ((double)RAND_MAX/2) - 1.0 ;
}


void getQuantizationParameters(int n, float a, float b, float* S, uint8_t* Z, bool symmetric_quantization)
{
	// [a; b] is the quantization range
	
	uint8_t signed_integer_offset = 128;
	
	// Symmetric quantization
	if (symmetric_quantization)
	{
		float max = (abs_f(a), abs_f(b));
		
		a = -max;
		b = max;
		
		n -= 1;
		signed_integer_offset = 127;
	}
	
	printf("Quantization range = [%f; %f]\n", a, b);
	
	// Calculate Scale
	float scale_value = scale(a, b, n);
	
	*S = scale_value;
	
	// Calculate zero point
	float clamped_value = clamp(0, a, b);
	
	printf("Quantizing zero point\n");
	printf("\tClamped: %f\n", clamped_value);
	
	float tmp = (clamped_value - a) / scale_value;
	
	printf("\ttmp: %f\n", tmp);
	
	int8_t quantized_value = (int8_t)(tmp + 0.5) - signed_integer_offset;
	
	printf("\tQuantized zero point: %d\n", quantized_value);
	
	float requantized_value = (float)(quantized_value + signed_integer_offset) * scale_value + a;
		
	printf("\tRequantized zero point: %f\n", requantized_value);
	
	*Z = quantized_value;
}

int main()
{
	srand(time(NULL));

	const int bits_per_weight = 8;
	const int n = pow(2, bits_per_weight); // Quantization levels n = 256
	
	printf("Quantization levels: %d\n", n);

	// Weights
	float real_weights[] = {-4.356, 0.0, 1.234, 5.3423, 9.2468, 3.789789, 0.0123456789, 4.567567, 6.234234, 3.56, 10.678533, 0.324443424, 3.1412424, 3.1415926};
	const int length_weights = sizeof(real_weights) / sizeof(float);
	int8_t quantized_weights[sizeof(real_weights) / sizeof(float)] = {};
	
	float S_weights;
	int8_t Z_weights;
	
	// Input
	float real_input[sizeof(real_weights) / sizeof(float)] = {};
	
	for (int i = 0; i < length_weights; i++)
	{
		real_input[i] = randomNormalized();
	}
	
	
	const int length_input = sizeof(real_input) / sizeof(float);
	int8_t quantized_input[sizeof(real_input) / sizeof(float)] = {};
	
	float S_input;
	int8_t Z_input;
	
	if (length_weights != length_input)
	{
		printf("Error: Size mismatch\n");
		return 1;
	}
	
	// Output
	
	float S_output;
	int8_t Z_output;
	
	// Quantization of parameters
	
	quantizeList(real_weights, length_weights, quantized_weights, n, &S_weights, &Z_weights, true);
	
	printf("S_weights: %f\n", S_weights);
	printf("Z_weights: %d\n", Z_weights);
	
	quantizeList(real_input, length_input, quantized_input, n, &S_input, &Z_input, true);
	
	printf("S_input: %f\n", S_input);
	printf("Z_input: %d\n", Z_input);
	
	int num_iterations = 1000;
	
	float min_output = 0;
	float max_output = 0;
	
	float output_a = 0;
	float output_b = 0;
	
	for (int i = 0; i < num_iterations; i++)
	{
		for (int i = 0; i < length_weights; i++)
		{
			real_input[i] = randomNormalized();
		}
	
		float real_output = calculateRealValues(real_weights, real_input, length_weights);

		if (i == 0)
		{
			min_output = real_output;
			max_output = real_output;
		}
		else
		{
			if (real_output < min_output)
			{
				min_output = real_output;
			}
			
			if (real_output > max_output)
			{
				max_output = real_output;
			}
		}
		
		// TODO asymmetric
		
		float max = (abs_f(min_output), abs_f(max_output));
		
		output_a = -max;
		output_b = max;
	}
	
	printf("min_output: %f\n", min_output);
	printf("max_output: %f\n", max_output);
	
	getQuantizationParameters(n, min_output, max_output, &S_output, &Z_output, true); // TODO asymmetric

	printf("S_output: %f\n", S_output);
	printf("Z_output: %d\n", Z_output);
	
	
	
	// ------------------------------------------------------------------
	
	for (int i = 0; i < length_weights; i++)
	{
		real_input[i] = randomNormalized();
	}

	float real_output = calculateRealValues(real_weights, real_input, length_weights);


	quantizeList(real_input, length_input, quantized_input, n, &S_input, &Z_input, true);
	
	float M = S_weights * S_input / S_output;
	
	printf("M: %f\n", M);
	
	float tmp = M * pow(2, 16);
	
	uint16_t fixedpoint_M = (uint16_t)(tmp + 0.5);
	
	printf("tmp: %f\n", tmp);
	printf("fixedpoint_M: %d\n", fixedpoint_M);
	
	printf("fixedpoint_M as float: %f\n", (float)fixedpoint_M / pow(2, 16));
	
	// --------------------------------------------------------

	float quantized_output = calculateQuantizedValues(quantized_weights, quantized_input, length_weights, fixedpoint_M);

	printf("real_output: %f\n", real_output);
	printf("quantized_output: %f\n", quantized_output);
	
	
	uint8_t signed_integer_offset = 127;
	
	
	float requantized_value = (float)(quantized_output + signed_integer_offset) * S_output + output_a;
		
	printf("\tRequantized output: %f\n", requantized_value);

	return 0;
}
