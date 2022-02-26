-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE rfpl.dimPlayers_INSERT
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO rfpl.dimPlayers
   SELECT 
	player_id, 
	player_name
	FROM
	landingdb.rfpl.DimPlayers
END
