CREATE PROCEDURE [rfpl].[dimMatches_BATCH_INSERT]
AS
BEGIN
	INSERT INTO dbo.dimMatches_BATCH
	SELECT [match_id]
      ,[home_team]
      ,[away_team]
      ,[game_finished]
      ,[home_team_goals]
      ,[away_team_goals]
      ,[home_team_xG]
      ,[away_team_xG]
      ,[match_date_time]
      ,[forecast_win]
      ,[forecast_draw]
      ,[forecast_lose]
	  ,'RFPL'
      ,[SEASON]
  FROM [landingdb].[rfpl].[dimMatches]
END
