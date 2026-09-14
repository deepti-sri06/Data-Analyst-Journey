--Find customers whose total spending is greater than 50000 and belongs to Lucknow City.
SELECT c.CustomerID,
	   CONCAT(c.FirstName ,' ',c.LastName ) AS CustomerName ,
	   c.City,
	   SUM(o.GrandTotal) AS TotalSpending
FROM Customers c
INNER JOIN Orders o 
ON c.CustomerID=o.CustomerID
WHERE c.City='Lucknow'
GROUP BY c.CustomerID,
		 c.FirstName,
		 c.LastName,
		 c.City
HAVING SUM(o.GrandTotal)>50000;

/*First i would use join to join the Cistomers table with the order table 
then i would use SUM(aggregate function ) to calculate the TotalSpenidng 
then i would use where to filter customer who bwlongs to Lucknow
after that i would use group by to calculate the totalapending for each customer 
finally i would use having clause to filter the TotalSpending is greater than 50000.*/