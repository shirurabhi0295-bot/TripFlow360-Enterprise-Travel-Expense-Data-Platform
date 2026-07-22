import pandas as pd
from pathlib import Path


def load_travel_policy_csv(file_path):
    return pd.read_csv(file_path)


def generate_grades(policy_df):

    policy_map = {}

    for index, row in policy_df.iterrows():
        policy_map[row["PolicyCode"]] = index + 1

    grades = [
        {
            "GradeCode": "G1",
            "GradeName": "Graduate Trainee",
            "TravelPolicyID": policy_map["TP001"],
            "GradeDescription": "Entry-level employees under training.",
            "DisplayOrder": 1,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G2",
            "GradeName": "Associate",
            "TravelPolicyID": policy_map["TP001"],
            "GradeDescription": "Junior associates and analysts.",
            "DisplayOrder": 2,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G3",
            "GradeName": "Senior Associate",
            "TravelPolicyID": policy_map["TP002"],
            "GradeDescription": "Experienced associates handling critical tasks.",
            "DisplayOrder": 3,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G4",
            "GradeName": "Lead",
            "TravelPolicyID": policy_map["TP002"],
            "GradeDescription": "Team leads responsible for small teams.",
            "DisplayOrder": 4,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G5",
            "GradeName": "Assistant Manager",
            "TravelPolicyID": policy_map["TP003"],
            "GradeDescription": "Assistant managers managing business operations.",
            "DisplayOrder": 5,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G6",
            "GradeName": "Manager",
            "TravelPolicyID": policy_map["TP003"],
            "GradeDescription": "Department managers responsible for teams.",
            "DisplayOrder": 6,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G7",
            "GradeName": "Senior Manager",
            "TravelPolicyID": policy_map["TP004"],
            "GradeDescription": "Senior managers overseeing multiple teams.",
            "DisplayOrder": 7,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G8",
            "GradeName": "Associate Director",
            "TravelPolicyID": policy_map["TP004"],
            "GradeDescription": "Associate directors managing departments.",
            "DisplayOrder": 8,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G9",
            "GradeName": "Director",
            "TravelPolicyID": policy_map["TP005"],
            "GradeDescription": "Directors responsible for business units.",
            "DisplayOrder": 9,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        },
        {
            "GradeCode": "G10",
            "GradeName": "Vice President",
            "TravelPolicyID": policy_map["TP005"],
            "GradeDescription": "Executive leadership responsible for strategic decisions.",
            "DisplayOrder": 10,
            "IsActive": 1,
            "CreatedBy": "System",
            "ModifiedDate": None,
            "ModifiedBy": None
        }
    ]

    return pd.DataFrame(grades)


def save_grade_csv(df, output_path):
    df.to_csv(output_path, index=False)
    print(f"Grade CSV saved successfully at:\n{output_path}")


def load_grade_csv(file_path):
    return pd.read_csv(file_path)


project_root = Path(__file__).resolve().parents[2]

travel_policy_path = (
    project_root /
    "datasets" /
    "master" /
    "travel_policy.csv"
)

output_path = (
    project_root /
    "datasets" /
    "master" /
    "grade.csv"
)

policy_df = load_travel_policy_csv(travel_policy_path)

grade_df = generate_grades(policy_df)

save_grade_csv(grade_df, output_path)

grade_df = load_grade_csv(output_path)

print(grade_df)