﻿CREATE PROCEDURE laliga.factPlayerSeasonStats_INSERT AS BEGIN INSERT INTO  laliga.factPlayerSeasonStats SELECT player_id, games_played, minutes_played, goals_scored, xG, assists, xA, shots, key_passes, yellow_cards, red_cards, team_id, non_penalty_goals, npxG, xG_chain, xG_buildup, SEASON FROM [landingdb].laliga.factPlayerSeasonStats END