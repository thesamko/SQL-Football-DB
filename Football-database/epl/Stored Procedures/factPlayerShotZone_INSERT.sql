CREATE PROCEDURE epl.factPlayerShotZone_INSERT AS

INSERT INTO epl.factPlayerShotZone
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
  FROM [landingdb].[epl].[factPlayerShotZone]
