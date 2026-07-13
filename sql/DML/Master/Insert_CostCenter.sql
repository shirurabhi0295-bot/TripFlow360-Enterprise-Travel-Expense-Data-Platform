USE TripFlow360DB;
GO

INSERT INTO Master.CostCenter
(
    CostCenterCode,
    CostCenterName,
    DepartmentID,
    IsActive,
    CreatedBy,
    ModifiedDate,
    ModifiedBy
)
VALUES
('CC1001','Human Resources',          1,1,'System',NULL,NULL),
('CC1002','Finance',                  2,1,'System',NULL,NULL),
('CC1003','Information Technology',   3,1,'System',NULL,NULL),
('CC1004','Sales',                    4,1,'System',NULL,NULL),
('CC1005','Marketing',                5,1,'System',NULL,NULL),
('CC1006','Operations',               6,1,'System',NULL,NULL),
('CC1007','Procurement',              7,1,'System',NULL,NULL),
('CC1008','Legal',                    8,1,'System',NULL,NULL),
('CC1009','Administration',           9,1,'System',NULL,NULL),
('CC1010','Customer Support',        10,1,'System',NULL,NULL);
GO