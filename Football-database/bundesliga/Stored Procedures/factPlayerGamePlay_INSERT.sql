﻿CREATE PROCEDURE bundesliga.factPlayerGamePlay_INSERT AS BEGIN INSERT INTO  bundesliga.factPlayerGamePlay SELECT player_id, game_play_key, goals_scored, shots, xG, assists, key_passes, xA, non_penalty_goals, npxG, SEASON FROM [landingdb].bundesliga.factPlayerGamePlay END