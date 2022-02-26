


CREATE PROCEDURE [dbo].[dimGamePlay_INSERT] 
AS

INSERT INTO dwh.dimGamePlay
SELECT game_play_key, game_play FROM landingdb.dbo.dimGamePlays


