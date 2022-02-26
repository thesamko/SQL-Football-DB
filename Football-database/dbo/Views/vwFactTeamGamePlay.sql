
CREATE VIEW [dbo].[vwFactTeamGamePlay] AS
(

SELECT [team_id]
      ,[game_play_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Bundesliga' [league]
      ,[SEASON]
  FROM [bundesliga].[factTeamGamePlay]

  UNION ALL

SELECT [team_id]
      ,[game_play_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'EPL' [league]
      ,[SEASON]
  FROM [epl].[factTeamGamePlay]

  UNION ALL

SELECT [team_id]
      ,[game_play_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'LaLiga' [league]
      ,[SEASON]
  FROM [laliga].[factTeamGamePlay]

  UNION ALL

SELECT [team_id]
      ,[game_play_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factTeamGamePlay]

  UNION ALL

SELECT [team_id]
      ,[game_play_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factTeamGamePlay]

  UNION ALL

SELECT [team_id]
      ,[game_play_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factTeamGamePlay]
  )
