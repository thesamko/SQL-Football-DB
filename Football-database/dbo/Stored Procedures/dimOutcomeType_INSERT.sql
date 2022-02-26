
CREATE PROCEDURE [dbo].[dimOutcomeType_INSERT] 
AS

INSERT INTO dwh.dimOutcomeType
SELECT outcome_key, outcome FROM landingdb.dbo.dimOutcomeTypes


