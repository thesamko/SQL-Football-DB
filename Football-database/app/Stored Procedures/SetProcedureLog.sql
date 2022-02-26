CREATE PROCEDURE app.SetProcedureLog @RunType varchar(10), @SprocName varchar(50)
AS
DECLARE @RunID as int = (SELECT MAX(RunID) FROM app.Telemetry);
DECLARE @StartTime as datetime = GETUTCDATE();

INSERT app.RunLog (RunID, RunType, ProcedureName ,StartTime)
VALUES (@RunID, @RunType, @SprocName, @StartTime)
