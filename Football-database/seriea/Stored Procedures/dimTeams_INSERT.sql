
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE seriea.[dimTeams_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO seriea.dimTeams
   SELECT 
	team_id, 
	team_name
	FROM
	landingdb.seriea.dimTeams
END
