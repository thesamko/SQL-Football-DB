﻿CREATE PROCEDURE bundesliga.factTeamTiming_INSERT AS BEGIN INSERT INTO  bundesliga.factTeamTiming SELECT team_id, timing, shots_for, goals_for, xG_for, shots_against, goals_against, xG_against, SEASON FROM [landingdb].bundesliga.factTeamTiming END