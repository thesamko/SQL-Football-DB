
CREATE VIEW [dbo].[vwFactTeamGameState] AS
(

SELECT [team_id]
      ,[game_state]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Bundesliga' [league]
      ,[SEASON]
  FROM [bundesliga].[factTeamGameState]

  UNION ALL

SELECT [team_id]
      ,[game_state]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'EPL' [league]
      ,[SEASON]
  FROM [epl].[factTeamGameState]

  UNION ALL

SELECT [team_id]
      ,[game_state]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'LaLiga' [league]
      ,[SEASON]
  FROM [laliga].[factTeamGameState]

  UNION ALL

SELECT [team_id]
      ,[game_state]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factTeamGameState]

  UNION ALL

SELECT [team_id]
      ,[game_state]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factTeamGameState]

  UNION ALL

SELECT [team_id]
      ,[game_state]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factTeamGameState]
  )
