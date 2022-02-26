 CREATE PROCEDURE [dbo].[factTeamShotType_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factTeamShotType;

		INSERT INTO dwh.factTeamShotType
		(
		[team_id]
		,[outcome_key]
		,[shots_for]
		,[xG_for]
		,[shots_against]
		,[xG_against]
		,[SEASON]
	   )
		SELECT 
		[team_id]
		,[outcome_key]
		,[shots_for]
		,[xG_for]
		,[shots_against]
		,[xG_against]
		,[SEASON]
	FROM [dbo].[vwFactTeamShotType]
	COMMIT TRANSACTION;

END
