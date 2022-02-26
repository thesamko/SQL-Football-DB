CREATE TABLE [rfpl].[dimMatches] (
    [match_id]        INT             NOT NULL,
    [home_team]       SMALLINT        NULL,
    [away_team]       SMALLINT        NULL,
    [game_finished]   BIT             NOT NULL,
    [home_team_goals] TINYINT         NULL,
    [away_team_goals] TINYINT         NULL,
    [home_team_xG]    DECIMAL (16, 2) NULL,
    [away_team_xG]    DECIMAL (16, 2) NULL,
    [match_date_time] DATETIME        NULL,
    [forecast_win]    DECIMAL (4, 3)  NULL,
    [forecast_draw]   DECIMAL (4, 3)  NULL,
    [forecast_lose]   DECIMAL (4, 3)  NULL,
    [SEASON]          SMALLINT        NULL
);

