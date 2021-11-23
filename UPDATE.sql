-- SQL AULA 29 - UPDATE	

USE YoutubeLite;

SELECT * FROM Video;

SELECT * FROM Canal;

UPDATE Canal
SET Nome = 'Canal 1'
WHERE CanalId = 1

UPDATE Video
SET Nome = 'Video Canal 4'
WHERE CanalId = 4