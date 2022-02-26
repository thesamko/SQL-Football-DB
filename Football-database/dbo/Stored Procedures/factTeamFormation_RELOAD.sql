CREATE PROCEDURE [dbo].[factTeamFormation_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factTeamFormation;

		INSERT INTO dwh.factTeamFormation
		(
		[team_id]
		,[formation]
		,[minutes_played]
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
		,[formation]
		,[minutes_played]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[league]
		,[SEASON]
	FROM [dbo].[vwFactTeamFormation]
	COMMIT TRANSACTION;

END
