﻿CREATE PROCEDURE laliga.factPlayerGamePlay_INSERT AS BEGIN INSERT INTO  laliga.factPlayerGamePlay SELECT player_id, game_play_key, goals_scored, shots, xG, assists, key_passes, xA, non_penalty_goals, npxG, SEASON FROM [landingdb].laliga.factPlayerGamePlay END