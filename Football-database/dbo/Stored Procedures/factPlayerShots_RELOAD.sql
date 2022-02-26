CREATE PROCEDURE [dbo].[factPlayerShots_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factPlayerShots;

		INSERT INTO dwh.factPlayerShots
		(
		[player_id]
		,[minute]
		,[game_play_key]
		,[shot_type_key]
		,[outcome_key]
		,[x_cord]
		,[y_cord]
		,[xG]
		,[assisted_by]
		,[action_key]
		,[match_id]
		,[home_away]
		,[event_id]
		,[league]
		,[year]
        )
		SELECT 
		[player_id]
		,[minute]
		,[game_play_key]
		,[shot_type_key]
		,[outcome_key]
		,[x_cord]
		,[y_cord]
		,[xG]
		,[assisted_by]
		,[action_key]
		,[match_id]
		,[home_away]
		,[event_id]
		,[league]
		,[year]
		 FROM [dbo].[vwFactPlayerShots]
	COMMIT TRANSACTION;

END
