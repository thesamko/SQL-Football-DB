CREATE TABLE [dwh].[dimOutcomeType] (
    [outcome_key]  SMALLINT     NOT NULL,
    [outcome_type] VARCHAR (20) NOT NULL,
    UNIQUE NONCLUSTERED ([outcome_type] ASC)
);

