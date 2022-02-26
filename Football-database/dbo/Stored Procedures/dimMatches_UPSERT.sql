CREATE PROCEDURE dbo.dimMatches_UPSERT
	AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
		MERGE dwh.dimMatches AS T
			USING 
				(
					SELECT
						 B.[match_id]
						,B.[home_team]
						,B.[away_team]
						,B.[game_finished]
						,B.[home_team_goals]
						,B.[away_team_goals]
						,B.[home_team_xG]
						,B.[away_team_xG]
						,B.[match_date_time]
						,B.[forecast_win]
						,B.[forecast_draw]
						,B.[forecast_lose]
						,B.[league]
						,B.[SEASON]
						,B.[HB]
					FROM dbo.dimMatches_BATCH B
				) AS S ON (T.match_id = S.match_id)
			WHEN MATCHED AND (S.HB <> T.HB) THEN
				UPDATE SET T.[home_team] = S.[home_team],
	  					   T.[away_team] = S.[away_team],
						   T.[game_finished] = S.[game_finished],
						   T.[home_team_goals] = S.[home_team_goals],
						   T.[away_team_goals] = S.[away_team_goals],
						   T.[home_team_xG]	= S.[home_team_xG],
						   T.[away_team_xG]	= S.[away_team_xG],
						   T.[match_date_time] = S.[match_date_time],
						   T.[forecast_win]	= S.[forecast_win],
						   T.[forecast_draw] = S.[forecast_draw],
						   T.[forecast_lose] = S.[forecast_lose],
						   T.[league] =	S.[league],
						   T.[SEASON] =	S.[SEASON],
						   T.[LastUpdated] = GETUTCDATE()
			WHEN NOT MATCHED THEN
				INSERT ([match_id],	[home_team], [away_team], [game_finished], [home_team_goals], [away_team_goals], [home_team_xG],
						[away_team_xG],	[match_date_time], [forecast_win], [forecast_draw], [forecast_lose], [league], [SEASON])
				VALUES (S.[match_id], S.[home_team], S.[away_team], S.[game_finished], S.[home_team_goals], S.[away_team_goals], S.[home_team_xG],
						S.[away_team_xG], S.[match_date_time], S.[forecast_win], S.[forecast_draw], S.[forecast_lose], S.[league], S.[SEASON]);


	COMMIT TRANSACTION;
END
