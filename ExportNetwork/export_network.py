import tensorflow as tf
import json
import os
import numpy as np

def predictSample(interpreter, sample):
	test_input = sample

	input_details = interpreter.get_input_details()[0]
	output_details = interpreter.get_output_details()[0]

	# Check if the input type is quantized, then rescale input data to uint8
	if input_details['dtype'] != np.float32:
		input_scale, input_zero_point = input_details['quantization']
		tflite_test_input = test_input / input_scale + input_zero_point
	
		tflite_test_input = np.expand_dims(tflite_test_input.astype(input_details['dtype']), axis=0)
		
	else:
		tflite_test_input = np.expand_dims(test_input.astype(np.float32), axis=0)
		
	interpreter.set_tensor(input_details['index'], tflite_test_input)

	# Run inference
	interpreter.invoke()
	
	# Get the ouput
	tflite_output = interpreter.get_tensor(output_details['index'])[0]
	
	# Check if the output type is quantized, then rescale output data to float
	if output_details['dtype'] != np.float32:
		output_scale, output_zero_point = output_details['quantization']

		output = tflite_output.astype(np.float32)
		output = (output - output_zero_point) * output_scale  			
	else:
		output = tflite_output
		
	prediction = output[0]
	
	return prediction
	
def exportNetwork(name):

	# Load TFLite model and allocate tensors.
	interpreter = tf.lite.Interpreter(model_path=name+".tflite")
	interpreter.allocate_tensors()

	# Get input and output tensors.
	input_details = interpreter.get_input_details()
	output_details = interpreter.get_output_details()

	layer_details = interpreter.get_tensor_details()
	interpreter.allocate_tensors()

	data = {}

	for layer in layer_details:

		data[layer['name']] = {}

		data[layer['name']]['layer_index'] = str(layer['index'])
		data[layer['name']]['shape'] = str(layer['shape'])
		data[layer['name']]['tensor'] = str(interpreter.get_tensor(layer['index']).shape)
		data[layer['name']]['tensor_type'] = str(interpreter.get_tensor(layer['index']).dtype)
		data[layer['name']]['values'] = str(interpreter.get_tensor(layer['index']).tolist())
		
		data[layer['name']]['quantization_parameters'] = {}
		data[layer['name']]['quantization_parameters']['scales'] = str(layer['quantization_parameters']['scales'].tolist())
		data[layer['name']]['quantization_parameters']['scales_shape'] = str(layer['quantization_parameters']['scales'].shape)
		data[layer['name']]['quantization_parameters']['scales_type'] = str(layer['quantization_parameters']['scales'].dtype)
		data[layer['name']]['quantization_parameters']['zero_points'] = str(layer['quantization_parameters']['zero_points'].tolist())
		data[layer['name']]['quantization_parameters']['quantized_dimension'] = str(layer['quantization_parameters']['quantized_dimension'])
		

		print("\nLayer Name: {}".format(layer['name']))
		print("\tIndex: {}".format(layer['index']))
		print("\n\tShape: {}".format(layer['shape']))
		print("\tTensor: {}".format(interpreter.get_tensor(layer['index']).shape))
		print("\tTensor Type: {}".format(interpreter.get_tensor(layer['index']).dtype))
		print("\tValues: \n{}".format(interpreter.get_tensor(layer['index'])))
		print("\tQuantisation Parameters")
		print("\t\tScales: {}".format(layer['quantization_parameters']['scales']))
		print("\t\tScales Shape: {}".format(layer['quantization_parameters']['scales'].shape))
		print("\t\tScales Type: {}".format(layer['quantization_parameters']['scales'].dtype))
		print("\t\tZero Points: {}".format(layer['quantization_parameters']['zero_points']))
		print("\t\tQuantized Dimension: {}".format(layer['quantization_parameters']['quantized_dimension']))

	json_data = json.dumps(data, indent='\t')

	# Make sure the directory exists
	if not os.path.exists("quantized_networks/"):
		os.makedirs("quantized_networks/")

	# Save the file
	f = open("quantized_networks/" + name + '.json', "w")
	f.write(json_data)
	f.close()

	sorted_layers = []

	for layer in layer_details:

		if 'MatMul' in layer['name']:
		
			layer_index = layer['name'][17:18]
			print(layer_index)
		
			new_layer = {}
			new_layer['weight_index'] = layer['index']
			
			
			new_layer['bias_index'] = None
			
			# Search for bias
			for bias in layer_details:
				if 'BiasAdd/ReadVariableOp/resource' in bias['name']:	
					bias_index = bias['name'][17:18]
					
					if layer_index == bias_index:
						new_layer['bias_index'] = bias['index']

			
			
			new_layer['output_quantization_index'] = None
			new_layer['input_quantization_index'] = None
			
			# Search for relus
			for relus in layer_details:
				if 'Relu' in relus['name']:	
					relu_index = relus['name'][17:18]
					
					if layer_index == relu_index:
						new_layer['output_quantization_index'] = relus['index']
			
			sorted_layers.append(new_layer)

	for i, layer in enumerate(sorted_layers):	
		if (i > 0):
			# Point to the relu layer of previous layer, gets overwritten for the first one
			layer['input_quantization_index'] = sorted_layers[i-1]['output_quantization_index']
		
	# Network Output	
	for layer in layer_details:
		if 'Identity' in layer['name']:
			sorted_layers[-1]['output_quantization_index'] = layer['index']
			
	# Network Input	
	for layer in layer_details:
		if 'dense_0_input' in layer['name']:
			sorted_layers[0]['input_quantization_index'] = layer['index']
			

	print("Sorted Layers:\n")
	print(sorted_layers)

	out_file = open(name + '.h', "w")


	out_file.write("#ifndef NETWORK_H\n")
	out_file.write("#define NETWORK_H\n\n")

	out_file.write("#include <stdint.h>\n\n")

	out_file.write("#define NUM_INPUT {}\n".format(str(interpreter.get_tensor(0).shape[1])))
	out_file.write("#define NETWORK_INPUT_SCALE {}\n".format(str(interpreter.get_input_details()[0]['quantization'][0])))
	out_file.write("#define NETWORK_INPUT_ZERO_POINT {}\n\n".format(str(interpreter.get_input_details()[0]['quantization'][1])))
		
	out_file.write("#define NUM_OUTPUT {}\n".format(str(interpreter.get_tensor(len(layer_details)-1).shape[1])))
	out_file.write("#define NETWORK_OUTPUT_SCALE {}\n".format(str(interpreter.get_output_details()[0]['quantization'][0])))
	out_file.write("#define NETWORK_OUTPUT_ZERO_POINT {}\n\n".format(str(interpreter.get_output_details()[0]['quantization'][1])))

	out_file.write("#define NUM_LAYERS {}\n\n".format(len(sorted_layers)))

	# Create weight arrays
	for i, layer in enumerate(sorted_layers):

		shape = interpreter.get_tensor(layer['weight_index']).shape
		weights = interpreter.get_tensor(layer['weight_index']).tolist()

		weights = str(weights).replace('[', '{').replace(']', '}')

		print(weights)

		out_file.write("const int8_t weights_{}[{}][{}] = {};\n\n".format(i, shape[0], shape[1], weights))
			
	# Create bias arrays
	for i, layer in enumerate(sorted_layers):

		shape = interpreter.get_tensor(layer['bias_index']).shape
		weights = interpreter.get_tensor(layer['bias_index']).tolist()

		weights = str(weights).replace('[', '{').replace(']', '}')

		print(weights)

		out_file.write("const int32_t bias_{}[{}] = {};\n\n".format(i, shape[0], weights))


	out_file.write("const uint16_t output_conversion_scale[] = {")

	# Create output conversion scales
	for i, layer in enumerate(sorted_layers):
		
		layer_output_scale = layer_details[layer['output_quantization_index']]['quantization_parameters']['scales'][0]
		layer_bias_scale = layer_details[layer['bias_index']]['quantization_parameters']['scales'][0]
		
		layer_output_conversion_scale = int(round(layer_bias_scale / layer_output_scale * 2**17)) # Fixed point number

		if i == (len(sorted_layers) - 1): 
			out_file.write("{}}};\n".format(layer_output_conversion_scale))
		else:
			out_file.write("{}, ".format(layer_output_conversion_scale))
	
	out_file.write("const int8_t output_zero_point[] = {")

	# Create output zero points
	for i, layer in enumerate(sorted_layers):
		
		layer_output_zero_point = layer_details[layer['output_quantization_index']]['quantization_parameters']['zero_points'][0]
		
		if i == (len(sorted_layers) - 1): 
			out_file.write("{}}};\n".format(layer_output_zero_point))
		else:
			out_file.write("{}, ".format(layer_output_zero_point))



	out_file.write("\n")

	out_file.write("""struct layer
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
	} typedef layer_t;\n\n""")



	# Create layers
	for i, layer in enumerate(sorted_layers):

		
		shape = interpreter.get_tensor(layer['weight_index']).shape

		layer_output_scale = None
		
		#layer_input_zero_point = layer_details[layer['input_quantization_index']]['quantization_parameters']['zero_points'][0]
		
		
		layer_output_scale = layer_details[layer['output_quantization_index']]['quantization_parameters']['scales'][0]
		
		layer_bias_scale = layer_details[layer['bias_index']]['quantization_parameters']['scales'][0]
		
		layer_output_conversion_scale = int(round(layer_bias_scale / layer_output_scale * 2**17)) # Fixed point number
		layer_output_zero_point = layer_details[layer['output_quantization_index']]['quantization_parameters']['zero_points'][0]

		out_file.write("const layer_t layer_{} = {{\n".format(i))
		out_file.write("\t.weights = (int8_t*)weights_{},\n".format(i))
		out_file.write("\t.bias = (int32_t*)bias_{},\n".format(i))
		out_file.write("\n")
		out_file.write("\t.dimension_0 = {},\n".format(shape[0]))
		out_file.write("\t.dimension_1 = {},\n".format(shape[1]))
		out_file.write("\n")
		#out_file.write("\t.input_zero_point = {},\n".format(layer_input_zero_point))
		#out_file.write("\n")
		out_file.write("\t.output_conversion_scale = {}, // / 2^17\n".format(layer_output_conversion_scale))
		out_file.write("\t.output_zero_point = {}\n".format(layer_output_zero_point))
		out_file.write("};\n\n")

	out_file.write("layer_t network[] = {")

	# Create network
	for i, layer in enumerate(sorted_layers):
		if (i != len(sorted_layers) - 1):
			out_file.write("layer_{}, ".format(i))
		else:
			out_file.write("layer_{}}};\n\n".format(i))

	out_file.write("#endif\n\n")

	out_file.close()

	sample = np.array([0.0, 0.0], dtype=np.float32)
	result = predictSample(interpreter, sample)
	print(str(sample) + " = " + str(result))

	sample = np.array([1.0, 0.0], dtype=np.float32)
	result = predictSample(interpreter, sample)
	print(str(sample) + " = " + str(result))

	sample = np.array([0.0, 1.0], dtype=np.float32)
	result = predictSample(interpreter, sample)
	print(str(sample) + " = " + str(result))

	sample = np.array([1.0, 1.0], dtype=np.float32)
	result = predictSample(interpreter, sample)
	print(str(sample) + " = " + str(result))

	sample = np.array([0.25, 0.25], dtype=np.float32)
	result = predictSample(interpreter, sample)
	print(str(sample) + " = " + str(result))

	sample = np.array([0.5, 0.5], dtype=np.float32)
	result = predictSample(interpreter, sample)
	print(str(sample) + " = " + str(result))

	sample = np.array([0.75, 0.75], dtype=np.float32)
	result = predictSample(interpreter, sample)
	print(str(sample) + " = " + str(result))

	print("Input quantization: " + str(interpreter.get_input_details()[0]['quantization']))
	print("Output quantization: " + str(interpreter.get_output_details()[0]['quantization']))

def main():
	exportNetwork('model_post_quant_8x8x1_dchg')
	exportNetwork('model_post_quant_8x8x1_chg')


if __name__ == "__main__":
	main()
