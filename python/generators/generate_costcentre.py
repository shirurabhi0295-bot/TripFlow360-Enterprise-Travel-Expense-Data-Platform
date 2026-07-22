import pandas as pd
from pathlib import Path


def load_department_csv(file_path):

    return pd.read_csv(file_path)


def generate_cost_centers(department_df):

    department_map = {}

    for index, row in department_df.iterrows():
        department_map[row["DepartmentCode"]] = index + 1

    cost_centers = [
        {
            "CostCenterCode": "CC1001",
            "CostCenterName": "Human Resources",
            "DepartmentID": department_map["HR"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1002",
            "CostCenterName": "Finance",
            "DepartmentID": department_map["FIN"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1003",
            "CostCenterName": "Information Technology",
            "DepartmentID": department_map["IT"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1004",
            "CostCenterName": "Sales",
            "DepartmentID": department_map["SAL"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1005",
            "CostCenterName": "Marketing",
            "DepartmentID": department_map["MKT"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1006",
            "CostCenterName": "Operations",
            "DepartmentID": department_map["OPS"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1007",
            "CostCenterName": "Procurement",
            "DepartmentID": department_map["PRC"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1008",
            "CostCenterName": "Legal",
            "DepartmentID": department_map["LEG"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1009",
            "CostCenterName": "Administration",
            "DepartmentID": department_map["ADM"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "CostCenterCode": "CC1010",
            "CostCenterName": "Customer Support",
            "DepartmentID": department_map["CS"],
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        }
    ]

    return pd.DataFrame(cost_centers)


def save_cost_center_csv(df, output_path):

    df.to_csv(output_path, index=False)

    print(f"Cost Center CSV saved successfully at:\n{output_path}")


def load_cost_center_csv(file_path):

    return pd.read_csv(file_path)


# ---------------- Main Program ---------------- #

project_root = Path(__file__).resolve().parents[2]

department_path = (
    project_root /
    "datasets" /
    "master" /
    "department.csv"
)

output_path = (
    project_root /
    "datasets" /
    "master" /
    "cost_center.csv"
)

department_df = load_department_csv(department_path)

cost_center_df = generate_cost_centers(department_df)

save_cost_center_csv(cost_center_df, output_path)

cost_center_df = load_cost_center_csv(output_path)

print(cost_center_df)