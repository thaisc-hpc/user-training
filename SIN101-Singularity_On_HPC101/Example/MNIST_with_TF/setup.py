# code is taken from https://www.tensorflow.org/tutorials/keras/classification
# Tensorflow version 2.3.1

import tensorflow as tf
import numpy as np

fashion_mnist = tf.keras.datasets.fashion_mnist
(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

with open('mnist_data.npy', 'wb') as f:
    np.save(f, train_images)
    np.save(f, train_labels)
    np.save(f, test_images)
    np.save(f, test_labels)
