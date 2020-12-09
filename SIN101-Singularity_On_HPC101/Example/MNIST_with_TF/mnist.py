# this code is taken from https://www.tensorflow.org/tutorials/keras/classification 
# the code was modified to using pre-downloaded data instead of downloading from the API.
# Tensorflow version 2.3.1

import tensorflow as tf
import numpy as np

fashion_mnist = tf.keras.datasets.fashion_mnist
#(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

with open('mnist_data.npy', 'rb') as f: 
    train_images = np.load(f)
    train_labels = np.load(f)
    test_images = np.load(f)
    test_labels = np.load(f)

class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat',
               'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

# Explore Data
train_images.shape
len(train_labels)

test_images.shape
len(test_labels)

# Preprocess Data
train_images = train_images / 255.0
test_images = test_images / 255.0

tf.debugging.set_log_device_placement(True)
strategy = tf.distribute.MirroredStrategy()

with strategy.scope() :
    model = tf.keras.Sequential([
        tf.keras.layers.Flatten(input_shape=(28, 28)),
        tf.keras.layers.Dense(128, activation='relu'),
        tf.keras.layers.Dense(10)
    ])

    model.compile(optimizer='adam',
                  loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
                  metrics=['accuracy'])

model.fit(train_images, train_labels, epochs=10)

test_loss, test_acc = model.evaluate(test_images,  test_labels, verbose=2)

print('\n Test loss:', test_loss)
print('\nTest accuracy:', test_acc)
