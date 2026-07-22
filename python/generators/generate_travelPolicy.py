import pandas as pd
from pathlib import Path


def generate_travel_policies():

    travel_policies = [
        {
            "PolicyCode": "TP001",
            "PolicyName": "Standard Policy",
            "FlightClass": "Economy",
            "FlightLimit": 10000.00,
            "HotelLimit": 3000.00,
            "MealLimit": 800.00,
            "CabCategory": "Sedan",
            "IsInternationalAllowed": 0,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "PolicyCode": "TP002",
            "PolicyName": "Silver Policy",
            "FlightClass": "Economy",
            "FlightLimit": 15000.00,
            "HotelLimit": 5000.00,
            "MealLimit": 1200.00,
            "CabCategory": "Sedan",
            "IsInternationalAllowed": 1,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "PolicyCode": "TP003",
            "PolicyName": "Gold Policy",
            "FlightClass": "Premium Economy",
            "FlightLimit": 25000.00,
            "HotelLimit": 7000.00,
            "MealLimit": 1800.00,
            "CabCategory": "SUV",
            "IsInternationalAllowed": 1,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "PolicyCode": "TP004",
            "PolicyName": "Platinum Policy",
            "FlightClass": "Business",
            "FlightLimit": 50000.00,
            "HotelLimit": 12000.00,
            "MealLimit": 2500.00,
            "CabCategory": "SUV",
            "IsInternationalAllowed": 1,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "PolicyCode": "TP005",
            "PolicyName": "Executive Policy",
            "FlightClass": "Business",
            "FlightLimit": 100000.00,
            "HotelLimit": 20000.00,
            "MealLimit": 4000.00,
            "CabCategory": "Luxury SUV",
            "IsInternationalAllowed": 1,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        }
    ]

    return pd.DataFrame(travel_policies)


def save_travel_policy_csv(df, output_path):

    df.to_csv(output_path, index=False)

    print(f"Travel Policy CSV saved successfully at:\n{output_path}")


def load_travel_policy_csv(file_path):

    df = pd.read_csv(file_path)

    return df


# ---------------- Main Program ---------------- #

project_root = Path(__file__).resolve().parents[2]

output_path = (
    project_root /
    "datasets" /
    "master" /
    "travel_policy.csv"
)

travel_policy_df = generate_travel_policies()

save_travel_policy_csv(travel_policy_df, output_path)

travel_policy_df = load_travel_policy_csv(output_path)

print(travel_policy_df)