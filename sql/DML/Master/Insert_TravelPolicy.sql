USE TripFlow360DB;
GO

INSERT INTO Master.TravelPolicy
(
    PolicyCode,
    PolicyName,
    FlightClass,
    FlightLimit,
    HotelLimit,
    MealLimit,
    CabCategory,
    IsInternationalAllowed,
    IsActive,
    CreatedBy,
    ModifiedDate,
    ModifiedBy
)
VALUES
('TP001', 'Standard Policy', 'Economy',          10000.00,  3000.00,  800.00,  'Sedan',      0, 1, 'System', NULL, NULL),

('TP002', 'Silver Policy',   'Economy',          15000.00,  5000.00, 1200.00,  'Sedan',      1, 1, 'System', NULL, NULL),

('TP003', 'Gold Policy',     'Premium Economy', 25000.00,  7000.00, 1800.00,  'SUV',        1, 1, 'System', NULL, NULL),

('TP004', 'Platinum Policy', 'Business',         50000.00, 12000.00, 2500.00, 'SUV',        1, 1, 'System', NULL, NULL),

('TP005', 'Executive Policy','Business',        100000.00, 20000.00, 4000.00, 'Luxury SUV', 1, 1, 'System', NULL, NULL);
GO