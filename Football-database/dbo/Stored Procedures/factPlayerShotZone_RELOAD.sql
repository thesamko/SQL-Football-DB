CREATE PROCEDURE [dbo].[factPlayerShotZone_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factPlayerShotZone;

		INSERT INTO dwh.factPlayerShotZone
		(
		[player_id]
        ,[shot_zone_key]
        ,[goals_scored]
        ,[shots]
        ,[xG]
        ,[assists]
        ,[key_passes]
        ,[xA]
        ,[non_penalty_goals]
        ,[npxG]
        ,[league]
        ,[season]
        )
		SELECT 
		[player_id]
       ,[shot_zone_key]
       ,[goals_scored]
       ,[shots]
       ,[xG]
       ,[assists]
       ,[key_passes]
       ,[xA]
       ,[non_penalty_goals]
       ,[npxG]
       ,[league]
       ,[season]
		FROM [dbo].[vwFactPlayerShotZone]
	COMMIT TRANSACTION;

END
