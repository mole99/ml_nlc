import tensorflow as tf
print(tf.__version__)

from tensorflow import keras
import tensorflow_model_optimization as tfmot

import train_network
import time
import csv
import numpy as np
import os

import network

from matplotlib import pyplot as plt

import sys
sys.path.append('../')
from TrainingData import training_data

global_configuration = {
	'training_data_path' : '../TrainingData/ideal_dchg.csv',
	'omit_saturated_values' : True,
	'batch_size' : 64,
	'num_epochs' : 500,
	'early_stopping' : False,
	'patience' : 8,
	'num_iterations_per_config' : 3,
	'relu_max_value' : 6,
	'relu_negative_slope' : 0.0,
	'verbose' : False,
	'quantization_aware_training' : False
}

# Load the Training Data
data = training_data.load_data(global_configuration['training_data_path'])

if global_configuration['verbose']:
	training_data.displayData3D(data, global_configuration['training_data_path'], False)
	
(x_train, y_train) = training_data.generateDataset(data, omit_saturated=True)

def representative_dataset_gen():
	for i in range(x_train.shape[0]):
		x = tf.expand_dims(x_train[i].astype(np.float32), 0)
		yield [x]

def plotGrap(interpreter, rows, columns, blocking=True, text=""):

	x = np.linspace(0, 1, columns)
	y = np.linspace(0, 1, rows)

	X, Y = np.meshgrid(x, y)
	
	X_flat = X.flatten()
	Y_flat = Y.flatten()
	
	dataset_x = np.empty([X_flat.shape[0], 2]) # x and y coordinate
	
	i = 0
	for x, y in zip(X_flat, Y_flat):
		dataset_x[i][0] = x
		dataset_x[i][1] = y
		i += 1
	
	input_details = interpreter.get_input_details()[0]
	output_details = interpreter.get_output_details()[0]
	
	values = []
	for test_input in dataset_x:
	
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
		values.append(prediction)

	Z_new = np.empty([rows, columns]) 
	
	for my_x in range(columns):
		for my_y in range(rows):
			Z_new[my_y][my_x] = values[my_y * columns + my_x]

	plt.figure()
	ax = plt.axes(projection='3d')
	ax.plot_surface(X, Y, Z_new, rstride=1, cstride=1,
			cmap='viridis', edgecolor='none')
	ax.set_title(text);
	plt.show(block=blocking)

def evaluate_model(interpreter):
	input_details = interpreter.get_input_details()[0]
	output_details = interpreter.get_output_details()[0]

	mean_absolute_error = 0
	mean_square_error = 0

	# Run predictions on every image in the "test" dataset.
	predictions = []
	for i, test_input in enumerate(x_train):
		if i % 1000 == 0:
			print('Evaluated on {n} results so far.'.format(n=i))
		
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
		
		absolute_error = abs(y_train[i][0] - prediction)
		
		mean_absolute_error += absolute_error
		mean_square_error += absolute_error**2
		
	mean_absolute_error /= len(x_train)
	mean_square_error /= len(x_train)

	return mean_square_error, mean_absolute_error

def main():
	
	layers = []
	layers.append(keras.layers.Dense(16, activation='relu', use_bias=True, name='dense_0', input_shape=(2,)))
	layers.append(keras.layers.Dense(8, activation='relu', use_bias=True, name='dense_1'))
	layers.append(keras.layers.Dense(4, activation='relu', use_bias=True, name='dense_2'))
	layers.append(keras.layers.Dense(1, activation='linear', use_bias=True, name='dense_3'))
	model = keras.models.Sequential(layers)
	
	#model = network.getSequential_model([16, 8, 4, 1], relu_max_value=global_configuration['relu_max_value'], relu_negative_slope = global_configuration['relu_negative_slope'])
	
	loss, mean_absolute_error, trained_epochs, model = train_network.trainModel(training_data_path=global_configuration['training_data_path'], 
													omit_saturated=global_configuration['omit_saturated_values'], 
													epochs=global_configuration['num_epochs'], 
													batch_size=global_configuration['batch_size'], 
													save_best=False, verbose=global_configuration['verbose'], tensorboard=False,
													early_stopping=global_configuration['early_stopping'], 
													patience=global_configuration['patience'], model=model,
													name="quantized"+"relu"+str(global_configuration['relu_max_value'])
													+"slope"+str(global_configuration['relu_negative_slope']))
						
	# Quantization aware training
	if global_configuration['quantization_aware_training'] == True:
		quant_aware_model = tfmot.quantization.keras.quantize_model(model)

		quant_aware_model.compile(loss=keras.losses.MeanSquaredError(),
			      optimizer=keras.optimizers.RMSprop(),
			      metrics=[keras.metrics.MeanAbsoluteError()])

		quant_aware_model.summary()
				
		loss, mean_absolute_error, trained_epochs, quant_aware_model = train_network.trainModel(training_data_path=global_configuration['training_data_path'], 
														omit_saturated=global_configuration['omit_saturated_values'], 
														epochs=global_configuration['num_epochs'], 
														batch_size=global_configuration['batch_size'], 
														save_best=False, verbose=global_configuration['verbose'], tensorboard=False,
														early_stopping=global_configuration['early_stopping'], 
														patience=global_configuration['patience'], model=quant_aware_model,
														name="quantized"+"relu"+str(global_configuration['relu_max_value'])
														+"slope"+str(global_configuration['relu_negative_slope']))
		
		
	# Evaluate both models

	baseline_model_loss, baseline_model_mean_absolute_error = model.evaluate(x_train, y_train, verbose=global_configuration['verbose'])
	if global_configuration['quantization_aware_training'] == True:
		quant_aware_model_loss, quant_aware_model_mean_absolute_error = quant_aware_model.evaluate(x_train, y_train, verbose=global_configuration['verbose'])

	print('baseline_model_loss:', baseline_model_loss)
	if global_configuration['quantization_aware_training'] == True:
		print('quant_aware_model_loss:', quant_aware_model_loss)
	
	print('baseline_model_mean_absolute_error:', baseline_model_mean_absolute_error)
	if global_configuration['quantization_aware_training'] == True:
		print('quant_aware_model_mean_absolute_error:', quant_aware_model_mean_absolute_error)


	# Post training quantization
	if global_configuration['quantization_aware_training'] == True:
		converter = tf.lite.TFLiteConverter.from_keras_model(quant_aware_model)
	else:
		converter = tf.lite.TFLiteConverter.from_keras_model(model)
	
	
	converter.optimizations = [tf.lite.Optimize.DEFAULT]

	if global_configuration['quantization_aware_training'] == False:
	
		converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS_INT8]

		converter.representative_dataset = tf.lite.RepresentativeDataset(representative_dataset_gen)

		converter.inference_type = tf.uint8

		converter.inference_input_type = tf.uint8
		converter.inference_output_type = tf.uint8
		
		
	quantized_tflite_model = converter.convert()

	interpreter = tf.lite.Interpreter(model_content=quantized_tflite_model)
	interpreter.allocate_tensors()

	tflite_mean_square_error, tflite_mean_absolute_error = evaluate_model(interpreter)

	if global_configuration['quantization_aware_training'] == True:
		print('quant_aware_model_loss:', quant_aware_model_loss)
	print('tflite_mean_square_error:', tflite_mean_square_error)
	
	if global_configuration['quantization_aware_training'] == True:
		print('quant_aware_model_mean_absolute_error:', quant_aware_model_mean_absolute_error)
	print('tflite_mean_absolute_error:', tflite_mean_absolute_error)

	import pathlib
	tflite_model_file = pathlib.Path('m.tflite')
	tflite_model_file.write_bytes(quantized_tflite_model)
	
	plotGrap(interpreter, data.shape[0], data.shape[1], blocking=True, text="tflite model")

if __name__ == "__main__":
	main()
