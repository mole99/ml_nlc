"""
The Dense layer implements the operation:
output = activation(dot(input, kernel) + bias)
"""

from matplotlib import pyplot as plt
from matplotlib import colors
from matplotlib.ticker import PercentFormatter
import numpy as np
import sys, getopt
import json
import math
from FixedPoint import FXfamily, FXnum

sys.path.append('../')
from TrainingData import training_data

#print(FXnum(0.875, FXfamily(4, 4)))
#print(FXnum(0.875, FXfamily(4, 4)).toDecimalString2(10))
#print(FXnum(0.875, FXfamily(4, 4)).toBinaryString(logBase=1))

"""
globalFXfamily = FXfamily(16,16)
biasFXfamily = FXfamily(16,16)
activationFXfamily = FXfamily(16,16)

Summary:
Mean Error:             -0.2388320905821664
Mean Square Error:      1.7237544618268483
Root Mean Square Error: 1.3129182997532056
Mean Absolute Error:    0.7620429131719801
R2 Coefficient:         0.9986900819798541
Min Error: -33.038360595703125 	 Max Error: 49.29876708984375

---------------------------------------------

globalFXfamily = FXfamily(16,16)
globalFXfamily._roundup = 0
biasFXfamily = FXfamily(16,16)
biasFXfamily._roundup = 0
activationFXfamily = FXfamily(16,16)
activationFXfamily._roundup = 0

Summary:
Mean Square Error:      1.724726938810024
Root Mean Square Error: 1.3132885969237775
Mean Absolute Error:    0.7625240920081972
R2 Coefficient:         0.9986893429737179
Min Error: -33.04010009765625 	 Max Error: 49.29888916015625

---------------------------------------------

globalFXfamily = FXfamily(3, 5)
biasFXfamily = globalFXfamily
activationFXfamily = FXfamily(6, 10)

Summary:
Mean Error:             12.942078605530755
Mean Square Error:      210.80949456351144
Root Mean Square Error: 14.519280097977015
Mean Absolute Error:    13.024495442708334
R2 Coefficient:         0.839801339540007
Min Error: -45.15625 	 Max Error: 51.21875

---------------------------------------------

globalFXfamily = FXfamily(3, 5)
biasFXfamily = FXfamily(6, 10)
activationFXfamily = FXfamily(6, 10)

Summary:
Mean Error:             13.154514857700892
Mean Square Error:      215.41685190654937
Root Mean Square Error: 14.677085947372161
Mean Absolute Error:    13.225829109312995
R2 Coefficient:         0.8363001097868432
Min Error: -42.5625 	 Max Error: 53.5

---------------------------------------------

globalFXfamily = FXfamily(5, 8)
biasFXfamily = FXfamily(6, 10)
activationFXfamily = FXfamily(6, 10)

Summary:
Mean Error:             1.5653512137276786
Mean Square Error:      7.177439780462356
Root Mean Square Error: 2.6790744260774755
Mean Absolute Error:    1.9301534985739088
R2 Coefficient:         0.9945457094295346
Min Error: -43.1875 	 Max Error: 51.484375

---------------------------------------------

globalFXfamily = FXfamily(5,8)
biasFXfamily = FXfamily(5,8)
activationFXfamily = FXfamily(6,10)

Summary:
Mean Error:             1.989319816468254
Mean Square Error:      8.76110951862638
Root Mean Square Error: 2.9599171472570616
Mean Absolute Error:    2.233671642485119
R2 Coefficient:         0.9933422447981611
Min Error: -39.296875 	 Max Error: 54.828125

---------------------------------------------

globalFXfamily = FXfamily(3, 5)
biasFXfamily = FXfamily(5, 8)
activationFXfamily = FXfamily(6, 10)

Summary:
Mean Error:             13.622620597718255
Mean Square Error:      228.56007579016307
Root Mean Square Error: 15.118203457757906
Mean Absolute Error:    13.675697932167658
R2 Coefficient:         0.8263122918062524
Min Error: -39.328125 	 Max Error: 56.859375


"""

globalFXfamily = FXfamily(3, 5)#(3, 5)
biasFXfamily = FXfamily(16, 16)#(6, 10)
activationFXfamily = FXfamily(16, 16)#(6, 10)

def ReLu(value):
	if value < 0:
		return 0
	else:
		return value

def Linear(value):
	return value

class Neuron:
	def __init__(self, weights, bias, activation_function):
		self.weights = []
		
		for weight in weights:
			weights.append(FXnum(weight, globalFXfamily))
		
		self.bias = FXnum(bias, biasFXfamily)
		
		self.result = FXnum(0.0, globalFXfamily)
		self.activation_function = activation_function
		
	def calculate(self, values):
		#print("Neuron calculating: ")
		#print(values)
		#print(self.weights)
		#print(self.bias)
		
		total_sum = FXnum(0.0, activationFXfamily)
		
		for i in range(len(values)):
			total_sum += FXnum(values[i], activationFXfamily) * FXnum(self.weights[i], activationFXfamily)
			
		self.result = self.activation_function(total_sum + FXnum(self.bias, activationFXfamily))
		
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
		#xy = np.array([x, y], dtype=np.float32)
		
		xy = [FXnum(x, activationFXfamily), FXnum(y, activationFXfamily)]

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
			
			input_array = []
			for neuron in layer.neurons:
				input_array.append(neuron.result)
				
				
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
			prediction = float(network.predict(x[my_x], y[my_y])[0])
			if omit_saturated:
				if prediction > max_value:
					prediction = max_value
			Z[my_y][my_x] = prediction

	plt.figure()
	ax = plt.axes(projection='3d')
	ax.plot_surface(X, Y, Z, rstride=1, cstride=1,
			cmap='viridis', edgecolor='none')
	ax.set_title(name);
	plt.show(block=block)
	
def plotDifferenceGraph(network, trainingData, max_value, rows, columns, name, block=True, omit_saturated=False):
	x = np.linspace(0, 1, columns)
	y = np.linspace(0, 1, rows)

	X, Y = np.meshgrid(x, y)

	Z = np.empty([rows, columns], dtype=np.float32)

	for my_x in range(columns):
		for my_y in range(rows):
			prediction = float(network.predict(x[my_x], y[my_y])[0])
			if omit_saturated:
				if prediction > max_value:
					prediction = max_value
			Z[my_y][my_x] = prediction - trainingData[my_y][my_x]

	plt.figure()
	ax = plt.axes(projection='3d')
	ax.plot_surface(X, Y, Z, rstride=1, cstride=1,
			cmap='viridis', edgecolor='none')
	ax.set_title(name);
	plt.show(block=block)
	
def plotHistogram(network, x_train, y_train, max_value, block=True, omit_saturated=False):
	
	histogram_data = []
	n_bins = 300
	
	count = 0
	for x_in in x_train:
		prediction = float(network.predict(x_in[0], x_in[1])[0])
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

	plt.show(block=block)
	
def calculateMetrics(network, x_train, y_train, max_value, omit_saturated=False):
	
	# Calculate mean value of training set
	mean = 0
	count = 0
	for x_in in x_train:
		mean += y_train[count][0]
		count += 1
		
	mean /= count
	
	mean_error = 0
	mean_square_error = 0
	mean_absolute_error = 0
	mean_variance = 0
	
	# Initialize min/max values
	prediction = float(network.predict(x_train[0][0], x_train[0][1])[0])
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
		prediction = float(network.predict(x_in[0], x_in[1])[0])
		if omit_saturated:
			if prediction > max_value:
				prediction = max_value
					
		if prediction < min_prediction:
			min_prediction = prediction
			
		if prediction > max_prediction:
			max_prediction = prediction
		
		correct_value = y_train[count][0]
		
		error = prediction - correct_value
		
		square_error = error ** 2
		
		absolute_error = abs(error)
		
		if error < min_error:
			min_error = error
			
		if error > max_error:
			max_error = error
		
		variance = (correct_value - mean) ** 2
	
		mean_error += error
		mean_square_error += square_error
		mean_absolute_error += absolute_error
		mean_variance += variance
	
		count += 1
	
	# Calculate the mean values
	mean_error /= count
	mean_square_error /= count
	mean_absolute_error /= count
	mean_variance /= count

	root_mean_square_error = math.sqrt(mean_square_error)
	
	r2_coefficient = 1.0 - (mean_square_error / mean_variance)
	
	print("Summary:")
	print("Mean Error:             {}".format(mean_error))
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
				
					new_neuron = Neuron([], 0.0, new_activation_function)
				
					layers[current_layer].addNeuron(new_neuron)

			# Actually weights
			if current_weight == 0:
			
				for weights in json_network[layer][weight]:
				
					current_neuron = 0
					for weight in weights:
						layers[current_layer].neurons[current_neuron].weights.append(FXnum(weight, globalFXfamily))
						current_neuron += 1
					
			# Thats the bias
			elif current_weight == 1:

				current_neuron = 0
				for bias in json_network[layer][weight]:
					layers[current_layer].neurons[current_neuron].bias = FXnum(bias, biasFXfamily)
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
			for weight in neuron.weights:
				print("\t\t\t" + weight.toDecimalString2(16))
			print("\t\t\tBias: {}".format(neuron.bias.toDecimalString2(16)))
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
