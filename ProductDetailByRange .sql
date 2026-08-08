--Find the product priced between 10000 and 50000.

SELECT ProductID,
	   ProductName ,
	   UnitPrice AS Price
FROM Products
WHERE UnitPrice BETWEEN 10000 AND 50000;