
CREATE VIEW [dbo].[vwFactTeamShotType] AS 
(
SELECT  [team_id]
      ,[outcome_key]
      ,[shots_for]
      ,[xG_for]
      ,[shots_against]
      ,[xG_against]
      ,[SEASON]
  FROM [bundesliga].[factTeamShotType]

  UNION ALL

  SELECT  [team_id]
      ,[outcome_key]
      ,[shots_for]
      ,[xG_for]
      ,[shots_against]
      ,[xG_against]
      ,[SEASON]
  FROM [epl].[factTeamShotType]

    UNION ALL

  SELECT  [team_id]
      ,[outcome_key]
      ,[shots_for]
      ,[xG_for]
      ,[shots_against]
      ,[xG_against]
      ,[SEASON]
  FROM [laliga].[factTeamShotType]

    UNION ALL

  SELECT  [team_id]
      ,[outcome_key]
      ,[shots_for]
      ,[xG_for]
      ,[shots_against]
      ,[xG_against]
      ,[SEASON]
  FROM [ligue1].[factTeamShotType]

    UNION ALL

  SELECT  [team_id]
      ,[outcome_key]
      ,[shots_for]
      ,[xG_for]
      ,[shots_against]
      ,[xG_against]
      ,[SEASON]
  FROM [rfpl].[factTeamShotType]

    UNION ALL

  SELECT  [team_id]
      ,[outcome_key]
      ,[shots_for]
      ,[xG_for]
      ,[shots_against]
      ,[xG_against]
      ,[SEASON]
  FROM [seriea].[factTeamShotType]
  )
