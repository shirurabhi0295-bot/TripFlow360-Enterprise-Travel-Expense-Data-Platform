USE TripFlow360DB;
GO

INSERT INTO Master.Designation
(
    DesignationCode,
    DesignationName,
    GradeID,
    DesignationDescription,
    IsActive,
    CreatedBy,
    ModifiedDate,
    ModifiedBy
)

SELECT
'DSG001',
'Graduate Trainee',
GradeID,
'Entry-level trainee undergoing structured training.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G1'

UNION ALL

SELECT
'DSG002',
'Associate',
GradeID,
'Junior professional responsible for daily operations.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G2'

UNION ALL

SELECT
'DSG003',
'Senior Associate',
GradeID,
'Experienced individual contributor.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G3'

UNION ALL

SELECT
'DSG004',
'Team Lead',
GradeID,
'Leads a small team and project deliveries.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G4'

UNION ALL

SELECT
'DSG005',
'Assistant Manager',
GradeID,
'Supports departmental operations.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G5'

UNION ALL

SELECT
'DSG006',
'Manager',
GradeID,
'Responsible for managing teams.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G6'

UNION ALL

SELECT
'DSG007',
'Senior Manager',
GradeID,
'Manages multiple teams and strategic initiatives.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G7'

UNION ALL

SELECT
'DSG008',
'Associate Director',
GradeID,
'Department-level leadership role.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G8'

UNION ALL

SELECT
'DSG009',
'Director',
GradeID,
'Leads business units and organizational strategy.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G9'

UNION ALL

SELECT
'DSG010',
'Vice President',
GradeID,
'Executive leadership role.',
1,
'System',
NULL,
NULL
FROM Master.Grade
WHERE GradeCode = 'G10';
GO