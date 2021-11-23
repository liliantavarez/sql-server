-- SQL AULA 23 SUBQUERY (SUBSELECT)

-- Monte um relatorio para de todos os produtos cadastrados que tem preço de venda acima da media

SELECT * FROM Production.Product;

SELECT * 
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

-- Nome dos funcionarios que tem o cargo de 'Design Engineer'
--USANDO SUBQUERY
SELECT FirstName 
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer')

--Usando INNER JOIN
SELECT PP.FirstName 
FROM Person.Person PP
INNER JOIN HumanResources.Employee HR 
ON PP.BusinessEntityID = HR.BusinessEntityID
AND HR.JobTitle = 'Design Engineer';

-- Encontre todos os endereços que estão no estado de 'Alberta'


--USANDO SUBQUERY
SELECT * 
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM Person.StateProvince
WHERE Name = 'Alberta');

--Usando INNER JOIN
SELECT PA.* 
FROM Person.Address PA
INNER JOIN Person.StateProvince PS
ON PA.StateProvinceID = PS.StateProvinceID
AND PS.Name = 'Alberta';

