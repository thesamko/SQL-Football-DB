
CREATE VIEW [dbo].[vwFactTeamTiming] AS
(

SELECT [team_id]
      ,[timing]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Bundesliga' [league]
      ,[SEASON]
  FROM [bundesliga].[factTeamTiming]

  UNION ALL

SELECT [team_id]
      ,[timing]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'EPL' [league]
      ,[SEASON]
  FROM [epl].[factTeamTiming]

  UNION ALL

SELECT [team_id]
      ,[timing]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'LaLiga' [league]
      ,[SEASON]
  FROM [laliga].[factTeamTiming]

  UNION ALL

SELECT [team_id]
      ,[timing]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factTeamTiming]

  UNION ALL

SELECT [team_id]
      ,[timing]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factTeamTiming]

  UNION ALL

SELECT [team_id]
      ,[timing]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factTeamTiming]
  )
