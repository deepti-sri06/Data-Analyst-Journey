--Product Details : ProductID, ProductName ,Price  and also sort by highest price .

SELECT ProductID,
	   ProductName ,
	   UnitPrice AS Price 
FROM Products
ORDER BY UnitPrice DESC;