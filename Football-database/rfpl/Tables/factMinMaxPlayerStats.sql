CREATE TABLE [rfpl].[factMinMaxPlayerStats] (
    [player_id]      INT              NOT NULL,
    [position_key]   INT              NULL,
    [goals_min]      DECIMAL (16, 10) NULL,
    [goals_max]      DECIMAL (16, 10) NULL,
    [goals_avg]      DECIMAL (16, 10) NULL,
    [xG_min]         DECIMAL (16, 10) NULL,
    [xG_max]         DECIMAL (16, 10) NULL,
    [xG_avg]         DECIMAL (16, 10) NULL,
    [shots_min]      DECIMAL (16, 10) NULL,
    [shots_max]      DECIMAL (16, 10) NULL,
    [shots_avg]      DECIMAL (16, 10) NULL,
    [assists_min]    DECIMAL (16, 10) NULL,
    [assists_max]    DECIMAL (16, 10) NULL,
    [assists_avg]    DECIMAL (16, 10) NULL,
    [xA_min]         DECIMAL (16, 10) NULL,
    [xA_max]         DECIMAL (16, 10) NULL,
    [xA_avg]         DECIMAL (16, 10) NULL,
    [key_passes_min] DECIMAL (16, 10) NULL,
    [key_passes_max] DECIMAL (16, 10) NULL,
    [key_passes_avg] DECIMAL (16, 10) NULL,
    [xGChain_min]    DECIMAL (16, 10) NULL,
    [xGChain_max]    DECIMAL (16, 10) NULL,
    [xGChain_avg]    DECIMAL (16, 10) NULL,
    [xGBuildup_min]  DECIMAL (16, 10) NULL,
    [xGBuildup_max]  DECIMAL (16, 10) NULL,
    [xGBuildup_avg]  DECIMAL (16, 10) NULL
);

