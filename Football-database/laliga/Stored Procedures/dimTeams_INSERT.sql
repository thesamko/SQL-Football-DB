
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE laliga.[dimTeams_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO laliga.dimTeams
   SELECT 
	team_id, 
	team_name
	FROM
	landingdb.laliga.dimTeams
END
