CREATE TABLE [ligue1].[factPlayerPosition] (
    [player_id]         INT             NOT NULL,
    [position]          VARCHAR (10)    NOT NULL,
    [games_played]      TINYINT         NULL,
    [goals_scored]      SMALLINT        NULL,
    [shots]             SMALLINT        NULL,
    [time]              INT             NULL,
    [xG]                DECIMAL (16, 2) NULL,
    [assists]           SMALLINT        NULL,
    [xA]                DECIMAL (16, 2) NULL,
    [key_passes]        SMALLINT        NULL,
    [yellow_cards]      TINYINT         NULL,
    [red_cards]         TINYINT         NULL,
    [non_penalty_goals] TINYINT         NULL,
    [npxG]              DECIMAL (16, 2) NULL,
    [xG_chain]          DECIMAL (16, 2) NULL,
    [xG_buildup]        DECIMAL (16, 2) NULL,
    [SEASON]            SMALLINT        NULL
);

