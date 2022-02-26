CREATE  PROCEDURE [app].[OpenTelemetry] @RunType varchar(10) 
AS

DECLARE @StartTime as datetime = GETUTCDATE();
INSERT app.Telemetry (RunType,StartTime)
VALUES (@RunType, @StartTime)
