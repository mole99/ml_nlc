import matplotlib.pyplot as plt
import numpy as np


def load_data(filename, display=True):
	numpy_array = np.genfromtxt(filename, delimiter=";", skip_header=1)

	# TODO For some reason that array doesn't look right, delete the first row
	numpy_array = np.delete(numpy_array, 0, axis=0)
	
	print("Loaded {} rows".format(len(numpy_array)))
	return numpy_array
	
def displayData3D(data, name='none', block=True):

	x = np.linspace(0, 1, data.shape[1]) # X
	y = np.linspace(0, 1, data.shape[0]) # Y

	X, Y = np.meshgrid(x, y)
	Z = data

	plt.figure()
	ax = plt.axes(projection='3d')
	ax.plot_surface(X, Y, Z, rstride=1, cstride=1,
		        cmap='viridis', edgecolor='none')
	ax.set_title(name);
	plt.show(block=block)

def generateDataset(data, omit_saturated=False):
	
	min_value = data[0][0]
	max_value = data[0][0]
	
	for row in data:
		for element in row:
			if element < min_value:
				min_value = element
			if element > max_value:
				max_value = element
				
	print("min_value = {} \t max_value = {}".format(min_value, max_value))
	
	x = np.linspace(0, 1, data.shape[1])
	y = np.linspace(0, 1, data.shape[0])

	X, Y = np.meshgrid(x, y)
	Z = data
	
	X = X.flatten()
	Y = Y.flatten()
	Z = Z.flatten()
	
	print(Z.shape)
	
	# Delete saturated values and associated coordinates
	if omit_saturated:
		index = 0
		deleted = 0
		
		while(index < Z.shape[0]):		
			if Z[index] >= max_value:
				Z = np.delete(Z, index)
				X = np.delete(X, index)
				Y = np.delete(Y, index)
				
				deleted += 1
			else:
				index += 1		
			
		print("Deleted {} saturated values from training data".format(deleted))
	
	print(Z.shape)
	
	dataset_x = np.empty([X.shape[0], 2]) # x and y coordinate
	dataset_y = np.empty([X.shape[0], 1]) # value
	
	i = 0
	for x, y, z in zip(X, Y, Z):
		#print(x,y,z)
		dataset_x[i][0] = x
		dataset_x[i][1] = y
		dataset_y[i][0] = z
		i += 1
		
	return (dataset_x, dataset_y)

if __name__ == "__main__":
	filename = 'Training_Data/ideal_dchg.csv'
	data = load_data(filename)
	displayData3D(data, filename)
	generateDataset(data, omit_saturated=True)
