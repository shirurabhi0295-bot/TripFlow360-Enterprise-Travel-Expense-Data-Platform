USE TripFlow360DB;
GO

CREATE TABLE HR.Employee
(
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeCode NVARCHAR(20) NOT NULL UNIQUE,

    FirstName NVARCHAR(100) NOT NULL,

    LastName NVARCHAR(100) NOT NULL,

    Gender NVARCHAR(20) NOT NULL,

    DateOfBirth DATE NOT NULL,

    OfficialEmail NVARCHAR(255) NOT NULL UNIQUE,

    PhoneNumber NVARCHAR(20) NOT NULL,

    DateOfJoining DATE NOT NULL,

    EmploymentType NVARCHAR(50) NOT NULL,

    EmploymentStatus NVARCHAR(50) NOT NULL,

    DepartmentID INT NOT NULL,

    DesignationID INT NOT NULL,

    GradeID INT NOT NULL,

    LocationID INT NOT NULL,

    CostCenterID INT NOT NULL,

    ManagerID INT NULL,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_Employee_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Master.Department(DepartmentID),

    CONSTRAINT FK_Employee_Designation
        FOREIGN KEY (DesignationID)
        REFERENCES Master.Designation(DesignationID),

    CONSTRAINT FK_Employee_Grade
        FOREIGN KEY (GradeID)
        REFERENCES Master.Grade(GradeID),

    CONSTRAINT FK_Employee_Location
        FOREIGN KEY (LocationID)
        REFERENCES Master.Location(LocationID),

    CONSTRAINT FK_Employee_CostCenter
        FOREIGN KEY (CostCenterID)
        REFERENCES Master.CostCenter(CostCenterID),

    CONSTRAINT FK_Employee_Manager
        FOREIGN KEY (ManagerID)
        REFERENCES HR.Employee(EmployeeID)
);
GO