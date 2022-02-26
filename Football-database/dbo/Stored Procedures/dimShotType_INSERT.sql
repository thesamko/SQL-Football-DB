CREATE PROCEDURE [dbo].[dimShotType_INSERT] 
AS

INSERT INTO dwh.dimShotType
SELECT shot_type_key, shot_type FROM landingdb.dbo.dimShotTypes


