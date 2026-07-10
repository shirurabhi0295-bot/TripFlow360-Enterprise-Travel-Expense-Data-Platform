USE TripFlow360DB;
GO

CREATE TABLE Master.Designation
(
    DesignationID INT IDENTITY(1,1) PRIMARY KEY,

    DesignationCode NVARCHAR(20) NOT NULL UNIQUE,

    DesignationName NVARCHAR(100) NOT NULL,

    GradeID INT NOT NULL,

    DesignationDescription NVARCHAR(255) NULL,

    IsActive BIT NOT NULL DEFAULT 1,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_Designation_Grade
        FOREIGN KEY (GradeID)
        REFERENCES Master.Grade(GradeID)
);
GO