﻿CREATE PROCEDURE epl.factMatchLineups_INSERT AS BEGIN INSERT INTO  epl.factMatchLineups SELECT match_id, team_id, player_id, goals, own_goals, shots, xG, minutes_played, position, yellow_card, red_card, sub_in, sub_out, key_passes, assists, xA, xGChain, xG_buildup, h_a, roster_id FROM [landingdb].epl.factMatchLineups END