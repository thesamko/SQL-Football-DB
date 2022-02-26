CREATE TABLE [seriea].[factPlayerSeasonStats] (
    [player_id]         INT             NOT NULL,
    [games_played]      TINYINT         NULL,
    [minutes_played]    INT             NULL,
    [goals_scored]      SMALLINT        NULL,
    [xG]                DECIMAL (16, 2) NULL,
    [assists]           SMALLINT        NULL,
    [xA]                DECIMAL (16, 2) NULL,
    [shots]             SMALLINT        NULL,
    [key_passes]        SMALLINT        NULL,
    [yellow_cards]      TINYINT         NULL,
    [red_cards]         TINYINT         NULL,
    [team_id]           INT             NULL,
    [non_penalty_goals] TINYINT         NULL,
    [npxG]              DECIMAL (16, 2) NULL,
    [xG_chain]          DECIMAL (16, 2) NULL,
    [xG_buildup]        DECIMAL (16, 2) NULL,
    [SEASON]            SMALLINT        NULL
);

