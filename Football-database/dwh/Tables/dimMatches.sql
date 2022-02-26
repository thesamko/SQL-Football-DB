CREATE TABLE [dwh].[dimMatches] (
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
    [league]          VARCHAR (25)    NULL,
    [SEASON]          SMALLINT        NULL,
    [HB]              AS              (CONVERT([varbinary](32),hashbytes('SHA2_256',((((((((((((CONVERT([varchar](10),[match_id])+CONVERT([varchar],[home_team]))+CONVERT([varchar],[away_team]))+CONVERT([varchar],[game_finished]))+CONVERT([varchar],[home_team_goals]))+CONVERT([varchar],[away_team_goals]))+CONVERT([varchar],[home_team_xG]))+CONVERT([varchar],[away_team_xG]))+CONVERT([varchar],[match_date_time]))+CONVERT([varchar],[forecast_win]))+CONVERT([varchar],[forecast_draw]))+CONVERT([varchar],[forecast_lose]))+[league])+CONVERT([varchar],[season])))),
    [LastUpdated]     DATETIME        CONSTRAINT [DF_Matches_LastUpdated] DEFAULT (getutcdate()) NULL
);

