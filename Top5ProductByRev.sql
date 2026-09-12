

SELECT TOP 5
	   p.ProductID,
	   p.ProductName, 
	   SUM(o.TotalPrice )
FROM Products p
INNER JOIN OrderDetails o
ON p.ProductID=o.ProductID
GROUP BY  p.ProductID,
	      p.ProductName
Order by  SUM(o.TotalPrice ) desc;