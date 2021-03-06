CREATE PROCEDURE [dbo].[factPlayerSeasonStats_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factPlayerSeasonStats;

		INSERT INTO dwh.factPlayerSeasonStats
		(
		 [player_id]
		,[games_played]
		,[minutes_played]
		,[goals_scored]
		,[xG]
		,[assists]
		,[xA]
		,[shots]
		,[key_passes]
		,[yellow_cards]
		,[red_cards]
		,[team_id]
		,[non_penalty_goals]
		,[npxG]
		,[xG_chain]
		,[xG_buildup]
		,[league]
		,[SEASON]
		
	   )
		SELECT 
		[player_id]
		,[games_played]
		,[minutes_played]
		,[goals_scored]
		,[xG]
		,[assists]
		,[xA]
		,[shots]
		,[key_passes]
		,[yellow_cards]
		,[red_cards]
		,[team_id]
		,[non_penalty_goals]
		,[npxG]
		,[xG_chain]
		,[xG_buildup]
		,[league]
		,[SEASON]
	FROM [dbo].[vwFactPlayerSeasonStats]
	COMMIT TRANSACTION;

END
