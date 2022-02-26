CREATE TABLE [dwh].[factPlayerShots] (
    [player_id]     INT             NOT NULL,
    [minute]        TINYINT         NULL,
    [game_play_key] INT             NULL,
    [shot_type_key] INT             NULL,
    [outcome_key]   INT             NULL,
    [x_cord]        DECIMAL (16, 3) NULL,
    [y_cord]        DECIMAL (16, 3) NULL,
    [xG]            DECIMAL (16, 2) NULL,
    [assisted_by]   NVARCHAR (40)   NULL,
    [action_key]    INT             NULL,
    [match_id]      INT             NULL,
    [home_away]     VARCHAR (3)     NULL,
    [event_id]      INT             NOT NULL,
    [league]        VARCHAR (15)    NULL,
    [year]          SMALLINT        NULL,
    [LastUpdated]   DATETIME        DEFAULT (getutcdate()) NULL
);

