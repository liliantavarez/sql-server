/*
INNER JOIN: Retorna apenas os resultados que correspondem (existem) nas duas tabelas (a interseção)
*/

/*RETORNAR: BusinessEntityId,Name,PhoneNumberTypeId,PhoneNumber */

SELECT TOP 10 * FROM Person.PhoneNumberType;

SELECT TOP 10 * FROM Person.PersonPhone;

SELECT PP.BusinessEntityID, PT.Name, PT.PhoneNumberTypeID, PP.PhoneNumber 
FROM Person.PhoneNumberType PT
INNER JOIN Person.PersonPhone PP ON PT.PhoneNumberTypeID = PP.PhoneNumberTypeID;

/*RETORNAR: AddressID,City,StateProvinceId,Nome do Estado*/

SELECT TOP 10 * FROM Person.StateProvince;

SELECT TOP 10 * FROM Person.Address;

SELECT PA.AddressID, PA.City, PP.StateProvinceID, PP.Name 
FROM Person.Address PA
INNER JOIN Person.StateProvince PP ON PP.StateProvinceID = PA.StateProvinceID;