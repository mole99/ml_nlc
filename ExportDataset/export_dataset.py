import time
import csv
import numpy as np
import os


import sys
sys.path.append('../')
from TrainingData import training_data

def exportDataset(path, name):
	# Load the Training Data
	data = training_data.load_data(path)

	min_value = data[0][0]
	max_value = data[0][0]

	for row in data:
		for element in row:
			if element < min_value:
				min_value = element
			if element > max_value:
				max_value = element


	training_data.displayData3D(data, path, True)
		
	(x_train, y_train) = training_data.generateDataset(data, omit_saturated=True)

	f = open(name + '.h', "w")
	
	f.write("#ifndef {}\n".format(name.upper()))
	f.write("#define {}\n".format(name.upper()))

	
	f.write("#define NUM_IDEAL_ENTRIES {}\n\n".format(x_train.shape[0]))
	
	f.write("float dataset[][3] = {\n")
	
	for i, (x, y) in enumerate(zip(x_train, y_train)):
		if i != x_train.shape[0]-1:
			f.write("\t{" + str(x[0]) + ", " + str(x[1]) + ", " + str(y[0]) + "},\n")
		else:
			f.write("\t{" + str(x[0]) + ", " + str(x[1]) + ", " + str(y[0]) + "}\n")
	
	f.write("};\n\n")
	
	f.write("#endif\n\n")
	f.close() 

def main():
	exportDataset('../TrainingData/ideal_dchg.csv', 'ideal_dchg')
	exportDataset('../TrainingData/ideal_chg.csv', 'ideal_chg')

if __name__ == "__main__":
	main()
