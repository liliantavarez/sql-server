--AULA 31 ALTER TABLE

CREATE DATABASE Aulas


CREATE table YouTube(
id INT PRIMARY KEY,
nome VARCHAR(150) NOT NULL UNIQUE,
categoria VARCHAR (200) NOT NULL,
dataCriancao DATETIME DEFAULT GETDATE()
);

SELECT * FROM YouTube;

ALTER TABLE YouTube
ADD ativo bit;

ALTER TABLE YouTube
ALTER COLUMN categoria VARCHAR (500) NOT NULL

/*
RENOMEAR COLUNA
EXEC sp_RENAME 'nomeTabela.nomeColunaAtual','nomeColunaNova','COLUMN'
*/

EXEC sp_RENAME 'Youtube.nome','nomeCanal', 'COLUMN'

/*
RENOMEAR TABELA
EXEC sp_RENAME 'nomeTabela','novoNomeTabela'
*/

EXEC sp_RENAME 'YouTube','Youtube2'

SELECT * FROM Youtube2;

CREATE TABLE aula31(
id FLOAT,
nome VARCHAR(20),
data DATE DEFAULT GETDATE()
);

ALTER TABLE aula31
ALTER COLUMN id INT NOT NULL

ALTER TABLE aula31
ADD duracao INT NOT NULL

SELECT * FROM aula31

EXEC sp_RENAME 'aula31.id','idaula', 'COLUMN'

EXEC sp_RENAME 'aula31','aulaAlterTable'

SELECT * FROM aulaAlterTable;