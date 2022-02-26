﻿CREATE TABLE [bundesliga].[factTeamGamePlay] (
    [team_id]       INT             NOT NULL,
    [game_play_key] INT             NULL,
    [shots_for]     INT             NULL,
    [goals_for]     INT             NULL,
    [xG_for]        DECIMAL (16, 2) NULL,
    [shots_against] INT             NULL,
    [goals_against] INT             NULL,
    [xG_against]    DECIMAL (16, 2) NULL,
    [SEASON]        SMALLINT        NULL
);

