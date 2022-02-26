CREATE TABLE [dwh].[dimPlayers] (
    [player_id]   INT            NOT NULL,
    [player_name] NVARCHAR (255) NOT NULL,
    [HB]          AS             (CONVERT([varbinary](32),hashbytes('SHA2_256',CONVERT([varchar](10),[player_id])+[player_name]))),
    [LastUpdated] DATETIME       CONSTRAINT [DF_LastUpdated] DEFAULT (getutcdate()) NULL
);

