
CREATE PROCEDURE [dbo].[factPlayerShotType_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factPlayerShotType;

		INSERT INTO dwh.factPlayerShotType
		(
		 [player_id]
		,[shot_type_key]
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
		,[shot_type_key]
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
	FROM [dbo].[vwFactPlayerShotType]
	COMMIT TRANSACTION;

END
