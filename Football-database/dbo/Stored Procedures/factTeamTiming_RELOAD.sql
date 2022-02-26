CREATE PROCEDURE [dbo].[factTeamTiming_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factTeamTiming;

		INSERT INTO dwh.factTeamTiming
		(
		[team_id]
		,[timing]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[league]
		,[SEASON]
	   )
		SELECT 
		[team_id]
		,[timing]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[league]
		,[SEASON]
	FROM [dbo].[vwFactTeamTiming]
	COMMIT TRANSACTION;

END
