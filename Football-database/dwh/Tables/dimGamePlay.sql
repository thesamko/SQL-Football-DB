CREATE TABLE [dwh].[dimGamePlay] (
    [game_play_key] INT          NOT NULL,
    [game_play]     VARCHAR (20) NOT NULL,
    UNIQUE NONCLUSTERED ([game_play] ASC),
    UNIQUE NONCLUSTERED ([game_play_key] ASC)
);

