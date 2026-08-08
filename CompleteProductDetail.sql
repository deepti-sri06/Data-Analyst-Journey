--Complete Product Report .
-- Display Content:ProductID, Productname , CategoryName , SupplierName , Price .

SELECT p.ProductID,
	   p.Productname ,
       c.CategoryName ,  
       s.SupplierName ,
	   p.CostPrice 
FROM Categories C
INNER JOIN Products p
ON c.CategoryID=P.CategoryID
INNER JOIN Suppliers s
ON P.SupplierID=s.SupplierID;