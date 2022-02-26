CREATE TABLE [dwh].[dimAttackSpeed] (
    [attack_speed_key] INT          NOT NULL,
    [attack_speed]     VARCHAR (20) NOT NULL,
    UNIQUE NONCLUSTERED ([attack_speed] ASC)
);

