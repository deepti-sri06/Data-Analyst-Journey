SELECT c.CustomerID,
	   c.Firstname ,
	   c.LastName , 
	   SUM(p.Amount)
FROM Payments p
INNER JOIN Orders o
ON p.OrderID=o.OrderID
INNER JOIN Customers c
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,
	   c.Firstname ,
	   c.LastName
HAVING  SUM(p.Amount) >50000;

