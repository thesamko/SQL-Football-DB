
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE rfpl.[dimTeams_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO rfpl.dimTeams
   SELECT 
	team_id, 
	team_name
	FROM
	landingdb.rfpl.dimTeams
END
