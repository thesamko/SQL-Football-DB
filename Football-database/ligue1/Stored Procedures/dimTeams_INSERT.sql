
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ligue1.[dimTeams_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO ligue1.dimTeams
   SELECT 
	team_id, 
	team_name
	FROM
	landingdb.ligue1.dimTeams
END
