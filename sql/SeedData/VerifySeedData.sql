USE TripFlow360DB;
GO

PRINT '===== MASTER DATA VERIFICATION =====';

SELECT 'Department' AS TableName, COUNT(*) AS RecordCount
FROM Master.Department

UNION ALL

SELECT 'TravelPolicy', COUNT(*)
FROM Master.TravelPolicy

UNION ALL

SELECT 'Grade', COUNT(*)
FROM Master.Grade

UNION ALL

SELECT 'Designation', COUNT(*)
FROM Master.Designation

UNION ALL

SELECT 'Location', COUNT(*)
FROM Master.Location

UNION ALL

SELECT 'CostCenter', COUNT(*)
FROM Master.CostCenter;
GO