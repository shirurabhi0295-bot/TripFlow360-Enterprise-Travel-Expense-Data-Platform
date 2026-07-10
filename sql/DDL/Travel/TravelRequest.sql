USE TripFlow360DB;
GO

CREATE TABLE Travel.TravelRequest
(
    TravelRequestID INT IDENTITY(1,1) PRIMARY KEY,

    RequestNumber NVARCHAR(30) NOT NULL UNIQUE,

    EmployeeID INT NOT NULL,

    RequestDate DATE NOT NULL,

    TravelPurpose NVARCHAR(100) NOT NULL,

    SourceLocationID INT NOT NULL,

    DestinationLocationID INT NOT NULL,

    TravelStartDate DATE NOT NULL,

    TravelEndDate DATE NOT NULL,

    EstimatedCost DECIMAL(12,2) NOT NULL,

    RequestStatus NVARCHAR(30) NOT NULL,

    ApprovedBy INT NULL,

    ApprovalDate DATETIME2 NULL,

    Remarks NVARCHAR(500) NULL,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_TravelRequest_Employee
        FOREIGN KEY(EmployeeID)
        REFERENCES HR.Employee(EmployeeID),

    CONSTRAINT FK_TravelRequest_SourceLocation
        FOREIGN KEY(SourceLocationID)
        REFERENCES Master.Location(LocationID),

    CONSTRAINT FK_TravelRequest_DestinationLocation
        FOREIGN KEY(DestinationLocationID)
        REFERENCES Master.Location(LocationID),

    CONSTRAINT FK_TravelRequest_ApprovedBy
        FOREIGN KEY(ApprovedBy)
        REFERENCES HR.Employee(EmployeeID)
);
GO