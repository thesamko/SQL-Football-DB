CREATE TABLE [dwh].[dimActionType] (
    [action_key] SMALLINT     NOT NULL,
    [action]     VARCHAR (30) NOT NULL,
    UNIQUE NONCLUSTERED ([action] ASC)
);

