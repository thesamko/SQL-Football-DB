CREATE TABLE [dbo].[dimPlayers_BATCH] (
    [player_id]   INT            NOT NULL,
    [player_name] NVARCHAR (255) NOT NULL,
    [HB]          AS             (CONVERT([varbinary](32),hashbytes('SHA2_256',CONVERT([varchar](10),[player_id])+[player_name])))
);

