
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [bundesliga].[dimTeams_INSERT]
AS
BEGIN
	SET NOCOUNT ON;

   INSERT INTO bundesliga.dimTeams
   SELECT 
	team_id, 
	team_name
	FROM
	landingdb.bundesliga.dimTeams
END
