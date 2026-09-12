select * from Orders 
where GrandTotal >(
Select avg(GrandTotal) from Orders);