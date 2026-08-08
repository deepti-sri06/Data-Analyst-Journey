--JOIN PRACTICES--
--Product category report .
--Display Content: ProductID, ProductName , CategoryName , Price .

SELECT p.ProductID,
	   p.ProductName ,
	   c.CategoryName ,
	   p.UnitPrice AS Price 
FROM Products p
INNER JOIN Categories c
ON p.CategoryID=c.CategoryID;