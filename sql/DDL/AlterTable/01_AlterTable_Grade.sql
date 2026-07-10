USE TripFlow360DB;
GO

ALTER TABLE Master.Grade
ADD CONSTRAINT FK_Grade_TravelPolicy
FOREIGN KEY (TravelPolicyID)
REFERENCES Master.TravelPolicy(TravelPolicyID);
GO