# ============================================
# TripFlow360 - Employee Data Generator
# Author : Abhishek Biradar
# ============================================

from faker import Faker
import pandas as pd
import random

# Indian locale
fake = Faker("en_IN")

# Generate one employee

employee = {
    "EmployeeCode": "EMP000001",
    "FirstName": fake.first_name(),
    "LastName": fake.last_name(),
    "Gender": random.choice(["Male", "Female"]),
    "OfficialEmail": fake.email(),
    "PhoneNumber": fake.phone_number(),
}

print(employee)