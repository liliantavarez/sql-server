/*
UNION: Junta os resultados de duas consultas eliminando os registros duplicados
*/

SELECT FirstName,Title,MiddleName 
FROM Person.Person 
WHERE Title = 'Mr.'
UNION 
SELECT FirstName,Title,MiddleName
FROM Person.Person	
WHERE MiddleName = 'A'