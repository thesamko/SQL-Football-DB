CREATE PROCEDURE [app].[CloseTelemetry] AS

DECLARE @EndTime as datetime = GETUTCDATE();

UPDATE app.Telemetry
SET EndTime = @EndTime
WHERE RunID = (SELECT MAX(RunID) FROM app.Telemetry)
