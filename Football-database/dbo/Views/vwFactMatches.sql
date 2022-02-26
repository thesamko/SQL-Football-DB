﻿

CREATE VIEW [dbo].[vwFactMatches] AS (
SELECT [match_id]
      ,[team_id]
      ,[home_or_away]
      ,[expected_goals]
      ,[expected_goals_assists]
      ,[not_penalty_xg]
      ,[not_penalty_xg_assists]
      ,[passes_defensive_action_attack]
      ,[passes_defensive_action_defence]
      ,[deep_passes]
      ,[deep_passes_allowed]
      ,[goals_scored]
      ,[goals_conceded]
      ,[expected_points]
      ,[match_outcome]
      ,[date]
      ,[wins]
      ,[draws]
      ,[loses]
      ,[points]
      ,[non_penalty_xg_diff]
	  ,'Bundesliga' [league]
      ,[season]
  FROM [bundesliga].[factMatches]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[home_or_away]
      ,[expected_goals]
      ,[expected_goals_assists]
      ,[not_penalty_xg]
      ,[not_penalty_xg_assists]
      ,[passes_defensive_action_attack]
      ,[passes_defensive_action_defence]
      ,[deep_passes]
      ,[deep_passes_allowed]
      ,[goals_scored]
      ,[goals_conceded]
      ,[expected_points]
      ,[match_outcome]
      ,[date]
      ,[wins]
      ,[draws]
      ,[loses]
      ,[points]
      ,[non_penalty_xg_diff]
	  ,'EPL' [league]
      ,[season]
  FROM [epl].[factMatches]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[home_or_away]
      ,[expected_goals]
      ,[expected_goals_assists]
      ,[not_penalty_xg]
      ,[not_penalty_xg_assists]
      ,[passes_defensive_action_attack]
      ,[passes_defensive_action_defence]
      ,[deep_passes]
      ,[deep_passes_allowed]
      ,[goals_scored]
      ,[goals_conceded]
      ,[expected_points]
      ,[match_outcome]
      ,[date]
      ,[wins]
      ,[draws]
      ,[loses]
      ,[points]
      ,[non_penalty_xg_diff]
	  ,'LaLiga' [league]
      ,[season]
  FROM [laliga].[factMatches]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[home_or_away]
      ,[expected_goals]
      ,[expected_goals_assists]
      ,[not_penalty_xg]
      ,[not_penalty_xg_assists]
      ,[passes_defensive_action_attack]
      ,[passes_defensive_action_defence]
      ,[deep_passes]
      ,[deep_passes_allowed]
      ,[goals_scored]
      ,[goals_conceded]
      ,[expected_points]
      ,[match_outcome]
      ,[date]
      ,[wins]
      ,[draws]
      ,[loses]
      ,[points]
      ,[non_penalty_xg_diff]
	  ,'Ligue1' [league]
      ,[season]
  FROM [ligue1].[factMatches]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[home_or_away]
      ,[expected_goals]
      ,[expected_goals_assists]
      ,[not_penalty_xg]
      ,[not_penalty_xg_assists]
      ,[passes_defensive_action_attack]
      ,[passes_defensive_action_defence]
      ,[deep_passes]
      ,[deep_passes_allowed]
      ,[goals_scored]
      ,[goals_conceded]
      ,[expected_points]
      ,[match_outcome]
      ,[date]
      ,[wins]
      ,[draws]
      ,[loses]
      ,[points]
      ,[non_penalty_xg_diff]
	  ,'RFPL' [league]
      ,[season]
  FROM [rfpl].[factMatches]

  UNION ALL

  SELECT [match_id]
      ,[team_id]
      ,[home_or_away]
      ,[expected_goals]
      ,[expected_goals_assists]
      ,[not_penalty_xg]
      ,[not_penalty_xg_assists]
      ,[passes_defensive_action_attack]
      ,[passes_defensive_action_defence]
      ,[deep_passes]
      ,[deep_passes_allowed]
      ,[goals_scored]
      ,[goals_conceded]
      ,[expected_points]
      ,[match_outcome]
      ,[date]
      ,[wins]
      ,[draws]
      ,[loses]
      ,[points]
      ,[non_penalty_xg_diff]
	  ,'SerieA' [league]
      ,[season]
  FROM [seriea].[factMatches]
  )
