from tensorflow import keras
from tensorflow.keras import layers

import tensorflow as tf

class ReluNetwork(keras.Model):

	def __init__(self, name=None, neurons_per_layer=16, layer_count=2, use_bias=True, **kwargs,):
		super(ReluNetwork, self).__init__(name=name)

		self.relu_layers = []
		self.layer_count = layer_count
		
		self.neurons_per_layer = neurons_per_layer
		
		self.use_bias = use_bias

		for i in range(self.layer_count):
			if i == 0:
				self.relu_layers.append(layers.Dense(self.neurons_per_layer, activation='relu', use_bias=self.use_bias, input_shape=(2,), name='dense_' + str(i)))
			else:
				self.relu_layers.append(layers.Dense(self.neurons_per_layer, activation='relu', use_bias=self.use_bias, name='dense_' + str(i)))

		self.pred_layer = layers.Dense(1, activation='linear', use_bias=self.use_bias, name='prediction')

	def call(self, inputs):
		x = inputs
    
		for i in range(self.layer_count):
			x = self.relu_layers[i](x)

		return self.pred_layer(x)
    
	def get_config(self):
		return {
		    'layer_count': self.layer_count,
		    'neurons_per_layer': self.neurons_per_layer,
		    'use_bias': self.use_bias
		}

class TwoPathNetwork(keras.Model):

	def __init__(self, name=None, neurons_per_path=8, neurons_per_layer=8, path_layer_count=1, layer_count=2, use_bias=True, **kwargs,):
		super(TwoPathNetwork, self).__init__(name=name)

		self.relu_layers = []
		self.path_layers = [[], []]
		self.layer_count = layer_count
		self.path_layer_count = path_layer_count
		
		self.neurons_per_path = neurons_per_path
		self.neurons_per_layer = neurons_per_layer
		
		self.use_bias = use_bias
		
		for i in range(self.path_layer_count):
			if i == 0:
				self.path_layers[0].append(layers.Dense(self.neurons_per_path, activation='relu', use_bias=self.use_bias, input_shape=(1,), name='dense_path_0_' + str(i)))
				self.path_layers[1].append(layers.Dense(self.neurons_per_path, activation='relu', use_bias=self.use_bias, input_shape=(1,), name='dense_path_1_' + str(i)))
			else:
				self.path_layers[0].append(layers.Dense(self.neurons_per_path, activation='relu', use_bias=self.use_bias, name='dense_path_0_' + str(i)))
				self.path_layers[1].append(layers.Dense(self.neurons_per_path, activation='relu', use_bias=self.use_bias, name='dense_path_1_' + str(i)))

		for i in range(self.layer_count):
			self.relu_layers.append(layers.Dense(self.neurons_per_layer, activation='relu', use_bias=self.use_bias, name='dense_' + str(i)))
			
		self.pred_layer = layers.Dense(1, activation='linear', use_bias=self.use_bias, name='prediction')

	def call(self, inputs):
		x = inputs

		print(x.shape)
		
		x1, x2 =  tf.split(x, num_or_size_splits=2, axis=1)
	
		print(x1.shape)
		print(x2.shape)
	
		for i in range(self.path_layer_count):
			x1 = self.path_layers[0][i](x1)
			x2 = self.path_layers[1][i](x2)
		
		x = keras.layers.concatenate([x1, x2], axis=1)

		print("new_x")
		print(x.shape)
    
		for i in range(self.layer_count):
			x = self.relu_layers[i](x)

		return self.pred_layer(x)
    
	def get_config(self):
		return {
		    'layer_count': self.layer_count,
		    'neurons_per_layer': self.neurons_per_layer,
		    'neurons_per_path' : self.neurons_per_path,
		    'path_layer_count' : self.path_layer_count,
		    'use_bias': self.use_bias
		}

def get_model(layer_count=3, neurons_per_layer=16, use_bias=True):
	return ReluNetwork(name='ReluNetwork', neurons_per_layer=neurons_per_layer, layer_count=layer_count, use_bias=use_bias)
	
def getTwoPath_model(neurons_per_path=4, neurons_per_layer=8, path_layer_count=2, layer_count=2, use_bias=True):
	return TwoPathNetwork(name='TwoPathNetwork', neurons_per_path=neurons_per_path, neurons_per_layer=neurons_per_layer, path_layer_count=path_layer_count, layer_count=layer_count, use_bias=use_bias)
	
def getSequential_model(configuration, relu_max_value=None, relu_negative_slope=0.0):
	layers = []
	
	# Create dense layers with the "relu" function
	count = 0
	last_neurons_per_layer = 0		
	for neurons_per_layer in configuration:	
		# First Layer
		if count == 0:
			layers.append(keras.layers.Dense(neurons_per_layer, activation='linear', use_bias=True, name='dense_' + str(count), input_shape=(2,)))
			layers.append(keras.layers.ReLU(max_value=relu_max_value, negative_slope=relu_negative_slope))
		# Last Layer
		elif (count == len(configuration) - 1):
			layers.append(keras.layers.Dense(neurons_per_layer, activation='linear', use_bias=True, name='dense_' + str(count)))
		# Average Pooling Layer
		elif neurons_per_layer == 'pa':
			layers.append(keras.layers.Reshape((last_neurons_per_layer, 1)))
			layers.append(keras.layers.AveragePooling1D(pool_size=2, strides=None, padding='valid'))
			layers.append(keras.layers.Flatten())
		# Max Pooling Layer
		elif neurons_per_layer == 'pm':
			layers.append(keras.layers.Reshape((last_neurons_per_layer, 1)))
			layers.append(keras.layers.MaxPooling1D(pool_size=2, strides=None, padding='valid'))
			layers.append(keras.layers.Flatten())
		# Middle Layers
		else:
			layers.append(keras.layers.Dense(neurons_per_layer, activation='linear', use_bias=True, name='dense_' + str(count)))
			layers.append(keras.layers.ReLU(max_value=relu_max_value, negative_slope=relu_negative_slope))
		last_neurons_per_layer = neurons_per_layer
		count += 1
	
	return keras.models.Sequential(layers)
