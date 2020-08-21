# ml_nlc
NLC table replacement based on ML

![](img/Figure_1.png)

## Getting Started

To run most of the programs install the following dependencies:

- Python >= 3.5
- Tensorflow >= 2.3.0
- NumPy
- Matplotlib

Install [spfpm](https://pypi.org/project/spfpm/) to run the script for quantizing the Neural Network in Python via fixed point arithmetic.

You will also need a C-Compiler for TODO

### Linux

Install the python modules via pip:

> pip install tensorflow <br>
> pip install numpy <br>
> pip install matplotlib <br>
> pip install spfpm

## Project Directory Structure

### ReluNetwork

Contains everything to train a Neural Network via *train\_network.py* and run multiple tests for comparing different network sizes with *test\_configurations.py*. <br> *quantize\_network.py* trains a network, applies post-quantization (quantization aware training will follow) to it and saves it in the .tflite file format.

### TrainingData

This includes both curves in .csv format and *training\_data.py* to load and process the training data.

### ReferenceImplementation

*main.py* loads the weights of an already trained network in .json format and runs the Neural Network in pure Python. Only dense layers are supported as of now.

Alternatively network inference can also be calculated with fixed point arithmetic. Use either *quantization.py* or *quantization2.py* for that.

### QuantizationScheme

A small reference implementation in C for the quantization scheme described here: [arXiv:1712.05877](https://arxiv.org/abs/1712.05877)

### ExportNetwork

*export_network.py* takes a model in .tflite file format and exports it as a C struct, ready to be read by *CNetwork*.

### ExportDataset

*export_dataset.py* exports the training set found under *TrainingData* as a C array.

### CNetwork

C implementation for performing inference of models exported via *ExportNetwork*. The output is compared to the dataset exported with *ExportDataset* and the resulting file can be displayed as a histogram by *display_results.py*.

### hls

Example project for high level synthesis.