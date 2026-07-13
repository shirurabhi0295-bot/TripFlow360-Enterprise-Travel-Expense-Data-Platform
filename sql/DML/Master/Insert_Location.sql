USE TripFlow360DB;
GO

INSERT INTO Master.Location
(
    LocationCode,
    LocationName,
    City,
    State,
    Country,
    IsActive,
    CreatedBy,
    ModifiedDate,
    ModifiedBy
)
VALUES
('BLR', 'Bangalore Office', 'Bengaluru', 'Karnataka', 'India', 1, 'System', NULL, NULL),

('HYD', 'Hyderabad Office', 'Hyderabad', 'Telangana', 'India', 1, 'System', NULL, NULL),

('CHE', 'Chennai Office', 'Chennai', 'Tamil Nadu', 'India', 1, 'System', NULL, NULL),

('MUM', 'Mumbai Office', 'Mumbai', 'Maharashtra', 'India', 1, 'System', NULL, NULL),

('DEL', 'Delhi Office', 'New Delhi', 'Delhi', 'India', 1, 'System', NULL, NULL),

('PUN', 'Pune Office', 'Pune', 'Maharashtra', 'India', 1, 'System', NULL, NULL),

('KOL', 'Kolkata Office', 'Kolkata', 'West Bengal', 'India', 1, 'System', NULL, NULL),

('DXB', 'Dubai Office', 'Dubai', 'Dubai', 'United Arab Emirates', 1, 'System', NULL, NULL),

('LON', 'London Office', 'London', 'England', 'United Kingdom', 1, 'System', NULL, NULL),

('NYC', 'New York Office', 'New York', 'New York', 'United States', 1, 'System', NULL, NULL);
GO