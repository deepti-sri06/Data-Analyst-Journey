SELECT c.CustomerID,
	   CONCAT(c.FirstName , ' ' ,c.LastName ) AS CustomerName ,
       SUM(od.TotalPrice ) AS TotalSpending 
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID
INNER JOIN OrderDetails od 
ON o.OrderID=od.OrderID
WHERE o.OrderStatus='Delivered'
GROUP BY c.CustomerID,
	   CONCAT(c.FirstName , ' ' ,c.LastName ) 
HAVING   SUM(od.TotalPrice )>100000;
		 