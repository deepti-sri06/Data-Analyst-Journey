--Find the customer who have palce  at least one order with the GrandTotal grater than 30000.
SELECT CustomerID FROM Orders 
WHERE CustomerID	IN(
SELECT CustomerID  FROM Orders

WHERE GrandTotal >30000 );