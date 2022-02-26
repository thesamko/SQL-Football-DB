CREATE PROCEDURE ligue1.factPlayerShotZone_INSERT AS

INSERT INTO ligue1.factPlayerShotZone
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
  FROM [landingdb].[ligue1].[factPlayerShotZone]
