
CREATE PROCEDURE [dbo].[factTeamAttackSpeed_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factTeamAttackSpeed;

		INSERT INTO dwh.factTeamAttackSpeed
		(
		[team_id]
		,[attack_speed_key]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[league]
		,[SEASON]
	   )
		SELECT 
		[team_id]
		,[attack_speed_key]
		,[shots_for]
		,[goals_for]
		,[xG_for]
		,[shots_against]
		,[goals_against]
		,[xG_against]
		,[league]
		,[SEASON]
	FROM [dbo].[vwFactTeamAttackSpeed]
	COMMIT TRANSACTION;

END
