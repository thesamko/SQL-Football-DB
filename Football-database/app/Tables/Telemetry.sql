CREATE TABLE [app].[Telemetry] (
    [RunID]     INT          IDENTITY (1, 1) NOT NULL,
    [RunType]   VARCHAR (20) NULL,
    [StartTime] DATETIME     NULL,
    [EndTime]   DATETIME     NULL
);

