﻿CREATE PROCEDURE ligue1.factMinMaxPlayerStats_INSERT AS BEGIN INSERT INTO  ligue1.factMinMaxPlayerStats SELECT player_id, position_key, goals_min, goals_max, goals_avg, xG_min, xG_max, xG_avg, shots_min, shots_max, shots_avg, assists_min, assists_max, assists_avg, xA_min, xA_max, xA_avg, key_passes_min, key_passes_max, key_passes_avg, xGChain_min, xGChain_max, xGChain_avg, xGBuildup_min, xGBuildup_max, xGBuildup_avg FROM [landingdb].ligue1.factMinMaxPlayerStats END