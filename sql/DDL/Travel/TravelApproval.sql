USE TripFlow360DB;
GO

CREATE TABLE Travel.TravelApproval
(
    ApprovalID INT IDENTITY(1,1) PRIMARY KEY,

    TravelRequestID INT NOT NULL,

    ApproverID INT NOT NULL,

    ApprovalLevel INT NOT NULL,

    ApprovalStatus NVARCHAR(30) NOT NULL
    CONSTRAINT CK_TravelApproval_Status
    CHECK (ApprovalStatus IN ('Pending','Approved','Rejected')),

    ApprovalDate DATETIME2 NULL,

    Remarks NVARCHAR(500) NULL,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    CONSTRAINT FK_TravelApproval_Request
    FOREIGN KEY (TravelRequestID)
    REFERENCES Travel.TravelRequest(TravelRequestID),

    CONSTRAINT FK_TravelApproval_Employee
    FOREIGN KEY (ApproverID)
    REFERENCES HR.Employee(EmployeeID)
);
GO