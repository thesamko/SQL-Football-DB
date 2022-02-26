CREATE TABLE [dwh].[dimShotType] (
    [shot_type_key] SMALLINT     NOT NULL,
    [shot_type]     VARCHAR (20) NOT NULL,
    UNIQUE NONCLUSTERED ([shot_type] ASC),
    UNIQUE NONCLUSTERED ([shot_type_key] ASC)
);

