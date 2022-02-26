
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE epl.[dimTeams_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO epl.dimTeams
   SELECT 
	team_id, 
	team_name
	FROM
	landingdb.epl.dimTeams
END
