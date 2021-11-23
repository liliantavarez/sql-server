-- SQL AULA 28 - INSERT INTO	

USE YoutubeLite;

SELECT * FROM Canal;

INSERT INTO Canal(Nome)
VALUES ('Meu Primeiro Canal')

INSERT INTO Canal(Nome)
VALUES ('Canal Novo'),
('Canal Secundario'),
('Outro Canal')

SELECT * FROM Video;

INSERT INTO Video (CanalId,Nome,Duracao)
VALUES ('2','Video Teste','3321')
INSERT INTO Video (CanalId,Nome,Duracao)
VALUES ('3','Video Teste','3321')

INSERT INTO Video (CanalId,Nome,Duracao)
VALUES ('2','Video Canal 2','1111')

INSERT INTO Video (CanalId,Nome,Duracao)
VALUES ('2','Video 2 Canal 2','1111'),
('2','Video 3 Canal 2','1111')

INSERT INTO Video (CanalId,Nome,Duracao)
VALUES ('3','Video 1 Canal 3','123'),
('3','Video 2 Canal 3','456'),
('3','Video 3 Canal 3','789')

INSERT INTO Video (CanalId,Nome,Duracao)
VALUES ('4','Video 1 Canal 4','123'),
('4','Video 2 Canal 4','456'),
('4','Video 3 Canal 4','789')

SELECT Canal.CanalId, Canal.Nome, Video.Nome FROM Canal 
INNER JOIN Video ON Canal.CanalId = Video.CanalId;
