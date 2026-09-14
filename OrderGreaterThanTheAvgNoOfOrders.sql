--Find the customer who have placed order more than the average number of orders per customer .
SELECT CustomerID ,count (OrderID) NoOfOrders FROM Orders
GROUP BY CustomerID 
HAVING count (OrderID)>(

SELECT AVG(NoOfOrders) FROM (
SELECT CustomerID ,count (OrderID) NoOfOrders FROM Orders
GROUP BY CustomerID 
) AS CustomersOrders );
