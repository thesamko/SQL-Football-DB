CREATE TABLE [rfpl].[factTeamShotType] (
    [team_id]       INT             NOT NULL,
    [outcome_key]   INT             NULL,
    [shots_for]     INT             NULL,
    [xG_for]        DECIMAL (16, 2) NULL,
    [shots_against] INT             NULL,
    [xG_against]    DECIMAL (16, 2) NULL,
    [SEASON]        SMALLINT        NULL
);

