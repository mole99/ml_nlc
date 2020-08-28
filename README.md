# ml_nlc
NLC table replacement based on ML

![](img/Figure_1.png)

## Getting Started

To run the programs install the following dependencies:

- Python >= 3.5
- Tensorflow >= 2.3.0
- NumPy
- Matplotlib

You will also need a C-Compiler for building the CNetwork and QuantizationScheme.

### Installation

Install the python modules via pip:

> pip install tensorflow <br>
> pip install tensorflow\_model\_optimization <br>
> pip install numpy <br>
> pip install matplotlib <br>

(Maybe you will need to use pip3 on your system)

## Project Directory Structure

### ReluNetwork

Contains everything to train a Neural Network via *train\_network.py* and run multiple tests for comparing different network sizes with *test\_configurations.py*. <br> *quantize\_network.py* trains a network, applies post-quantization (quantization aware training will follow) to it and saves it in the .tflite file format.

### TrainingData

This includes both curves in .csv format and *training\_data.py* to load and process the training data.

### ReferenceImplementation

*main.py* loads the weights of an already trained network in .json format and runs the Neural Network in pure Python. Only dense layers are supported as of now.

### QuantizationScheme

A small reference implementation in C for the quantization scheme described here: [arXiv:1712.05877](https://arxiv.org/abs/1712.05877)

### ExportNetwork

*export_network.py* takes a model in .tflite file format and exports it as a C struct, ready to be read by *CNetwork*.

### ExportDataset

*export_dataset.py* exports the training set found under *TrainingData* as a C array.

### CNetwork

C implementation for performing inference of models exported via *ExportNetwork*. The output is compared to the dataset exported with *ExportDataset* and the resulting file can be displayed as a histogram by *display_results.py*.

### HLSNetwork

Vivado HLS project to synthesize the C-model and create the corresponding HDL files.

## Documentation

### Blogs

The blog posts for this project are stored here.
They are written with Markdown and also converted to .pdf format.

### Online

If reachable, the blog posts can also be read online here: [mole99.uber.space](https://mole99.uber.space/)

Specifically starting with this [post](https://mole99.uber.space/2020_08_03/entry.html).