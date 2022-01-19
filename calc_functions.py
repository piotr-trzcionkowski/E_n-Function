#!/usr/bin/python

from scipy.integrate import quad
import numpy as np
import math

def integrand(t, n, x):
    return np.exp(-x*t) / t**n

def En(n, x):
    return quad(integrand, 1, np.inf, args=(n,x))[0]

for n in range (1, 6):
		output = open("n" + str(n) + ".dat", 'w')

		for bigx in range (1, 1001):
			x = bigx / 100.
			output.write( str(x) + ' ' + str( En(n, x) ) + '\n')
		output.close()

output = open("En.dat", 'w')
for bigx in range (1, 1001):
	x = bigx / 100.
	output.write(str(x) + ' ' + str(En(1, x)) + ' ' + str(En(2, x)) + ' ' + str(En(3, x)) + ' ' + str(En(4, x)) + ' ' + str(En(5, x)) + '\n')
output.close()