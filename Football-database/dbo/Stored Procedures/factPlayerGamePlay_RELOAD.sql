CREATE PROCEDURE [dbo].[factPlayerGamePlay_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factPlayerGamePlay;

		INSERT INTO dwh.factPlayerGamePlay
		(
		[player_id]
		,[game_play_key]
		,[goals_scored]
		,[shots]
		,[xG]
		,[assists]
		,[key_passes]
		,[xA]
		,[non_penalty_goals]
		,[npxG]
		,[league]
		,[SEASON]
     
        )
		SELECT
		 [player_id]
		,[game_play_key]
		,[goals_scored]
		,[shots]
		,[xG]
		,[assists]
		,[key_passes]
		,[xA]
		,[non_penalty_goals]
		,[npxG]
		,[league]
		,[SEASON]
		FROM [dbo].[vwFactPlayerGamePlay]
	COMMIT TRANSACTION;

END
