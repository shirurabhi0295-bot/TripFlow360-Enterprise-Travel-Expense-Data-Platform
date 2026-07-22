import pandas as pd
from pathlib import Path


def generate_departments():

    departments = [
        {
            "DepartmentCode": "HR",
            "DepartmentName": "Human Resources",
            "DepartmentType": "Support",
            "DepartmentDescription": "Manages recruitment, payroll and employee relations.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "FIN",
            "DepartmentName": "Finance",
            "DepartmentType": "Support",
            "DepartmentDescription": "Handles budgeting, accounting and financial reporting.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "IT",
            "DepartmentName": "Information Technology",
            "DepartmentType": "Core",
            "DepartmentDescription": "Responsible for IT infrastructure and software development.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "SAL",
            "DepartmentName": "Sales",
            "DepartmentType": "Business",
            "DepartmentDescription": "Manages client acquisition and revenue generation.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "MKT",
            "DepartmentName": "Marketing",
            "DepartmentType": "Business",
            "DepartmentDescription": "Handles branding, campaigns and market research.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "OPS",
            "DepartmentName": "Operations",
            "DepartmentType": "Core",
            "DepartmentDescription": "Oversees day-to-day business operations.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "PRC",
            "DepartmentName": "Procurement",
            "DepartmentType": "Support",
            "DepartmentDescription": "Manages vendor procurement and purchasing.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "LEG",
            "DepartmentName": "Legal",
            "DepartmentType": "Support",
            "DepartmentDescription": "Handles legal compliance and contracts.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "ADM",
            "DepartmentName": "Administration",
            "DepartmentType": "Support",
            "DepartmentDescription": "Responsible for office administration and facilities.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        },
        {
            "DepartmentCode": "CS",
            "DepartmentName": "Customer Support",
            "DepartmentType": "Business",
            "DepartmentDescription": "Provides customer support and issue resolution.",
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": "System"
        }
    ]

    return pd.DataFrame(departments)


def save_department_csv(df, output_path):

    df.to_csv(output_path, index=False)

    print(f"Department CSV saved successfully at:\n{output_path}")


def load_department_csv(file_path):

    df = pd.read_csv(file_path)

    return df


# ---------------- Main Program ---------------- #

project_root = Path(__file__).resolve().parents[2]

output_path = (
    project_root /
    "datasets" /
    "master" /
    "department.csv"
)

department_df = generate_departments()

save_department_csv(department_df, output_path)

department_df = load_department_csv(output_path)

print(department_df)