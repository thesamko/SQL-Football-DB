CREATE PROCEDURE laliga.factPlayerShotZone_INSERT AS

INSERT INTO laliga.factPlayerShotZone
SELECT [player_id]
      ,[shot_zone_key]
      ,[goals_scored]
      ,[shots]
      ,[xG]
      ,[assists]
      ,[key_passes]
      ,[xA]
      ,[non_penalty_goals]
      ,[npxG]
      ,[SEASON]
  FROM [landingdb].[laliga].[factPlayerShotZone]
