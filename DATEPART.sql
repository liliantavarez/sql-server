SELECT * FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS "Mes"
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS "Mes"
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS "Mes"
FROM Sales.SalesOrderHeader;

SELECT AVG(TotalDue) AS "Media", DATEPART(MONTH,OrderDate) AS Mes 
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH,OrderDate) 
ORDER BY Mes;

SELECT AVG(TotalDue) AS "Media", DATEPART(YEAR,OrderDate) AS Year 
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR,OrderDate) 
ORDER BY Year;
