from faker import Faker
import pandas as pd
import random
from pathlib import Path

fake = Faker("en_IN")

employees = []

for i in range (1,11):

    gender = random.choice(["Male", "Female"])

    if gender == "Male":
        first_name = fake.first_name_male()
    else:
        first_name = fake.first_name_female()    
    last_name = fake.last_name()

    first_digit = random.choice(["6", "7", "8", "9"])

    remaining_digits = "".join(random.choices("0123456789", k=9))

    phone_number = first_digit + remaining_digits

    employee = {
        "EmployeeCode": f"EMP{i:06}",
        "FirstName": first_name,
        "LastName": last_name,
        "Gender": gender,
        "OfficialEmail": f"{first_name.lower()}.{last_name.lower()}@tripflow360.com",
        "PhoneNumber": phone_number
    }
    employees.append(employee)

df = pd.DataFrame(employees)

print(df)

project_root = Path(__file__).resolve().parents[2]

output_path = project_root / "datasets" / "hr" / "employee.csv"

df.to_csv(output_path, index=False)

print("\nEmployee CSV generated successfully!")
print(f"Location: {output_path}")