-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE bundesliga.dimMatches_INSERT
AS
BEGIN
	INSERT INTO bundesliga.dimMatches
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
      ,[SEASON]
  FROM [landingdb].[bundesliga].[dimMatches]
END
