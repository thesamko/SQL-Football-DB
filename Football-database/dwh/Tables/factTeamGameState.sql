CREATE TABLE [dwh].[factTeamGameState] (
    [team_id]        INT             NOT NULL,
    [game_state]     VARCHAR (50)    NULL,
    [minutes_played] INT             NULL,
    [shots_for]      INT             NULL,
    [goals_for]      INT             NULL,
    [xG_for]         DECIMAL (16, 2) NULL,
    [shots_against]  INT             NULL,
    [goals_against]  INT             NULL,
    [xG_against]     DECIMAL (16, 2) NULL,
    [league]         VARCHAR (15)    NULL,
    [SEASON]         SMALLINT        NULL,
    [LastUpdated]    DATETIME        DEFAULT (getutcdate()) NULL
);

