import tensorflow as tf
from tensorflow import keras

import train_network
import time
import csv
import numpy as np
import os

import network

import sys
sys.path.append('../')
from TrainingData import training_data


current_date = time.strftime("[%H:%M].%d.%m.%Y")
print("Today: ", current_date)

global_configuration = {
	'training_data_path' : '../TrainingData/ideal_dchg.csv',
	'omit_saturated_values' : True,
	'batch_size' : 64,
	'num_epochs' : 1000,
	'early_stopping' : False,
	'patience' : 8,
	'num_iterations_per_config' : 3,
	'relu_max_value' : 6,
	'relu_negative_slope' : 0.0
}

local_configuration = {
	'layer_configuration' : [],
	'trainable_count' : 0,
	'non_trainable_count' : 0
}

results = {
	'loss' : [],
	'mean_absolute_error' : [],
	'trained_epochs' : [],
	'min_loss' : 0,
	'min_mean_absolute_error' : 0,
	'max_trained_epochs' : 0
}


configurations = [
	[16, 8, 4, 1],
]

"""
[16, 16, 1],
[16, 'pa', 16, 1],
[16, 'pm', 16, 1],
[14, 14, 1],
[14, 'pa', 14, 1],
[14, 'pm', 14, 1]
"""

"""
[16, 8, 4, 1],
[14, 8, 4, 1],
[8, 8, 8, 1],
[16, 16, 1],
[14, 14, 1],
[12, 12, 1],
[10, 10, 1],
"""



def main():

	# Measure total time
	start = time.time()

	# Make sure the directory exists
	if not os.path.exists("summaries/"):
		os.makedirs("summaries/")

	with open('summaries/summary_configurations_{}.csv'.format(current_date), mode='w') as summary_file:
		summary_writer = csv.writer(summary_file, delimiter=';', quotechar='"', quoting=csv.QUOTE_MINIMAL)
				
		keys = [*global_configuration.keys(), *local_configuration.keys(), *results.keys()]
		summary_writer.writerow(keys)
		
		for configuration in configurations:
		
			# Create the local config
			local_configuration['layer_configuration'] = configuration
			local_configuration['trainable_count' ] = 0
			local_configuration['non_trainable_count'] = 0
			
			# Reset the iteration results 
			results['loss'] = []
			results['mean_absolute_error'] = []
			results['trained_epochs'] = []
			
			print("Configuration: \n {}".format(str(global_configuration) + str(local_configuration)))
		
			# Get the model
			model = network.getSequential_model(local_configuration['layer_configuration'], relu_max_value=global_configuration['relu_max_value'], relu_negative_slope = global_configuration['relu_negative_slope'])
			
			# Calculate
			trainable_count = np.sum([tf.keras.backend.count_params(w) for w in model.trainable_weights])
			non_trainable_count = np.sum([tf.keras.backend.count_params(w) for w in model.non_trainable_weights])
			
			local_configuration['trainable_count' ] = trainable_count
			local_configuration['non_trainable_count'] = non_trainable_count
			
			for iteration in range(global_configuration['num_iterations_per_config']):
				print("Iteration {}/{}".format(iteration+1, global_configuration['num_iterations_per_config']))

				loss, mean_absolute_error, trained_epochs, _ = train_network.trainModel(training_data_path=global_configuration['training_data_path'], 
													omit_saturated=global_configuration['omit_saturated_values'], 
													epochs=global_configuration['num_epochs'], 
													batch_size=global_configuration['batch_size'], 
													save_best=False, verbose=False, tensorboard=False,
													early_stopping=global_configuration['early_stopping'], 
													patience=global_configuration['patience'], model=model,
													name=str(local_configuration['layer_configuration']).replace(' ', '')+"relu"+str(global_configuration['relu_max_value'])+"slope"+str(global_configuration['relu_negative_slope']))

				results['loss'].append(loss)
				results['mean_absolute_error'].append(mean_absolute_error)
				results['trained_epochs'].append(trained_epochs)
			
			# Extract the interesting values
			results['min_loss'] = min(results['loss'])
			results['min_mean_absolute_error'] = min(results['mean_absolute_error'])
			results['max_trained_epochs'] = max(results['trained_epochs'])

			# Append to summary file
			values = [*global_configuration.values(), *local_configuration.values(), *results.values()]
			
			summary_writer.writerow(values)
			
	end = time.time()
	
	print("Elapsed time: {}".format(end - start))
		
if __name__ == "__main__":
	main()
