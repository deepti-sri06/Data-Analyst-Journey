SELECT c.CustomerID,
	   CONCAT(c.Firstname ,'  ', c.LastName ) AS CustomerName ,
	   AVG(o.GrandTotal) AS AvgOrderValue 
FROM Customers c
INNER JOIN Orders o 
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,
		 c.FirstName,
		 c.LastName
HAVING  AVG(o.GrandTotal)>5000;