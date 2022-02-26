CREATE PROCEDURE [ligue1].[dimPlayers_BATCH_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO [dbo].[dimPlayers_BATCH]
   SELECT 
	player_id, 
	player_name
	FROM
	[dev_football_db].[ligue1].[dimPlayers]
END
