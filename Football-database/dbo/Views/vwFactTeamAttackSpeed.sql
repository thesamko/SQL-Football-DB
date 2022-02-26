
CREATE VIEW [dbo].[vwFactTeamAttackSpeed] AS
(

SELECT [team_id]
      ,[attack_speed_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Bundesliga' [league]
      ,[SEASON]
  FROM [bundesliga].[factTeamAttackSpeed]

 UNION ALL

SELECT [team_id]
      ,[attack_speed_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'EPL' [league]
      ,[SEASON]
  FROM [epl].[factTeamAttackSpeed]

 UNION ALL
SELECT [team_id]
      ,[attack_speed_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'LaLiga' [league]
      ,[SEASON]
  FROM [laliga].[factTeamAttackSpeed]

  UNION ALL
SELECT [team_id]
      ,[attack_speed_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'Ligue1' [league]
      ,[SEASON]
  FROM [ligue1].[factTeamAttackSpeed]

  UNION ALL
SELECT [team_id]
      ,[attack_speed_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'RFPL' [league]
      ,[SEASON]
  FROM [rfpl].[factTeamAttackSpeed]

  UNION ALL
SELECT [team_id]
      ,[attack_speed_key]
      ,[shots_for]
      ,[goals_for]
      ,[xG_for]
      ,[shots_against]
      ,[goals_against]
      ,[xG_against]
	  ,'SerieA' [league]
      ,[SEASON]
  FROM [seriea].[factTeamAttackSpeed]
  )
