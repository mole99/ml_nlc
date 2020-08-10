# ml_nlc
NLC table replacement based on ML

![](img/Figure_1.png)

## Getting Started

To run the programs install the following dependencies:

- Python > 3.5
- Tensorflow > 2
- NumPy
- Matplotlib

## Project Directory Structure

### ReluNetwork

Contains everything to train a Neural Network via train\_network.py and run multiple tests for comparing different network sizes with test\_configurations.py.

### TrainingData

This includes both curves in .csv format and training\_data.py to load and process the training data.

### ReferenceImplementation

Loads the weights of an already trained network in .json format and runs the Neural Network in pure Python.