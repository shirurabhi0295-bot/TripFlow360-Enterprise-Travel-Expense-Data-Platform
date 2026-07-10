USE TripFlow360DB;
GO

CREATE TABLE Travel.HotelBooking
(
    HotelBookingID INT IDENTITY(1,1) PRIMARY KEY,

    TravelRequestID INT NOT NULL,

    BookingReference NVARCHAR(30) NOT NULL UNIQUE,

    HotelName NVARCHAR(150) NOT NULL,

    VendorName NVARCHAR(100) NULL,

    City NVARCHAR(100) NOT NULL,

    CheckInDate DATE NOT NULL,

    CheckOutDate DATE NOT NULL,

    RoomType NVARCHAR(50) NOT NULL
    CONSTRAINT CK_HotelBooking_RoomType
    CHECK (RoomType IN ('Standard','Deluxe','Suite')),

    TotalCost DECIMAL(12,2) NOT NULL,

    BookingStatus NVARCHAR(30) NOT NULL
    CONSTRAINT CK_HotelBooking_BookingStatus
    CHECK (BookingStatus IN ('Requested','Confirmed','Cancelled')),

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_HotelBooking_TravelRequest
    FOREIGN KEY (TravelRequestID)
    REFERENCES Travel.TravelRequest(TravelRequestID)
);
GO