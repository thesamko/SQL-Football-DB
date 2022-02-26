

CREATE PROCEDURE app.CloseProcedureLog @RunType varchar(10), @SprocName varchar(50)
AS
DECLARE @RunID as int = (SELECT MAX(RunID) FROM app.Telemetry);
DECLARE @EndTime as datetime = GETUTCDATE();
UPDATE app.RunLog
SET EndTime = @EndTime 
WHERE RunID = @RunID AND RunType = @RunType AND ProcedureName = @SprocName