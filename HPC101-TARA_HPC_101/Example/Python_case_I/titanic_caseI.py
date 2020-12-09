import pandas as pd
import numpy as np
import matplotlib
import matplotlib.pyplot as plt

## Load data
data = pd.read_csv("titanic_data_example.csv")

## Print total and average fare
print ('The total fare : ' + str(np.sum(data["Fare"])))
print ('The average fare : ' + str(np.average(data["Fare"])))

## Plot distribution and save
plt.hist(data["Fare"], bins=50, range = (0,300) )
plt.xlabel("Fare")
plt.ylabel("Count")
plt.savefig('histogram.png', dpi=100)

