-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE bundesliga.dimPlayers_INSERT
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO bundesliga.dimPlayers
   SELECT 
	player_id, 
	player_name
	FROM
	landingdb.bundesliga.DimPlayers
END
