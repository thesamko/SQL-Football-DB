CREATE PROCEDURE [dbo].[factTeamGameState_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factTeamGameState;

		INSERT INTO dwh.factTeamGameState
		(
		[team_id]
		,[game_state]
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
		,[game_state]
		,[minutes_played]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[league]
		,[SEASON]
	FROM [dbo].[vwFactTeamGameState]
	COMMIT TRANSACTION;

END
