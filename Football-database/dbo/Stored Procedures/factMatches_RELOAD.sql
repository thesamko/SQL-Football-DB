
CREATE PROCEDURE [dbo].[factMatches_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factMatches;

		INSERT INTO dwh.factMatches
		(
		[match_id]
        ,[team_id]
        ,[home_or_away]
        ,[expected_goals]
        ,[expected_goals_assists]
        ,[not_penalty_xg]
        ,[not_penalty_xg_assists]
        ,[passes_defensive_action_attack]
        ,[passes_defensive_action_defence]
        ,[deep_passes]
        ,[deep_passes_allowed]
        ,[goals_scored]
        ,[goals_conceded]
        ,[expected_points]
        ,[match_outcome]
        ,[date]
        ,[wins]
        ,[draws]
        ,[loses]
        ,[points]
        ,[non_penalty_xg_diff]
        ,[league]
        ,[season]
        )
		SELECT 
		[match_id]
		,[team_id]
		,[home_or_away]
		,[expected_goals]
		,[expected_goals_assists]
		,[not_penalty_xg]
		,[not_penalty_xg_assists]
		,[passes_defensive_action_attack]
		,[passes_defensive_action_defence]
		,[deep_passes]
		,[deep_passes_allowed]
		,[goals_scored]
		,[goals_conceded]
		,[expected_points]
		,[match_outcome]
		,[date]
		,[wins]
		,[draws]
		,[loses]
		,[points]
		,[non_penalty_xg_diff]
		,[league]
		,[season]
		FROM [dbo].[vwFactMatches]
	COMMIT TRANSACTION;

END
