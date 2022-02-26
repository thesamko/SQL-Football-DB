CREATE PROCEDURE [bundesliga].[dimTeams_BATCH_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO [dbo].[dimTeams_BATCH]
   SELECT 
	team_id, 
	team_name
	FROM
	[dev_football_db].[bundesliga].[dimTeams]
END
