

CREATE PROCEDURE [dbo].[factTeamShotZone_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factTeamShotZone;

		INSERT INTO dwh.factTeamShotZone
		(
		[team_id]
		,[shot_zone_key]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[SEASON]
	   )
		SELECT 
		[team_id]
		,[shot_zone_key]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[SEASON]
	FROM [dbo].[vwFactTeamShotZone]
	COMMIT TRANSACTION;

END
