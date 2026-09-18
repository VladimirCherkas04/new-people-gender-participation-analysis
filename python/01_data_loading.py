import pandas as pd

data = pd.read_csv("gender_participation_raw.csv")

print("Dataset shape:")
print(data.shape)

print("\nColumns:")
print(data.columns.tolist())

print("\nFirst rows:")
print(data.head())