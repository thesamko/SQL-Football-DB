CREATE PROCEDURE [dbo].[dimPlayers_UPSERT]
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
		MERGE dwh.dimPlayers AS T
		USING
		(
			SELECT 
				B.player_id,
				B.player_name,
				B.HB
			FROM dbo.dimPlayers_BATCH B
		) AS S ON (T.player_id = S.player_id)
		WHEN MATCHED AND (T.HB <> S.HB) THEN
			UPDATE SET 
					   T.player_name = S.player_name,
					   T.LastUpdated =  GETUTCDATE()

		WHEN NOT MATCHED THEN
			INSERT (player_id, player_name)
			VALUES (S.player_id, S.player_name);
	COMMIT TRANSACTION;

END

