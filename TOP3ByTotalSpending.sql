--Find TOP 3 customers by totalSpending .
SELECT	TOP 3
	   c.CustomerID,
	   CONCAT(c.FirstName ,' ',c.LastName ) AS CustomerName ,  
	   SUM(o.GrandTotal) AS TotalSpending
FROM Customers c
INNER JOIN Orders o 
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,
		 c.FirstName,
		 c.LastName
ORDER BY TotalSpending DESC

/*First i would use join the Customers tble and the orders table
next i would use SUM(Aggregate function ) to calculte the totalspending 
after that i would use group by to grouo the result by customer and sort them in descending order using order by 
finally i would use TOP 3 to get the top 3 by total spending .*/











