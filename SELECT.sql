-- Where para trabalhar com condi�oes no SQL 

--SELECT FirstName FROM person.Person where LastName = 'miller'   ;

--select * from Production.Product where color ='blue' or color ='blue';

--SELECT Name, ListPrice FROM Production.Product WHERE ListPrice > 1500 and ListPrice < 3000;

/*A esquipe de produ��o de produtos precisa do nome de todas as pecas que posuem mais de 500Kg mas n�o mias que 700 Kg para inspe��o*/

--SELECT name, Weight from Production.Product where Weight > 500 and Weight <= 700;

/*Foi pedido pelo mareting uma rela��o de todos os empregados que s�o casado  e s�o assalariados*/

--SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'M' and SalariedFlag = 1;

/*Um usuario chamado Peter Krebs esta devendo um pagamento consiga o email dele para que possamos enviar uma cobran�a*/

--SELECT * FROM  Person.Person WHERE FirstName = 'Peter' and LastName = 'Krebs';
--SELECT * FROM Person.EmailAddress WHERE BusinessEntityID = 26;