import pandas as pd
from pathlib import Path


def generate_locations():

    locations = [
        {
            "LocationCode": "BLR",
            "LocationName": "Bangalore Office",
            "City": "Bengaluru",
            "State": "Karnataka",
            "Country": "India",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "HYD",
            "LocationName": "Hyderabad Office",
            "City": "Hyderabad",
            "State": "Telangana",
            "Country": "India",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "CHE",
            "LocationName": "Chennai Office",
            "City": "Chennai",
            "State": "Tamil Nadu",
            "Country": "India",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "MUM",
            "LocationName": "Mumbai Office",
            "City": "Mumbai",
            "State": "Maharashtra",
            "Country": "India",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "DEL",
            "LocationName": "Delhi Office",
            "City": "New Delhi",
            "State": "Delhi",
            "Country": "India",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "PUN",
            "LocationName": "Pune Office",
            "City": "Pune",
            "State": "Maharashtra",
            "Country": "India",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "KOL",
            "LocationName": "Kolkata Office",
            "City": "Kolkata",
            "State": "West Bengal",
            "Country": "India",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "DXB",
            "LocationName": "Dubai Office",
            "City": "Dubai",
            "State": "Dubai",
            "Country": "United Arab Emirates",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "LON",
            "LocationName": "London Office",
            "City": "London",
            "State": "England",
            "Country": "United Kingdom",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "LocationCode": "NYC",
            "LocationName": "New York Office",
            "City": "New York",
            "State": "New York",
            "Country": "United States",
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        }
    ]

    return pd.DataFrame(locations)


def save_location_csv(df, output_path):

    df.to_csv(output_path, index=False)

    print(f"Location CSV saved successfully at:\n{output_path}")


def load_location_csv(file_path):

    return pd.read_csv(file_path)


# ---------------- Main Program ---------------- #

project_root = Path(__file__).resolve().parents[2]

output_path = (
    project_root /
    "datasets" /
    "master" /
    "location.csv"
)

location_df = generate_locations()

save_location_csv(location_df, output_path)

location_df = load_location_csv(output_path)

print(location_df)