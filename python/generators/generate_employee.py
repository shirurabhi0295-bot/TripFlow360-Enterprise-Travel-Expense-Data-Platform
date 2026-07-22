from faker import Faker
import pandas as pd
import random
from pathlib import Path

fake = Faker("en_IN")


def generate_name():
    gender = random.choice(["Male", "Female"])

    if gender == "Male":
        first_name = fake.first_name_male()
    else:
        first_name = fake.first_name_female()

    last_name = fake.last_name()

    return first_name, last_name, gender


def generate_phone_number():
    first_digit = random.choice(["6", "7", "8", "9"])
    remaining_digits = "".join(random.choices("0123456789", k=9))

    return first_digit + remaining_digits


def generate_email(first_name, last_name):
    return f"{first_name.lower()}.{last_name.lower()}@tripflow360.com"


def create_employee(employee_number):

    first_name, last_name, gender = generate_name()

    phone_number = generate_phone_number()

    email = generate_email(first_name, last_name)

    employee = {
        "EmployeeCode": f"EMP{employee_number:06}",
        "FirstName": first_name,
        "LastName": last_name,
        "Gender": gender,
        "OfficialEmail": email,
        "PhoneNumber": phone_number
    }

    return employee

def save_employee_csv(df,output_path):
    df.to_csv(output_path, index=False)
    print("\nEmployee CSV generated successfully!")

def load_employee_csv(file_path):

    df = pd.read_csv(file_path)

    return df    


# ---------------- Main Program ---------------- #

employees = []

for i in range(1, 11):
    employee = create_employee(i)
    employees.append(employee)

df = pd.DataFrame(employees)

print(df)

project_root = Path(__file__).resolve().parents[2]

output_path = project_root / "datasets" / "hr" / "employee.csv"

save_employee_csv(df, output_path)
employee_df = load_employee_csv(output_path)

print(employee_df.head())