USE TripFlow360DB;
GO

ALTER TABLE HR.Employee
ADD Title NVARCHAR(10) NOT NULL;
GO



USE TripFlow360DB;
GO

ALTER TABLE Master.Grade
ADD CONSTRAINT FK_Grade_TravelPolicy
FOREIGN KEY (TravelPolicyID)
REFERENCES Master.TravelPolicy(TravelPolicyID);
GO