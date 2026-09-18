import pandas as pd

data = pd.read_csv("gender_participation_raw.csv")

data["activity_date"] = pd.to_datetime(data["activity_date"])

data["leadership_flag"] = (data["leadership_role"] == "Yes").astype(int)
data["decision_making_flag"] = (data["decision_making_role"] == "Yes").astype(int)
data["speaker_flag"] = (data["event_speaker"] == "Yes").astype(int)
data["coordination_flag"] = (data["coordination_role"] == "Yes").astype(int)

data["year"] = data["activity_date"].dt.year
data["month"] = data["activity_date"].dt.month
data["month_name"] = data["activity_date"].dt.strftime("%b")

data.to_csv(
    "gender_participation_processed.csv",
    index=False
)

print("Processed dataset saved.")
print("Shape:", data.shape)