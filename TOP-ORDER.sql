--SELECT TOP 10 * FROM Production.Product ORDER BY Name ASC;

--SELECT FirstName FROM Person.Person ORDER BY FirstName ASC, LastName DESC ; 

/*Obeter o ProductID dos 10 produtos mais caros cadastrados no sistema, listando do
mais caro pra o mais barato*/

--SELECT TOP 10 ProductID FROM Production.Product ORDER BY ListPrice DESC;

/*Obter o nome e o numero do produto dos produtos que tem o ProductID entre 1-4*/

--SELECT TOP 4 Name,ProductNumber FROM Production.Product ORDER BY ProductID;
 