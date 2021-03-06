
CREATE VIEW [dbo].[vwFactPlayerPosition] AS
(
SELECT [player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'Bundesliga' [league]
      ,[SEASON]
  FROM [bundesliga].[factPlayerPosition]

  UNION ALL

  SELECT [player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'EPL' [league]
      ,[SEASON]
  FROM [epl].[factPlayerPosition]

  UNION ALL

  SELECT [player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'LaLiga' [league]
      ,[SEASON]
  FROM [laliga].[factPlayerPosition]

  UNION ALL

  SELECT [player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factPlayerPosition]

  UNION ALL

  SELECT [player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factPlayerPosition]

  UNION 

  SELECT [player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factPlayerPosition]
  )
