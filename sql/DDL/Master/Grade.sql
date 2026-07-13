USE TripFlow360DB;
GO

CREATE TABLE Master.Grade
(
    GradeID INT IDENTITY(1,1) PRIMARY KEY,

    GradeCode NVARCHAR(20) NOT NULL UNIQUE,

    GradeName NVARCHAR(100) NOT NULL,

    TravelPolicyID INT NULL,

    GradeDescription NVARCHAR(255) NULL,

    DisplayOrder INT NOT NULL,

    IsActive BIT NOT NULL DEFAULT 1,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL
    
);
GO