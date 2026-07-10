USE TripFlow360DB;
GO

CREATE TABLE Master.TravelPolicy
(
    TravelPolicyID INT IDENTITY(1,1) PRIMARY KEY,

    PolicyCode NVARCHAR(20) NOT NULL UNIQUE,

    PolicyName NVARCHAR(100) NOT NULL,

    FlightClass NVARCHAR(50) NOT NULL,

    FlightLimit DECIMAL(10,2) NOT NULL,

    HotelLimit DECIMAL(10,2) NOT NULL,

    MealLimit DECIMAL(10,2) NOT NULL,

    CabCategory NVARCHAR(50) NOT NULL,

    IsInternationalAllowed BIT NOT NULL DEFAULT 0,

    IsActive BIT NOT NULL DEFAULT 1,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL
);
GO