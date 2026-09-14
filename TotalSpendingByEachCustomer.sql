-- Amount spent by each customer with thier ID,name and email.

SELECT c.CustomerID ,
	   CONCAT(c.FirstName ,' ',c.LastName ) AS CustomerName ,
	   c.Email ,
	   SUM(o.GrandTotal) AS TotalSpending 
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,
		 c.FirstName,
		 c.LastName,
		 c.Email
/* First of all i would use join to join the customers table with the orders table, 
   after that i would calculate the total of GrandTotal by using SUM (Aggregate Function) ,
   Finally i would use GROUP BY to calculate the total of GrandTotal for each customer.*/
