

CREATE VIEW [dbo].[vwFactPlayerSeasonStats] AS 
(

SELECT  [player_id]
      ,[games_played]
      ,[minutes_played]
      ,[goals_scored]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[shots]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[team_id]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'Bundesliga' [league]
      ,[SEASON]
  FROM [bundesliga].[factPlayerSeasonStats]

  UNION ALL

SELECT  [player_id]
      ,[games_played]
      ,[minutes_played]
      ,[goals_scored]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[shots]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[team_id]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'EPL' [league]
      ,[SEASON]
  FROM [epl].[factPlayerSeasonStats]

  UNION ALL

SELECT  [player_id]
      ,[games_played]
      ,[minutes_played]
      ,[goals_scored]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[shots]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[team_id]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'LaLiga' [league]
      ,[SEASON] 
  FROM [laliga].[factPlayerSeasonStats]

  UNION ALL

SELECT  [player_id]
      ,[games_played]
      ,[minutes_played]
      ,[goals_scored]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[shots]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[team_id]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factPlayerSeasonStats]

  UNION ALL

SELECT  [player_id]
      ,[games_played]
      ,[minutes_played]
      ,[goals_scored]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[shots]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[team_id]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factPlayerSeasonStats]

  UNION ALL

SELECT  [player_id]
      ,[games_played]
      ,[minutes_played]
      ,[goals_scored]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[shots]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[team_id]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factPlayerSeasonStats]
  )
