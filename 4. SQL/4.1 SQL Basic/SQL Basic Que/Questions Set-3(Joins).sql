
Select * from Customers
Select * from Orders
Select * from Products


--1) Write an SQL query to find the names of customers who have placed an order.
Select distinct CustomerName from Customers c INNER JOIN Orders o 
ON
o.CustomerID = c.CustomerID


--2) Find the list of customers who have not placed any orders.
Select distinct CustomerName from Customers c Left JOIN Orders o 
ON
o.CustomerID = c.CustomerID
Where o.OrderID is null

--3) List all orders along with the product name and price.

Select ProductName, Price, OrderID from Orders o Inner join Products p
On
p.ProductID=o.ProductID



--4) Find the names of customers and their orders, including customers who haven't placed any orders.
Select CustomerName from Customers c Left JOIN Orders o
ON
o.CustomerID=c.CustomerID


--5) Retrieve a list of products that have never been ordered.

Select ProductName from Products p LEFT JOIN Orders o
ON
o.ProductID=p.ProductID
Where o.OrderDate is null


--6) Find the total number of orders placed by each customer.
Select CustomerName, count(Orderid) [No of Orders] from Customers c inner join Orders o 
ON
o.CustomerID=c.CustomerID
Group by CustomerName


-- OR
Select CustomerName, count(Orderid) [No of Orders] from Customers c Left join Orders o 
ON
o.CustomerID=c.CustomerID
Group by CustomerName


--7) Display the customers, the products they've ordered, 
-- and the order date. Include customers who haven't placed any orders.

Select distinct CustomerName, ProductName, OrderDate from customers c left join orders o 
On 
c.CustomerID=o.CustomerID
LEFT JOIN
Products p 
ON
o.ProductID = p.ProductID