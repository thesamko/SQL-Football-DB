CREATE TABLE [epl].[factMatchLineups] (
    [match_id]       INT             NOT NULL,
    [team_id]        INT             NOT NULL,
    [player_id]      INT             NOT NULL,
    [goals]          TINYINT         NULL,
    [own_goals]      TINYINT         NULL,
    [shots]          TINYINT         NULL,
    [xG]             DECIMAL (16, 3) NULL,
    [minutes_played] TINYINT         NULL,
    [position]       VARCHAR (10)    NULL,
    [yellow_card]    TINYINT         NULL,
    [red_card]       TINYINT         NULL,
    [sub_in]         INT             NULL,
    [sub_out]        INT             NULL,
    [key_passes]     TINYINT         NULL,
    [assists]        TINYINT         NULL,
    [xA]             DECIMAL (16, 3) NULL,
    [xGChain]        DECIMAL (16, 3) NULL,
    [xG_buildup]     DECIMAL (16, 3) NULL,
    [h_a]            VARCHAR (1)     NULL,
    [roster_id]      INT             NOT NULL
);

