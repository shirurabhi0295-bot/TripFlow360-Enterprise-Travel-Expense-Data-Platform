-- Employee Table
USE TripFlow360DB;
GO

ALTER TABLE HR.Employee
ADD Title NVARCHAR(10) NOT NULL;
GO