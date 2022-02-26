
CREATE PROCEDURE [dbo].[factPlayerPosition_RELOAD]
	
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

		TRUNCATE TABLE dwh.factPlayerPosition;

		INSERT INTO dwh.factPlayerPosition
		(
		[player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
      ,[league]
      ,[SEASON]
        )
		SELECT 
		[player_id]
      ,[position]
      ,[games_played]
      ,[goals_scored]
      ,[shots]
      ,[time]
      ,[xG]
      ,[assists]
      ,[xA]
      ,[key_passes]
      ,[yellow_cards]
      ,[red_cards]
      ,[non_penalty_goals]
      ,[npxG]
      ,[xG_chain]
      ,[xG_buildup]
      ,[league]
      ,[SEASON]
		FROM [dbo].[vwFactPlayerPosition]
	COMMIT TRANSACTION;

END
