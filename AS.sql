/*
AS: Renomear ou dar um nome especifico para uma coluna/select ou agregação feita 
*/

-- SELECT TOP 10  ListPrice AS "Preço do Produto" FROM Production.Product;

-- SELECT TOP 10 AVG(ListPrice) AS "Preço Medio" FROM Production.Product;

/*Encontrar e Mudar nome das colunas FirstName e LastName na tabela Person.Person */

-- SELECT FirstName AS Nome, LastName AS Sobrenome  FROM Person.Person;

/*Encontrar e Mudar nome da coluna ProductNumber na tabela Production.Product */

-- SELECT ProductNumber AS "Numero do Produto" FROM Production.Product;

/*Encontrar e Mudar nome da coluna unitPrice na tabela Sales.SalesOrderDetail */

-- SELECT UnitPrice AS "Preço Unitario" FROM Sales.SalesOrderDetail;


