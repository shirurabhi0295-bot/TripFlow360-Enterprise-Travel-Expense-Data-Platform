USE TripFlow360DB;
GO

CREATE TABLE Finance.ExpenseClaim
(
    ExpenseClaimID INT IDENTITY(1,1)
        CONSTRAINT PK_ExpenseClaim PRIMARY KEY,

    TravelRequestID INT NOT NULL,

    ClaimNumber NVARCHAR(30)
        CONSTRAINT UQ_ExpenseClaim_ClaimNumber UNIQUE
        NOT NULL,

    EmployeeID INT NOT NULL,

    ClaimDate DATE NOT NULL,

    TotalClaimAmount DECIMAL(12,2) NOT NULL,

    ClaimStatus NVARCHAR(30) NOT NULL
        CONSTRAINT CK_ExpenseClaim_Status
        CHECK (ClaimStatus IN
        (
            'Draft',
            'Submitted',
            'Approved',
            'Rejected',
            'Paid'
        )),

    ApprovedBy INT NULL,

    ApprovalDate DATETIME2 NULL,

    Remarks NVARCHAR(500) NULL,

    CreatedDate DATETIME2
        CONSTRAINT DF_ExpenseClaim_CreatedDate
        DEFAULT(GETDATE()) NOT NULL,

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_ExpenseClaim_TravelRequest
        FOREIGN KEY (TravelRequestID)
        REFERENCES Travel.TravelRequest(TravelRequestID),

    CONSTRAINT FK_ExpenseClaim_Employee
        FOREIGN KEY (EmployeeID)
        REFERENCES HR.Employee(EmployeeID),

    CONSTRAINT FK_ExpenseClaim_ApprovedBy
        FOREIGN KEY (ApprovedBy)
        REFERENCES HR.Employee(EmployeeID)
);
GO