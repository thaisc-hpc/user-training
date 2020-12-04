'''
This code is written for Sigularity 101 course to demonstrate how Singularity work on TARA.

Written in Python3 by VJ

Version 0.1 and edited by VJ on Nov 2020

'''

#################################################

print ('The program is now running ..')

#################################################

print ('Checking if Numpy is installed... \n')
try :
    import numpy
    print ('The Numpy version ' + str(numpy.__version__) + ' is installed \n')
except ModuleNotFoundError :
    print ('The Numpy module is NOT installed \n')

#################################################

print ('Checking if Scipy is installed... \n')
try :
    import scipy
    print ('The Scipy version ' + str(scipy.__version__) + ' is installed \n')
except ModuleNotFoundError :
    print ('The Scipy module is NOT installed \n')

#################################################

print ('Checking if Tensorflow is installed... \n')
try :
    import tensorflow
    print ('The Tensorflow version ' + str(tensorflow.__version__) + ' is installed \n')
except ModuleNotFoundError :
    print ('The Tensorflow module is NOT installed \n')

#################################################
