/*
HAVING: Usado em junção com o GROUP BY para filtrar resultados de um agrupamento
*/

/*Estamos querendo identificar as provincias(StateProvinceID) com maior numero de cadastros no nosso sistema, então é preciso encontrar quais provincias estão registradas no banco de dados mais de 1000 vezes */

-- SELECT StateProvinceID, COUNT(StateProvinceID) AS "Quantidade" FROM Person.Address GROUP BY StateProvinceID HAVING COUNT(StateProvinceID) > 1000 ;

/*Sendo que se trata de uma multinacional os gerentes querem saber quais produtos (productID) não estão trazendo em media no minimo 1 milhão em total de vendas (lineTotal)*/

-- SELECT ProductID, AVG(LineTotal) FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING AVG(LineTotal) < 1000000;
