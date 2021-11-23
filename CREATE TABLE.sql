/* AULA 27 - CREATE TABLE 
Principais tipos de restriçoes que podem ser aplicadas

NOT NULL: Não permite nulos
UNIQUE: Força que todos os valores em uma coluna sejam diferentes
PRIMARY KEY: Uma junção de NOT NULL e UNIQUE
FOREIGN KEY: Identifica unicamente uma linha em outra tabela
CHECK: Força uma condição especifica em uma coluna
DEFAULT: Força um valor padrão quando nenhum valor é passado

*/

CREATE DATABASE YoutubeLite;
USE YoutubeLite;

CREATE TABLE Canal(
CanalId INT PRIMARY KEY IDENTITY(1,1),
Nome VARCHAR(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME DEFAULT GETDATE()
);

SELECT * FROM Canal;

CREATE TABLE Video (
VideoId INT PRIMARY KEY IDENTITY(1,1),
CanalId INT,
Nome VARCHAR(150) NOT NULL,
Vizualizacoes INT DEFAULT 0,
Likes INT DEFAULT 0,
Dislikes INT DEFAULT 0,
Duracao INT NOT NULL,
FOREIGN KEY (CanalId) REFERENCES Canal (CanalId)
);

SELECT * FROM Video;