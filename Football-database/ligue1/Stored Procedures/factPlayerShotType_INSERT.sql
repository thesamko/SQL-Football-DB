﻿CREATE PROCEDURE ligue1.factPlayerShotType_INSERT AS BEGIN INSERT INTO  ligue1.factPlayerShotType SELECT player_id, shot_type_key, goals_scored, shots, xG, assists, key_passes, xA, non_penalty_goals, npxG, SEASON FROM [landingdb].ligue1.factPlayerShotType END