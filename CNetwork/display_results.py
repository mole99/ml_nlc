import matplotlib.pyplot as plt
import numpy as np
from matplotlib import colors
from matplotlib.ticker import PercentFormatter

def plotHistogram(histogram_data):
	n_bins = 300
	
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
	ax.set_xlabel("Error")
	
	plt.show()


def main():
	test_file = open('test_results.csv', 'r')
	
	histogram_data = []
	for line in test_file:
		histogram_data.append(float(line))

	#histogram_data = [abs(item) for item in histogram_data] 

	plotHistogram(histogram_data)

if __name__ == "__main__":
	main()
