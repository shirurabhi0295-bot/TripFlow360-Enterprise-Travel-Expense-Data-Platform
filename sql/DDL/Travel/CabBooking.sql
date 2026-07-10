USE TripFlow360DB;
GO

CREATE TABLE Travel.CabBooking
(
    CabBookingID INT IDENTITY(1,1) PRIMARY KEY,

    TravelRequestID INT NOT NULL,

    BookingReference NVARCHAR(30) NOT NULL UNIQUE,

    VendorName NVARCHAR(100) NOT NULL,

    PickupLocation NVARCHAR(200) NOT NULL,

    DropLocation NVARCHAR(200) NOT NULL,

    PickupDateTime DATETIME2 NOT NULL,

    CabType NVARCHAR(30) NOT NULL
    CONSTRAINT CK_CabBooking_CabType
    CHECK (CabType IN ('Sedan','SUV','Hatchback')),

    Fare DECIMAL(12,2) NOT NULL,

    BookingStatus NVARCHAR(30) NOT NULL
    CONSTRAINT CK_CabBooking_BookingStatus
    CHECK (BookingStatus IN ('Requested','Confirmed','Cancelled','Completed')),

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_CabBooking_TravelRequest
    FOREIGN KEY (TravelRequestID)
    REFERENCES Travel.TravelRequest(TravelRequestID)
);
GO