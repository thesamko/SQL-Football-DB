
CREATE PROCEDURE [dbo].[factMatchLineups_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factMatchLineups;

		INSERT INTO dwh.factMatchLineups
		(
		 [match_id]
		,[team_id]
		,[player_id]
		,[goals]
		,[own_goals]
		,[shots]
		,[xG]
		,[minutes_played]
		,[position]
		,[yellow_card]
		,[red_card]
		,[sub_in]
		,[sub_out]
		,[key_passes]
		,[assists]
		,[xA]
		,[xGChain]
		,[xG_buildup]
		,[h_a]
		,[roster_id]
		,[league]
        )
		SELECT 
		[match_id]
		,[team_id]
		,[player_id]
		,[goals]
		,[own_goals]
		,[shots]
		,[xG]
		,[minutes_played]
		,[position]
		,[yellow_card]
		,[red_card]
		,[sub_in]
		,[sub_out]
		,[key_passes]
		,[assists]
		,[xA]
		,[xGChain]
		,[xG_buildup]
		,[h_a]
		,[roster_id]
		,[league]
		 FROM [dbo].[vwFactMatchLineups]
	COMMIT TRANSACTION;

END
