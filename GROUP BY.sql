/*
GROUP BY: Divide os resultados da sua pesquisa em grupos;
- Para cada grupo voce pode aplicar uma função de agragação:
	- Calcular a soma de intes (SUM)
	- Contar o numero de intes naquele grupo (COUNT)
*/

-- SELECT * FROM Sales.SalesOrderDetail;

-- SELECT SpecialOfferID, COUNT (SpecialOfferID) AS "Quantidade", SUM(UnitPrice) AS "Soma" FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID;

/*Quantos de cada produto foi vendido ate hoje*/

-- SELECT ProductID, COUNT(ProductID) AS "QtdVendas" FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY QtdVendas DESC;

/*Quantos nomes de cada nome temos cadastrados em nosso banco de dados*/

-- SELECT FirstName, COUNT (FirstName) AS "Quantidade" FROM Person.Person GROUP BY FirstName ORDER BY FirstName;

/*Na tabela Production.Product eu quero saber a media de preço para os produtos que são pratas(silver)*/

-- SELECT Color, AVG(ListPrice) AS "Med. Preço" FROM Production.Product WHERE Color = 'Silver' GROUP BY Color;

/*Quantas pessoas tem o mesmo MiddleName? (Agrupadas pelo MiddleName)*/

-- SELECT MiddleName, COUNT(FirstName) AS "Quantidade" FROM Person.Person WHERE MiddleName != 'NULL' GROUP BY MiddleName ORDER BY MiddleName;

/*Em media qual é a quantidade que cada produto é vendido na loja?*/

-- SELECT ProductID, AVG(OrderQty) FROM Sales.SalesOrderDetail GROUP BY ProductID;

/*Quais foram as 10 vendas que no total tiveram os maiores valores de venda (lineTotal) por produto do maior valor para o menor */

-- SELECT TOP 10 ProductID, SUM(LineTotal) AS "Soma" FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY Soma DESC;

/*Quantos produtos e qual a quantiade media de produtos temos cadastrados nas nossas ordem de serviço (WorkOrder), agrupados por productID */

-- SELECT ProductID, COUNT(ProductID) AS "Quantidade", AVG(OrderQty) AS "Media" FROM Production.WorkOrder GROUP BY ProductID;