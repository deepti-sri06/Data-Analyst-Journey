--Display customer details like CustomerID,FullName ,Email,Country.

SELECT CustomerID,
	   FirstName +'  '+ LastName AS CustomerName,
	   Email,
	   Country 
	   FROM Customers