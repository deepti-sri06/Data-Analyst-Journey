---Find the customer who belogngs to Lucknow, Delhi, Mumbai .

SELECT CustomerID,
	   FirstName +'  '+ LastName  AS Customername ,
	   City 
FROM Customers 
WHERE CITY IN ('Lucknow','Delhi','Mumbai');