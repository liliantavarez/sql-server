-- SQL AULA 22 OPERAÇOES MATEMATICAS

SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail;

SELECT UnitPrice - LineTotal
FROM Sales.SalesOrderDetail;

SELECT UnitPrice * LineTotal
FROM Sales.SalesOrderDetail;

SELECT UnitPrice / LineTotal
FROM Sales.SalesOrderDetail;

SELECT SUM(UnitPrice) AS "Soma"
FROM Sales.SalesOrderDetail;

SELECT MIN(LineTotal) AS "ValorMinimo"
FROM Sales.SalesOrderDetail;

SELECT MAX(UnitPrice) "ValorMaximo"
FROM Sales.SalesOrderDetail;

SELECT AVG(LineTotal) AS "Media"
FROM Sales.SalesOrderDetail;

SELECT LineTotal, ROUND(LineTotal,2) AS "ValorArredondado"
FROM Sales.SalesOrderDetail;

SELECT UnitPrice, SQRT(UnitPrice) AS "RaizQuadrada", ROUND(SQRT(UnitPrice),2) AS "ValorArredondado" 
FROM Sales.SalesOrderDetail;
