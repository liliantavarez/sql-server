--AULA 32 DROP/TRUNCATE TABLE

/*
SINTAXE
DROP TABLE nomeDaTabela
Se é possivel "DROPAR" tabelas que NÂO são referenciadas
*/

DROP TABLE Youtube2;


/*
APAGAR OS DADOS DE UM TABELA
TRUNCATE TABLE nomeDaTabela
*/

USE [Aulas]

SELECT * FROM aulaAlterTable

INSERT INTO aulaAlterTable (idaula,nome,duracao)
VALUES ('1','Aula 01','67'),
('2','Aula 02','99')

TRUNCATE TABLE aulaAlterTable