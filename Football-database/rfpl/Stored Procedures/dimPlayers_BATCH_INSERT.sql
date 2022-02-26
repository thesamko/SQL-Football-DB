CREATE PROCEDURE [rfpl].[dimPlayers_BATCH_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO [dbo].[dimPlayers_BATCH]
   SELECT 
	player_id, 
	player_name
	FROM
	[dev_football_db].[rfpl].[dimPlayers]
END
