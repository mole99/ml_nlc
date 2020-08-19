"""
The Dense layer implements the operation:
output = activation(dot(input, kernel) + bias)
"""

from matplotlib import pyplot as plt
from matplotlib import colors
import numpy as np
import sys, getopt
import json
import math

sys.path.append('../')
from TrainingData import training_data

def ReLu(value):
	if value < 0:
		return 0
	else:
		return value

def Linear(value):
	return value

class Neuron:
	def __init__(self, weights, bias, activation_function):
		self.weights = weights
		self.bias = bias
		self.result = 0
		self.activation_function = activation_function
		
	def calculate(self, values):
		#print("Neuron calculating: ")
		#print(values)
		#print(self.weights)
		#print(self.bias)
		self.result = self.activation_function(np.dot(values, self.weights) + self.bias)
		
class Layer:
	def __init__(self):
		self.neurons = []
		
	def addNeuron(self, neuron):
		self.neurons.append(neuron)

class Network:
	def __init__(self, layers):
		self.layers = layers

	def predict(self, x, y):

		#print("Calculating: ")
		xy = np.array([x, y], dtype=np.float32)

		input_array = xy

		for layer in self.layers:
			#print("\tLayer:")
			
			for neuron in layer.neurons:
				#print("\t\tNeuron:")
				#print("\t\t\tWeights: {}".format(neuron.weights))
				#print("\t\t\tBias: {}".format(neuron.bias))
				#print("\t\t\tActivation Function: {}".format(neuron.activation_function))
				
				neuron.calculate(input_array)
				#print("Result: {}".format(neuron.result))
			
			input_array = np.empty([0], dtype=np.float32)
			for neuron in layer.neurons:
				input_array = np.append(input_array, neuron.result)
				
		#print("End Result:")
		#print(input_array)
		
		return input_array

def plotGraph(network, max_value, rows, columns, name, block=True, omit_saturated=False):
	x = np.linspace(0, 1, columns)
	y = np.linspace(0, 1, rows)

	X, Y = np.meshgrid(x, y)

	Z = np.empty([rows, columns], dtype=np.float32)

	for my_x in range(columns):
		for my_y in range(rows):
			prediction = network.predict(x[my_x], y[my_y])
			if omit_saturated:
				if prediction > max_value:
					prediction = max_value
			Z[my_y][my_x] = prediction

	plt.figure()
	ax = plt.axes(projection='3d')
	ax.plot_surface(X, Y, Z, rstride=1, cstride=1,	cmap='viridis', edgecolor='none')
	ax.set_ylabel("Y") #TODO
	ax.set_xlabel("X") #TODO
	ax.set_title(name);
	plt.show(block=block)
	
def plotDifferenceGraph(network, trainingData, max_value, rows, columns, name, block=True, omit_saturated=False):
	x = np.linspace(0, 1, columns)
	y = np.linspace(0, 1, rows)

	X, Y = np.meshgrid(x, y)

	Z = np.empty([rows, columns], dtype=np.float32)

	for my_x in range(columns):
		for my_y in range(rows):
			prediction = network.predict(x[my_x], y[my_y])
			if omit_saturated:
				if prediction > max_value:
					prediction = max_value
			Z[my_y][my_x] = prediction - trainingData[my_y][my_x]

	plt.figure()
	ax = plt.axes(projection='3d')
	ax.plot_surface(X, Y, Z, rstride=1, cstride=1,	cmap='viridis', edgecolor='none')
	ax.set_ylabel("Y") #TODO
	ax.set_xlabel("X") #TODO
	ax.set_title(name);
	plt.show(block=block)
	
def plotHistogram(network, x_train, y_train, max_value, block=True, omit_saturated=False):
	
	histogram_data = []
	n_bins = 300
	
	count = 0
	for x_in in x_train:
		prediction = network.predict(x_in[0], x_in[1])[0]
		if omit_saturated:
			if prediction > max_value:
				prediction = max_value
		
		correct_value = y_train[count][0]
		
		square_error = (prediction - correct_value) ** 2
		error = prediction - correct_value
		absolute_error = abs(error)
		
		histogram_data.append(absolute_error)
	
		count += 1
		
	fig, ax = plt.subplots()

	# N is the count in each bin, bins is the lower-limit of the bin
	N, bins, patches = ax.hist(histogram_data, bins=n_bins)
	
	# Color by height
	fracs = N / N.max()

	# Normalize the data to 0..1 for the full range of the colormap
	norm = colors.Normalize(fracs.min(), fracs.max())

	# Loop through the objects and set the color of each accordingly
	for thisfrac, thispatch in zip(fracs, patches):
		color = plt.cm.viridis(norm(thisfrac))
		thispatch.set_facecolor(color)
	
	# Normalize the inputs by the total number of counts
	ax.hist(histogram_data, bins=n_bins, density=True)

	ax.set_ylabel("Absolute Frequency")
	ax.set_xlabel("Absolute Error")
	
	plt.show(block=block)
	
def calculateMetrics(network, x_train, y_train, max_value, omit_saturated=False):
	
	# Calculate mean value of training set
	mean = 0
	count = 0
	for x_in in x_train:
		mean += y_train[count][0]
		count += 1
		
	mean /= count
			
	mean_square_error = 0
	mean_absolute_error = 0
	mean_variance = 0
	
	# Initialize min/max values
	prediction = network.predict(x_train[0][0], x_train[0][1])[0]
	if omit_saturated:
		if prediction > max_value:
			prediction = max_value
	
	min_prediction = prediction
	max_prediction = prediction
	
	error = prediction - y_train[0][0]
	
	min_error = error
	max_error = error
	
	count = 0
	for x_in in x_train:
		prediction = network.predict(x_in[0], x_in[1])[0]
		if omit_saturated:
				if prediction > max_value:
					prediction = max_value
					
		if prediction < min_prediction:
			min_prediction = prediction
			
		if prediction > max_prediction:
			max_prediction = prediction
		
		correct_value = y_train[count][0]
		
		square_error = (prediction - correct_value) ** 2
		error = prediction - correct_value
		absolute_error = abs(error)
		
		if error < min_error:
			min_error = error
			
		if error > max_error:
			max_error = error
		
		variance = (correct_value - mean) ** 2
	
		mean_square_error += square_error
		mean_absolute_error += absolute_error
		mean_variance += variance
	
		count += 1
	
	# Calculate the mean values
	mean_square_error /= count
	mean_absolute_error /= count
	mean_variance /= count

	root_mean_square_error = math.sqrt(mean_square_error)
	
	r2_coefficient = 1.0 - (mean_square_error / mean_variance)
	
	print("Summary:")
	print("Mean Square Error:      {}".format(mean_square_error))
	print("Root Mean Square Error: {}".format(root_mean_square_error))
	print("Mean Absolute Error:    {}".format(mean_absolute_error))
	print("R2 Coefficient:         {}".format(r2_coefficient))
	print("Min Error: {} \t Max Error: {}".format(min_error, max_error))

def loadNetwork(path):
	# Read file
	with open(path, 'r') as myfile:
	    data = myfile.read()

	# Parse file
	json_network = json.loads(data)

	# Build network
	layers = []

	current_layer = 0
	for layer in json_network:
		layers.append(Layer())
		
		current_weight = 0
		for weight in json_network[layer]:
			print(weight)
			print(json_network[layer][weight])
			
			print("#############")
			print(layers)
			
			
			if (current_weight == 0):
				num_neurons_per_layer = len(json_network[layer][weight][0])
			
				for i in range(num_neurons_per_layer):
				
					new_activation_function = ReLu
					
					if (current_layer == len(json_network)-1):
						new_activation_function = Linear
				
					new_neuron = Neuron(np.empty([0], dtype=np.float32), np.empty([0], dtype=np.float32), new_activation_function)
				
					layers[current_layer].addNeuron(new_neuron)

			# Actually weights
			if current_weight == 0:
			
				for weights in json_network[layer][weight]:
				
					current_neuron = 0
					for weight in weights:
						layers[current_layer].neurons[current_neuron].weights = np.append(layers[current_layer].neurons[current_neuron].weights, weight)
						current_neuron += 1
					
			# Thats the bias
			elif current_weight == 1:
			
				current_neuron = 0
				for bias in json_network[layer][weight]:
					layers[current_layer].neurons[current_neuron].bias = np.append(layers[current_layer].neurons[current_neuron].bias, bias)
					current_neuron += 1
			else:
				print("Error!")
			
			#array = np.fromstring(json_network[layer][weight])
			#print(array)

			current_weight += 1

		current_layer += 1		
	
	network = Network(layers)
		
	print("Network: ")

	for layer in network.layers:
		print("\tLayer:")
		
		for neuron in layer.neurons:
			print("\t\tNeuron:")
			print("\t\t\tWeights: {}".format(neuron.weights))
			print("\t\t\tBias: {}".format(neuron.bias))
			print("\t\t\tActivation Function: {}".format(neuron.activation_function))

	return network

def main(argv):
	path = "network.json"
	training_data_path = '../TrainingData/ideal_dchg.csv'
	omit_saturated = True
	
	try:
		opts, args = getopt.getopt(argv,"hp:d:o:",["help", "path=", "data=", "omit="])
	except getopt.GetoptError:
		print('main.py \n -p "network.json" to load the network \n -d "data.csv" for training data \n -o [True/False] to omit saturated values')
		sys.exit(2)
	for opt, arg in opts:
		if opt in ("-h", "--help"):
			print('main.py \n -p "network.json" to load the network \n -d "data.csv" for training data \n -o [True/False] to omit saturated values')
			sys.exit()
		elif opt in ("-p", "--path"):
			path = arg
		elif opt in ("-d", "--data"):
			training_data_path = arg
		elif opt in ("-o", "--omit"):
			omit_saturated = bool(arg)

	network = loadNetwork(path)
	
	# Load the Training Data
	data = training_data.load_data(training_data_path)
	
	min_value = data[0][0]
	max_value = data[0][0]
	
	for row in data:
		for element in row:
			if element < min_value:
				min_value = element
			if element > max_value:
				max_value = element

	print("Max value {}".format(max_value))

	# Display the Training Data
	training_data.displayData3D(data, training_data_path, False)
	
	plotGraph(network, max_value, data.shape[0], data.shape[1], path, False, omit_saturated=omit_saturated)
	
	plotDifferenceGraph(network, data, max_value, data.shape[0], data.shape[1], path + " (difference)", block=False, omit_saturated=omit_saturated)
	
	(x_train, y_train) = training_data.generateDataset(data)
	
	plotHistogram(network, x_train, y_train, max_value, block=True, omit_saturated=omit_saturated)
	
	calculateMetrics(network, x_train, y_train, max_value, omit_saturated=omit_saturated)


if __name__ == "__main__":
	main(sys.argv[1:])
