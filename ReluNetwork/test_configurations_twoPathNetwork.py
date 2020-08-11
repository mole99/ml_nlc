from tensorflow import keras

import train_network
import time
import csv

import sys
sys.path.append('../')
from TrainingData import training_data

import network

global_configuration = {
	'training_data_path' : '../TrainingData/ideal_dchg.csv',
	'omit_saturated_values' : True,
	'batch_size' : 64,
	'num_epochs' : 500,
	'early_stopping' : False,
	'patience' : 13,
	'num_iterations_per_config' : 5,
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

relu_configurations = [
	[2, 12],
	[2, 16]
]

two_path_configurations = [
	[2, 4, 2, 8],
	[1, 4, 2, 12],
	[2, 8, 2, 8]
]

def main():

	# Measure total time
	start = time.time()

	with open('summary_twoPathNetwork.csv', mode='w') as summary_file:
		summary_writer = csv.writer(summary_file, delimiter=';', quotechar='"', quoting=csv.QUOTE_MINIMAL)
				
		keys = [*global_configuration.keys(), *local_configuration.keys(), *results.keys()]
		summary_writer.writerow(keys)
		
		# Create dictionary for storing individual iteration results
		
		for configuration in relu_configurations:
		
			# Create the local config
			local_configuration['layer_configuration'] = configuration
			local_configuration['trainable_count' ] = 0
			local_configuration['non_trainable_count'] = 0
			
			# Reset the iteration results 
			results['loss'] = []
			results['mean_absolute_error'] = []
			results['trained_epochs'] = []
			
			print("Configuration: \n {}".format(str(global_configuration) + str(local_configuration)))
			
			model = network.get_model(layer_count=configuration[0], neurons_per_layer=configuration[1], use_bias=True)
		
			for iteration in range(global_configuration['num_iterations_per_config']):
				
				print("Iteration {}/{}".format(iteration+1, global_configuration['num_iterations_per_config']))
				
				layer_count = configuration[0]
				
				trainable_count, non_trainable_count, loss, mean_absolute_error, trained_epochs = train_network.trainModel(training_data_path=global_configuration['training_data_path'], omit_saturated=global_configuration['omit_saturated_values'], layer_count=layer_count, neurons_per_layer=None, use_bias=True, epochs=global_configuration['num_epochs'], batch_size=global_configuration['batch_size'], save_best=False, verbose=False, early_stopping=global_configuration['early_stopping'], patience=global_configuration['patience'], model=model)
				
				local_configuration['trainable_count' ] = trainable_count
				local_configuration['non_trainable_count'] = non_trainable_count

				results['loss'].append(loss)
				results['mean_absolute_error'].append(mean_absolute_error)
				results['trained_epochs'].append(trained_epochs)
				
			results['min_loss'] = min(results['loss'])
			results['min_mean_absolute_error'] = min(results['mean_absolute_error'])
			results['max_trained_epochs'] = max(results['trained_epochs'])

			# Append to summary file
			values = [*global_configuration.values(), *local_configuration.values(), *results.values()]
			
			summary_writer.writerow(values)
			
		for configuration in two_path_configurations:
		
			# Create the local config
			local_configuration['layer_configuration'] = configuration
			local_configuration['trainable_count' ] = 0
			local_configuration['non_trainable_count'] = 0
			
			# Reset the iteration results 
			results['loss'] = []
			results['mean_absolute_error'] = []
			results['trained_epochs'] = []
			
			print("Configuration: \n {}".format(str(global_configuration) + str(local_configuration)))
			
			model = network.getTwoPath_model(neurons_per_path=configuration[1], neurons_per_layer=configuration[3], path_layer_count=configuration[0], layer_count=configuration[2], use_bias=True)
		
			for iteration in range(global_configuration['num_iterations_per_config']):
				
				print("Iteration {}/{}".format(iteration+1, global_configuration['num_iterations_per_config']))
				
				layer_count = configuration[0]
				
				trainable_count, non_trainable_count, loss, mean_absolute_error, trained_epochs = train_network.trainModel(training_data_path=global_configuration['training_data_path'], omit_saturated=global_configuration['omit_saturated_values'], layer_count=layer_count, neurons_per_layer=None, use_bias=True, epochs=global_configuration['num_epochs'], batch_size=global_configuration['batch_size'], save_best=False, verbose=False, early_stopping=global_configuration['early_stopping'], patience=global_configuration['patience'], model=model)
				
				local_configuration['trainable_count' ] = trainable_count
				local_configuration['non_trainable_count'] = non_trainable_count

				results['loss'].append(loss)
				results['mean_absolute_error'].append(mean_absolute_error)
				results['trained_epochs'].append(trained_epochs)
				
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
