
CREATE VIEW [dbo].[vwFactTeamFormation] AS 
(

SELECT [team_id]
      ,[formation]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Bundesliga' [league]
      ,[SEASON]
  FROM [bundesliga].[factTeamFormation]

  
UNION ALL

SELECT [team_id]
      ,[formation]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'EPL' [league]
      ,[SEASON]
  FROM [epl].[factTeamFormation]
  
UNION ALL

SELECT [team_id]
      ,[formation]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'LaLiga' [league]
      ,[SEASON]
  FROM [laliga].[factTeamFormation]
  
UNION ALL

SELECT [team_id]
      ,[formation]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factTeamFormation]
  
UNION ALL

SELECT [team_id]
      ,[formation]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factTeamFormation]
  
UNION ALL

SELECT [team_id]
      ,[formation]
      ,[minutes_played]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factTeamFormation]
  )
