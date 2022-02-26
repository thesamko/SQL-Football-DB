


CREATE VIEW [dbo].[vwFactPlayerGamePlay] AS (
SELECT [player_id]
      ,[game_play_key]
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
  FROM [bundesliga].[factPlayerGamePlay]

  UNION ALL

SELECT [player_id]
      ,[game_play_key]
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
  FROM [epl].[factPlayerGamePlay]


  UNION ALL

  SELECT [player_id]
      ,[game_play_key]
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
  FROM [laliga].[factPlayerGamePlay]


  UNION ALL

  SELECT [player_id]
      ,[game_play_key]
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
  FROM [ligue1].[factPlayerGamePlay]
      
  UNION ALL

    SELECT [player_id]
      ,[game_play_key]
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
  FROM [rfpl].[factPlayerGamePlay]

  UNION ALL

    SELECT [player_id]
      ,[game_play_key]
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
  FROM [seriea].[factPlayerGamePlay]
  )
