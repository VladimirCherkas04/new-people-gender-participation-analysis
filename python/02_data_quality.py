import pandas as pd

data = pd.read_csv("gender_participation_raw.csv")

print("Missing values:")
print(data.isnull().sum())

print("\nDuplicate rows:")
print(data.duplicated().sum())

print("\nData types:")
print(data.dtypes)