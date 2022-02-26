-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE laliga.dimPlayers_INSERT
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO laliga.dimPlayers
   SELECT 
	player_id, 
	player_name
	FROM
	landingdb.laliga.DimPlayers
END
