/*
=========================================================
Project       : TripFlow360
Script Name   : RunAllSeedData.sql
Purpose       : Execute all Master Seed Data Scripts
Author        : Abhishek Biradar
=========================================================
*/

USE TripFlow360DB;
GO

PRINT '=============================================';
PRINT 'TripFlow360 - Master Seed Data Execution';
PRINT '=============================================';

PRINT 'Step 1 - Department';
-- Execute: Department.sql

PRINT 'Step 2 - TravelPolicy';
-- Execute: TravelPolicy.sql

PRINT 'Step 3 - Grade';
-- Execute: Grade.sql

PRINT 'Step 4 - Designation';
-- Execute: Designation.sql

PRINT 'Step 5 - Location';
-- Execute: Location.sql

PRINT 'Step 6 - CostCenter';
-- Execute: CostCenter.sql

PRINT '=============================================';
PRINT 'Master Seed Data Completed Successfully';
PRINT '=============================================';
GO