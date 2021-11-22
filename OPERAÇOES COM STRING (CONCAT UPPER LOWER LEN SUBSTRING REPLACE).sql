-- SQL AULA 21 OPERAÇOES COM STRING (CONCAT UPPER LOWER LEN SUBSTRING REPLACE)

SELECT *
FROM Person.Person;

SELECT CONCAT(FirstName,' ',LastName) 
FROM Person.Person;

SELECT UPPER(FirstName) AS "Nome" 
FROM Person.Person;

SELECT LOWER(LastName) AS "Sobrenome"
FROM Person.Person

SELECT FirstName, LEN(FirstName) AS "Qnt. Caracteres"
FROM Person.Person;

SELECT LastName, SUBSTRING(LastName, 1,3)
FROM Person.Person; 

SELECT ProductNumber, REPLACE(ProductNumber,'-','')
FROM Production.Product;
