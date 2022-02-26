CREATE TABLE [ligue1].[factTeamTiming] (
    [team_id]       INT             NOT NULL,
    [timing]        VARCHAR (50)    NULL,
    [shots_for]     INT             NULL,
    [goals_for]     INT             NULL,
    [xG_for]        DECIMAL (16, 2) NULL,
    [shots_against] INT             NULL,
    [goals_against] INT             NULL,
    [xG_against]    DECIMAL (16, 2) NULL,
    [SEASON]        SMALLINT        NULL
);

