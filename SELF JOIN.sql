-- AULA 24 - SELF JOIN: Agrupa dados dentro da mesma tabela
/* SINTAXE
SELECT NOME_COLUNA
FROM TABELA A, TABELA B
WHERE CONDICAO
*/
SELECT * 
FROM Customers;

--Buscar todos os clientes que moram na mesma região

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region;

--Encontrar (nome e data de contratação) de todos os funcionarios que foram contratados no mesmo ano

SELECT * 
FROM Employees;

SELECT A.FirstName, A.HireDate AS "Ano de contratação", B.FirstName,B.HireDate AS "Ano de contratação"
FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR,B.HireDate);

--Saber na tabela detalhe do pedido quais produtos tem o mesmo percentual de desconto

SELECT * 
FROM [Order Details];

SELECT A.ProductID,A.Discount, B.ProductID,B.Discount 
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount;




