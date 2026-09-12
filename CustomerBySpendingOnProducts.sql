SELECT TOP 3
	   c.CustomerID,
	   c.FirstName ,
	   c.Lastname ,
	   SUM(od.TotalPrice ) AS Amount 
FROM Customers c 
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID
INNER JOIN OrderDetails od 
ON o.OrderID=od.OrderID
GROUP BY c.CustomerID,
	   c.FirstName ,
	   c.Lastname 
ORDER BY Amount DESC;