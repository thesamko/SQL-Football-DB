CREATE PROCEDURE [epl].[dimTeams_BATCH_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO [dbo].[dimTeams_BATCH]
   SELECT 
	team_id, 
	team_name
	FROM
	[dev_football_db].[epl].[dimTeams]
END
