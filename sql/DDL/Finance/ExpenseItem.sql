USE TripFlow360DB;
GO

CREATE TABLE Finance.ExpenseItem
(
    ExpenseItemID INT IDENTITY(1,1)
        CONSTRAINT PK_ExpenseItem PRIMARY KEY,

    ExpenseClaimID INT NOT NULL,

    ExpenseType NVARCHAR(50) NOT NULL
        CONSTRAINT CK_ExpenseItem_Type
        CHECK
        (
            ExpenseType IN
            (
                'Flight',
                'Hotel',
                'Cab',
                'Meal',
                'Visa',
                'Laundry',
                'Miscellaneous'
            )
        ),

    ExpenseDate DATE NOT NULL,

    VendorName NVARCHAR(150) NULL,

    Amount DECIMAL(12,2) NOT NULL,

    CurrencyCode NVARCHAR(10) NOT NULL,

    Remarks NVARCHAR(500) NULL,

    CreatedDate DATETIME2
        CONSTRAINT DF_ExpenseItem_CreatedDate
        DEFAULT(GETDATE()) NOT NULL,

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_ExpenseItem_ExpenseClaim
        FOREIGN KEY (ExpenseClaimID)
        REFERENCES Finance.ExpenseClaim(ExpenseClaimID)
);
GO