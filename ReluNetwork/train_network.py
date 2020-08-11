import tensorflow as tf
from tensorflow import keras
import numpy as np
from datetime import datetime
import os
import sys, getopt
import json

from matplotlib import pyplot as plt

import network

sys.path.append('../')
from TrainingData import training_data

CHECKPOINT_NAME = 'checkpoint/model_ckpt'

def main(argv):
	load_checkpoint = False
	training_data_path = '../TrainingData/ideal_dchg.csv'
	
	try:
		opts, args = getopt.getopt(argv,"hrd:",["help", "resume", "data="])
	except getopt.GetoptError:
		print('main.py \n -r to load latest checkpoint')
		sys.exit(2)
	for opt, arg in opts:
		if opt in ("-h", "--help"):
			print('main.py \n -r to load latest checkpoint')
			sys.exit()
		elif opt in ("-r", "--resume"):
			load_checkpoint = True
		elif opt in ("-d", "--data"):
			training_data_path = arg

	# Train the model
	trainModel(training_data_path=training_data_path, omit_saturated=True, layer_count=2, neurons_per_layer=16, epochs=1000, batch_size=64, load_checkpoint=load_checkpoint, save_best=True, early_stopping=True, patience=10)


def trainModel(training_data_path='../TrainingData/ideal_dchg.csv', omit_saturated=False, layer_count=3, neurons_per_layer=16, use_bias=True, epochs=100, batch_size=64, load_checkpoint=False, save_best=True, early_stopping=True, patience=10, verbose=True, model=None):

	if model == None:
		model = network.get_model(layer_count, neurons_per_layer, use_bias)

	if load_checkpoint:
		model.load_weights(CHECKPOINT_NAME)

	# Load the Training Data
	data = training_data.load_data(training_data_path)
	if verbose:
		training_data.displayData3D(data, training_data_path, False)
	(x_train, y_train) = training_data.generateDataset(data, omit_saturated=omit_saturated)

	# Make an initial prediction to infer the network shape
	if verbose:
		predictFunction(model, data.shape[0], data.shape[1], blocking=False, text="Untrained")

	# Compile the model
	model.compile(loss=keras.losses.MeanSquaredError(),
		      optimizer=keras.optimizers.RMSprop(),
		      metrics=[keras.metrics.MeanAbsoluteError()]
		      ) # TODO  optimizer=keras.optimizers.RMSprop(learning_rate=1e-3),

		      
	# Print the weights of the model
	#printLayers(model)

	# Create a TensorBoard callback
	logs = "logs/" + datetime.now().strftime("%Y%m%d-%H%M%S")
	tboard_callback = tf.keras.callbacks.TensorBoard(log_dir = logs)

	# Create a checkpoint callback to save the model
	cpkt_callback = tf.keras.callbacks.ModelCheckpoint(filepath=CHECKPOINT_NAME,
		                                         monitor='loss',
		                                         verbose=1,
		                                         save_best_only=True,
		                                         save_weights_only=False,
		                                         mode='auto', save_freq='epoch', options=None
		                                         )

	# Create an early stopping callback
	earlystopping_callback = tf.keras.callbacks.EarlyStopping(monitor='loss', patience=patience, mode='auto')
	
	callbacks = [tboard_callback]
	
	if save_best:
		callbacks.append(cpkt_callback)
		
	if early_stopping:
		callbacks.append(earlystopping_callback)

	# Need to run with real data to infer shape of different layers
	history = model.fit(x_train, y_train,
		            batch_size=batch_size,
		            epochs=epochs,
		            initial_epoch=0,
		            verbose=1,
		            shuffle=True,
		            callbacks = callbacks)

	loss = history.history['loss']

	if verbose:
		plt.figure(figsize=(8, 8))
		plt.plot(loss, label='Training Loss')
		plt.legend(loc='upper right')
		plt.ylabel('Cross Entropy')
		plt.title('Training and Validation Loss')
		plt.xlabel('epoch')
		plt.show(block=False)

	print(history.history.keys())
	loss = history.history['loss'][-1]
	mean_absolute_error = history.history['mean_absolute_error'][-1]
	trained_epochs = len(history.history['loss'])
	
	print("Training summary\n loss: {}, mean_absolute_error: {}, epochs: {}".format(loss, mean_absolute_error, trained_epochs))
	
	print("Evaluate on test data")
	results = model.evaluate(x_train, y_train)#, batch_size=128) TODO
	loss = results[0]
	mean_absolute_error = results[1]
	print("test loss, test mean_absolute_error: {}, {}".format(loss, mean_absolute_error))


	# Print a summary
	model.summary()
	
	# Make a prediction
	if verbose:
		predictFunction(model, data.shape[0], data.shape[1], text="Trained")
	
	trainable_count = np.sum([tf.keras.backend.count_params(w) for w in model.trainable_weights])
	non_trainable_count = np.sum([tf.keras.backend.count_params(w) for w in model.non_trainable_weights])

	print('Total params: {:,}'.format(trainable_count + non_trainable_count))
	print('Trainable params: {:,}'.format(trainable_count))
	print('Non-trainable params: {:,}'.format(non_trainable_count))
	
	printLayers(model)

	return trainable_count, non_trainable_count, loss, mean_absolute_error, trained_epochs

def predictFunction(model, rows, columns, blocking=True, text=""):

	x = np.linspace(0, 1, columns)
	y = np.linspace(0, 1, rows)

	X, Y = np.meshgrid(x, y)
	
	###
	X_flat = X.flatten()
	Y_flat = Y.flatten()
	
	dataset_x = np.empty([X_flat.shape[0], 2]) # x and y coordinate
	
	i = 0
	for x, y in zip(X_flat, Y_flat):
		#print(x,y,z)
		dataset_x[i][0] = x
		dataset_x[i][1] = y
		i += 1
	###
	
	values = model.predict(dataset_x)

	Z_new = np.empty([rows, columns]) # value

	cnt=0
	for value in values:
		my_x = int(cnt / columns)
		my_y = int(cnt % columns)

		Z_new[my_x][my_y] = value
		
		cnt += 1
	
	"""	TEST TODO!!!!
	for my_x in range(columns):
		for my_y in range(rows):
			Z_new[my_x][my_y] = values[my_y * columns + my_x]
	"""

	print(X.shape)
	print(Y.shape)
	print(Z_new.shape)

	plt.figure()
	ax = plt.axes(projection='3d')
	ax.plot_surface(X, Y, Z_new, rstride=1, cstride=1,
			cmap='viridis', edgecolor='none')
	ax.set_title(text);
	plt.show(block=blocking)

def printLayers(model):
	data = {}
	layers = model.layers
	
	layer_cnt = 0
	for layer in layers:
		print("Layer: " + str(layer))
		
		weights = layer.get_weights()
		print("Weights: " + str(weights))
		
		data['layer_{}'.format(layer_cnt)] = {}
		
		weight_count = 0
		for weight in weights:
			print("Weight:" + str(weight))
			
			data['layer_{}'.format(layer_cnt)]['weight_{}'.format(weight_count)] = weight.tolist()
			
			weight_count += 1
			
		layer_cnt += 1
		
	json_data = json.dumps(data, indent='\t')
	print(json_data)
	
	f = open("network.json", "w")
	f.write(json_data)
	f.close()

if __name__ == "__main__":
	main(sys.argv[1:])
