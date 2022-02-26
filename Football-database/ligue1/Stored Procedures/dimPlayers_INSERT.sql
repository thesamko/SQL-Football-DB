-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ligue1.dimPlayers_INSERT
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO ligue1.dimPlayers
   SELECT 
	player_id, 
	player_name
	FROM
	landingdb.ligue1.DimPlayers
END
