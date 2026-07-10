--TravelRequest Table
USE TripFlow360DB;
GO

-- Add TripType
ALTER TABLE Travel.TravelRequest
ADD TripType NVARCHAR(20) NOT NULL
    CONSTRAINT CK_TravelRequest_TripType
    CHECK (TripType IN ('OneWay', 'RoundTrip', 'MultiCity'));
GO

-- Add TravelType
ALTER TABLE Travel.TravelRequest
ADD TravelType NVARCHAR(20) NOT NULL
    CONSTRAINT CK_TravelRequest_TravelType
    CHECK (TravelType IN ('Domestic', 'International'));
GO