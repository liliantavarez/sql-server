/* AULA 27 - CREATE TABLE 
Principais tipos de restri�oes que podem ser aplicadas

NOT NULL: N�o permite nulos
UNIQUE: For�a que todos os valores em uma coluna sejam diferentes
PRIMARY KEY: Uma jun��o de NOT NULL e UNIQUE
FOREIGN KEY: Identifica unicamente uma linha em outra tabela
CHECK: For�a uma condi��o especifica em uma coluna
DEFAULT: For�a um valor padr�o quando nenhum valor � passado

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