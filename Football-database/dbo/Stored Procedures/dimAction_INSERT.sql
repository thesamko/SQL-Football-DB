





CREATE PROCEDURE [dbo].[dimAction_INSERT] 
AS



INSERT INTO dwh.dimActionType
SELECT [action_key], [action]
FROM [landingdb].[dbo].[dimActionType]
 
 




