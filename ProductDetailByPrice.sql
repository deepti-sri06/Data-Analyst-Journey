--Find products greater than 50000 unitprice .

SELECT ProductID,
	   ProductName ,
	   UnitPrice AS Price 
FROM Products
WHERE UnitPrice >50000 
ORDER BY UnitPrice;
