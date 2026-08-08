--Product Sipplier Report .
-- Display Content : ProductID , Productname , Suppliername , Price .

SELECT p.ProductID,
       p.ProductName ,
       s.SupplierName ,
       p.CostPrice AS Price
FROM Products p 
INNER JOIN Suppliers s
ON p.SupplierID=s.supplierID;