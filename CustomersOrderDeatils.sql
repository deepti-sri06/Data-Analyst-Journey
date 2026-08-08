--Customer Order Detailes.
--Display Content : CustomerID, Customername , OrderID , OrderDate , GrandTotal .

SELECT c.CustomerID,
	   c.FirstName +' '+ c.Lastname AS CustomerName ,
	   o.OrderID,
	   o.OrderDate ,
	   o.GrandTotal
FROM Customers c 
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID;
	   