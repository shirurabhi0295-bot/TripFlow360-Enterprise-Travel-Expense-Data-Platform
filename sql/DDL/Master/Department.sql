USE TripFlow360DB;
GO

CREATE TABLE Master.Department
(
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,

    DepartmentCode NVARCHAR(20) NOT NULL,

    DepartmentName NVARCHAR(100) NOT NULL,

    DepartmentType NVARCHAR(50) NOT NULL,

    DepartmentDescription NVARCHAR(255) NULL,

    IsActive BIT NOT NULL DEFAULT 1,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL
);
GO