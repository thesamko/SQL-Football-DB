CREATE TABLE [dwh].[dimTeams] (
    [team_id]     INT            NOT NULL,
    [team_name]   NVARCHAR (255) NOT NULL,
    [HB]          AS             (CONVERT([varbinary](32),hashbytes('SHA2_256',CONVERT([varchar](10),[team_id])+[team_name]))),
    [LastUpdated] DATETIME       CONSTRAINT [DF_Teams_LastUpdated] DEFAULT (getutcdate()) NULL
);

