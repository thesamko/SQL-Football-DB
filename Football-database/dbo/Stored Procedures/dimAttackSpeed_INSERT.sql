






CREATE PROCEDURE [dbo].[dimAttackSpeed_INSERT] 
AS



INSERT INTO dwh.dimAttackSpeed
SELECT [attack_speed_key], [attack_speed]
FROM [landingdb].[dbo].[dimAttackSpeed]
 
 




