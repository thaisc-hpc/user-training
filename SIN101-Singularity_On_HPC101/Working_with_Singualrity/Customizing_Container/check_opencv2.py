'''
This code is written for Sigularity 101 course to demonstrate how Singularity work on TARA.
Written in Python3 by VJ
Version 0.1 and edited by VJ on Dec 2020
'''

#################################################

print ('The program is now running ..')

#################################################

print ('Checking if Tensorflow is installed... \n')
try :
    import tensorflow
    print ('The Tensorflow version ' + str(tensorflow.__version__) + ' is installed \n')
except ModuleNotFoundError :
    print ('The Tensorflow is NOT installed \n')

#################################################

print ('Checking if OpenCV2  is installed... \n')
try :
    import cv2
    print ('The OpenCV2 version ' + str(cv2.__version__) + ' is installed \n')
except ModuleNotFoundError :
    print ('The OpenCV2 is NOT installed \n')

#################################################
