-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE epl.dimPlayers_INSERT
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO epl.dimPlayers
   SELECT 
	player_id, 
	player_name
	FROM
	landingdb.epl.DimPlayers
END
