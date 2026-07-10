USE TripFlow360DB;
GO

CREATE TABLE Travel.FlightBooking
(
    FlightBookingID INT IDENTITY(1,1) PRIMARY KEY,

    TravelRequestID INT NOT NULL,

    BookingReference NVARCHAR(30) NOT NULL UNIQUE,

    AirlineName NVARCHAR(100) NOT NULL,

    VendorName NVARCHAR(100) NULL,

    FlightNumber NVARCHAR(20) NOT NULL,

    PNRNumber NVARCHAR(20) NULL,

    DepartureAirport NVARCHAR(100) NOT NULL,

    ArrivalAirport NVARCHAR(100) NOT NULL,

    DepartureDateTime DATETIME2 NOT NULL,

    ArrivalDateTime DATETIME2 NOT NULL,

    TravelClass NVARCHAR(30) NOT NULL
    CHECK (TravelClass IN ('Economy','Premium Economy','Business')),

    TicketCost DECIMAL(12,2) NOT NULL,

    BookingStatus NVARCHAR(30) NOT NULL
    CHECK (BookingStatus IN ('Requested','Confirmed','Ticketed','Cancelled','Rescheduled')),

    CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CreatedBy NVARCHAR(100) NOT NULL,

    ModifiedDate DATETIME2 NULL,

    ModifiedBy NVARCHAR(100) NULL,

    CONSTRAINT FK_FlightBooking_TravelRequest
        FOREIGN KEY (TravelRequestID)
        REFERENCES Travel.TravelRequest(TravelRequestID)
);
GO