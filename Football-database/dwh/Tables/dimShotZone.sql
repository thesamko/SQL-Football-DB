CREATE TABLE [dwh].[dimShotZone] (
    [shot_zone_key]      SMALLINT     NOT NULL,
    [shot_zone]          VARCHAR (20) NOT NULL,
    [shot_zone_friendly] VARCHAR (20) NULL,
    UNIQUE NONCLUSTERED ([shot_zone] ASC),
    UNIQUE NONCLUSTERED ([shot_zone_key] ASC)
);

