CREATE PROCEDURE [dbo].[factTeamGamePlay_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factTeamGamePlay;

		INSERT INTO dwh.factTeamGamePlay
		(
		[team_id]
		,[game_play_key]
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
		,[game_play_key]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[league]
		,[SEASON]
	FROM [dbo].[vwFactTeamGamePlay]
	COMMIT TRANSACTION;

END
