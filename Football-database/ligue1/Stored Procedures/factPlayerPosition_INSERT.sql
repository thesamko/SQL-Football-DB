﻿CREATE PROCEDURE ligue1.factPlayerPosition_INSERT AS BEGIN INSERT INTO  ligue1.factPlayerPosition SELECT player_id, position, games_played, goals_scored, shots, time, xG, assists, xA, key_passes, yellow_cards, red_cards, non_penalty_goals, npxG, xG_chain, xG_buildup, SEASON FROM [landingdb].ligue1.factPlayerPosition END