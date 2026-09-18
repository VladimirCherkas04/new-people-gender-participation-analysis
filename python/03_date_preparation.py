import pandas as pd

data = pd.read_csv("gender_participation_raw.csv")

data["activity_date"] = pd.to_datetime(data["activity_date"])

print("Date type:")
print(data["activity_date"].dtype)

print("\nDate range:")
print(data["activity_date"].min())
print(data["activity_date"].max())