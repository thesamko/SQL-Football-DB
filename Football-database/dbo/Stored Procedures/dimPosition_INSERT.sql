




CREATE PROCEDURE [dbo].[dimPosition_INSERT] 
AS



INSERT INTO dwh.dimPosition 
SELECT [position_key], [position]
FROM [landingdb].[dbo].[dimPosition]
 
 




