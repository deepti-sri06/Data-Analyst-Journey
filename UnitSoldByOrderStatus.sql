SELECT TOP 5
	   p.ProductID,
	   p.ProductName ,
	   SUM(od.Quantity) AS UnitSold 
FROM Orders o
INNER JOIN OrderDetails od 
ON o.OrderID=od.OrderID
INNER JOIN Products p
ON od.ProductID=p.ProductID
WHERE o.OrderStatus ='Delivered'
GROUP BY p.ProductID,
	   p.ProductName 
ORDER BY UnitSold DESC