
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[vwFactTeamShotZone] AS (
SELECT [team_id]
      ,[shot_zone_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
      ,[SEASON]
  FROM [bundesliga].[factTeamShotZone]

  UNION ALL

  SELECT [team_id]
      ,[shot_zone_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
      ,[SEASON]
  FROM [epl].[factTeamShotZone]

  UNION ALL

  SELECT [team_id]
      ,[shot_zone_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
      ,[SEASON]
  FROM [laliga].[factTeamShotZone]

  UNION ALL

  SELECT [team_id]
      ,[shot_zone_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
      ,[SEASON]
  FROM [ligue1].[factTeamShotZone]

  UNION ALL

  SELECT [team_id]
      ,[shot_zone_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
      ,[SEASON]
  FROM [rfpl].[factTeamShotZone]

  UNION ALL

  SELECT [team_id]
      ,[shot_zone_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
      ,[SEASON]
  FROM [seriea].[factTeamShotZone]
  )
