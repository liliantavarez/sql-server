--Between: Usado para encrontrar valor entre um valor minimo e valor maximo.

-- SELECT * FROM Production.Product WHERE ListPrice NOT BETWEEN 1000 AND 1500;

-- SELECT * FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'; 
 
-- SELECT * FROM Person.Person WHERE BusinessEntityID IN (2,7,13);

-- SELECT * FROM Person.Person WHERE FirstName LIKE 'ovi%';

-- SELECT * FROM Person.Person WHERE FirstName LIKE '%to';

-- SELECT * FROM Person.Person WHERE FirstName LIKE '%ss%';

/*Quantos produtos temos cadastrados no sistema que custam mais de 1500 dolares? */

-- SELECT COUNT (*) FROM Production.Product WHERE ListPrice > 1500;

/*Quantas pessoas temos com o sobrenome que inicia com a letra P? */

-- SELECT COUNT (LastName) FROM Person.Person WHERE LastName LIKE 'P%';

/*Em quantas cidades unicas estão cadastrados os nossos clientes?*/

-- SELECT COUNT (DISTINCT City) FROM Person.Address ;

/*Quais são as cidades unicas que temos cadastrados em nosso sistema?*/

--  SELECT DISTINCT City FROM Person.Address;

/*Quantos Produtos vermelhos tem preco entre 500 a 1000 dolares */

-- SELECT COUNT (*) FROM Production.Product WHERE Color = 'RED' AND ListPrice BETWEEN 500 AND 1000;

/*Quantos proutos cadastrados tem a palavra 'road' no nome deles? */

-- SELECT COUNT (*) FROM Production.Product WHERE name LIKE '%road%';
