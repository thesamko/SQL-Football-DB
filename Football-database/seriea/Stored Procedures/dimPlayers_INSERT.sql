-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE seriea.dimPlayers_INSERT
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO seriea.dimPlayers
   SELECT 
	player_id, 
	player_name
	FROM
	landingdb.seriea.DimPlayers
END
