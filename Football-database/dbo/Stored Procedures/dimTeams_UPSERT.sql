CREATE PROCEDURE [dbo].[dimTeams_UPSERT]
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
		MERGE dwh.dimTeams AS T
		USING
		(
			SELECT 
				B.team_id,
				B.team_name,
				B.HB
			FROM dbo.dimTeams_BATCH B
		) AS S ON (T.team_id = S.team_id)
		WHEN MATCHED AND (T.HB <> S.HB) THEN
			UPDATE SET 
					   T.team_name = S.team_name,
					   T.LastUpdated =  GETUTCDATE()

		WHEN NOT MATCHED THEN
			INSERT (team_id, team_name)
			VALUES (S.team_id, S.team_name);
	COMMIT TRANSACTION;

END

