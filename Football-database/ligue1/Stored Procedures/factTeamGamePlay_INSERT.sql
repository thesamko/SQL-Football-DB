﻿CREATE PROCEDURE ligue1.factTeamGamePlay_INSERT AS BEGIN INSERT INTO  ligue1.factTeamGamePlay SELECT team_id, game_play_key, shots_for, goals_for, xG_for, shots_against, goals_against, xG_against, SEASON FROM [landingdb].ligue1.factTeamGamePlay END