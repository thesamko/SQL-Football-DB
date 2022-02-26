CREATE TABLE [dwh].[factPlayerGamePlay] (
    [player_id]         INT             NOT NULL,
    [game_play_key]     INT             NULL,
    [goals_scored]      SMALLINT        NULL,
    [shots]             SMALLINT        NULL,
    [xG]                DECIMAL (16, 2) NULL,
    [assists]           SMALLINT        NULL,
    [key_passes]        SMALLINT        NULL,
    [xA]                DECIMAL (16, 2) NULL,
    [non_penalty_goals] TINYINT         NULL,
    [npxG]              DECIMAL (16, 2) NULL,
    [league]            VARCHAR (10)    NULL,
    [SEASON]            SMALLINT        NULL,
    [LastUpdated]       DATETIME        DEFAULT (getutcdate()) NULL
);

