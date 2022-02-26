
CREATE VIEW [dbo].[vwFactPlayerShotType] AS
(
	SELECT  [player_id]
	      ,[shot_type_key]
	      ,[goals_scored]
	      ,[shots]
	      ,[xG]
	      ,[assists]
	      ,[key_passes]
	      ,[xA]
	      ,[non_penalty_goals]
	      ,[npxG]
		  ,'Bundesliga' [league]
	      ,[SEASON]
	  FROM [bundesliga].[factPlayerShotType]

	UNION ALL

		SELECT  [player_id]
      ,[shot_type_key]
      ,[goals_scored]
      ,[shots]
      ,[xG]
      ,[assists]
      ,[key_passes]
      ,[xA]
      ,[non_penalty_goals]
      ,[npxG]
	  ,'EPL' [league]
      ,[SEASON]
	FROM [epl].[factPlayerShotType]

    UNION ALL

	SELECT  [player_id]
      ,[shot_type_key]
      ,[goals_scored]
      ,[shots]
      ,[xG]
      ,[assists]
      ,[key_passes]
      ,[xA]
      ,[non_penalty_goals]
      ,[npxG]
	  ,'LaLiga' [league]
      ,[SEASON]
  FROM [laliga].[factPlayerShotType]

    UNION ALL

  SELECT  [player_id]
      ,[shot_type_key]
      ,[goals_scored]
      ,[shots]
      ,[xG]
      ,[assists]
      ,[key_passes]
      ,[xA]
      ,[non_penalty_goals]
      ,[npxG]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factPlayerShotType]

    UNION ALL

  SELECT  [player_id]
      ,[shot_type_key]
      ,[goals_scored]
      ,[shots]
      ,[xG]
      ,[assists]
      ,[key_passes]
      ,[xA]
      ,[non_penalty_goals]
      ,[npxG]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factPlayerShotType]

    UNION ALL

  SELECT  [player_id]
      ,[shot_type_key]
      ,[goals_scored]
      ,[shots]
      ,[xG]
      ,[assists]
      ,[key_passes]
      ,[xA]
      ,[non_penalty_goals]
      ,[npxG]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factPlayerShotType]
  )
