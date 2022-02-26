
CREATE PROCEDURE [dbo].[dimShotZone_INSERT] 
AS

INSERT INTO dwh.dimShotZone
SELECT shot_zone_key, shot_zone, shot_zone_friendly FROM landingdb.dbo.dimShotZones


