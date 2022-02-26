﻿CREATE VIEW [dbo].[vwFactMatchLineups] AS (
SELECT [match_id]
      ,[team_id]
      ,[player_id]
      ,[goals]
      ,[own_goals]
      ,[shots]
      ,[xG]
      ,[minutes_played]
      ,[position]
      ,[yellow_card]
      ,[red_card]
      ,[sub_in]
      ,[sub_out]
      ,[key_passes]
      ,[assists]
      ,[xA]
      ,[xGChain]
      ,[xG_buildup]
      ,[h_a]
      ,[roster_id]
	  ,'Bundesliga' [league]
  FROM [bundesliga].[factMatchLineups]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[player_id]
      ,[goals]
      ,[own_goals]
      ,[shots]
      ,[xG]
      ,[minutes_played]
      ,[position]
      ,[yellow_card]
      ,[red_card]
      ,[sub_in]
      ,[sub_out]
      ,[key_passes]
      ,[assists]
      ,[xA]
      ,[xGChain]
      ,[xG_buildup]
      ,[h_a]
      ,[roster_id]
	  ,'EPL' [league]
  FROM [epl].[factMatchLineups]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[player_id]
      ,[goals]
      ,[own_goals]
      ,[shots]
      ,[xG]
      ,[minutes_played]
      ,[position]
      ,[yellow_card]
      ,[red_card]
      ,[sub_in]
      ,[sub_out]
      ,[key_passes]
      ,[assists]
      ,[xA]
      ,[xGChain]
      ,[xG_buildup]
      ,[h_a]
      ,[roster_id]
	  ,'LaLiga' [league]
  FROM [laliga].[factMatchLineups]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[player_id]
      ,[goals]
      ,[own_goals]
      ,[shots]
      ,[xG]
      ,[minutes_played]
      ,[position]
      ,[yellow_card]
      ,[red_card]
      ,[sub_in]
      ,[sub_out]
      ,[key_passes]
      ,[assists]
      ,[xA]
      ,[xGChain]
      ,[xG_buildup]
      ,[h_a]
      ,[roster_id]
	  ,'Ligue1' [league]
  FROM [ligue1].[factMatchLineups]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[player_id]
      ,[goals]
      ,[own_goals]
      ,[shots]
      ,[xG]
      ,[minutes_played]
      ,[position]
      ,[yellow_card]
      ,[red_card]
      ,[sub_in]
      ,[sub_out]
      ,[key_passes]
      ,[assists]
      ,[xA]
      ,[xGChain]
      ,[xG_buildup]
      ,[h_a]
      ,[roster_id]
	  ,'RFPL' [league]
  FROM [rfpl].[factMatchLineups]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[player_id]
      ,[goals]
      ,[own_goals]
      ,[shots]
      ,[xG]
      ,[minutes_played]
      ,[position]
      ,[yellow_card]
      ,[red_card]
      ,[sub_in]
      ,[sub_out]
      ,[key_passes]
      ,[assists]
      ,[xA]
      ,[xGChain]
      ,[xG_buildup]
      ,[h_a]
      ,[roster_id]
	  ,'SerieA' [league]
  FROM [seriea].[factMatchLineups]
  )