USE TripFlow360DB;
GO

CREATE TABLE Master.CostCenter
(
    CostCenterID INT IDENTITY(1,1) PRIMARY KEY,

    CostCenterCode NVARCHAR(20) NOT NULL UNIQUE,

    CostCenterName NVARCHAR(100) NOT NULL,

    DepartmentID INT NOT NULL,

    IsActive BIT NOT NULL DEFAULT 1,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_CostCenter_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Master.Department(DepartmentID)
);
GO