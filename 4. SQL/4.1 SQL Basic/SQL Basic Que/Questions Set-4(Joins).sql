Select * from Customers

Select * From Orders

Select * from Products


--1) Identigy pairs of cutomers who live in the same city
Select x.CustomerName, y.CustomerName from Customers x join Customers y 
On 
x.Country=y.Country and x.CustomerID <> y.CustomerID and x.CustomerID>y.CustomerID


--2) Find the customer who has spent the most on their orders
Select customername from
(Select CustomerName, sum(Price) [Price Amount], DENSE_RANK() over(order by sum(price) desc) [DR]
from Customers c INNER JOIN Orders o 
ON 
c.CustomerID=o.CustomerID INNER JOIN Products p 
ON 
o.ProductID=p.ProductID
group by CustomerName) m where DR =2


--3) Find Customer who have ordered more than one type of products
Select CustomerName, count(ProductID) [No of Product] from Customers c Join Orders o
On
c.CustomerID=o.CustomerID
group by CustomerName
having count(ProductID)>1


--4) List all product and their corresponding orders, using a Right JOIn, Including products that have never been ordered

Select OrderID,p.ProductID,ProductName
from Orders o Right join Products p
ON
p.ProductID=o.ProductID


--5) Retrieve all orders placed by customers from the USA
Select OrderID From Customers c inner join Orders o
ON
c.CustomerID=o.CustomerID
where Country = 'USA'


--6) Find the names of customers who have ordered a product price above 500.
select CustomerName from Customers c Inner join Orders o
ON
c.CustomerID=o.CustomerID inner join Products p 
ON
p.ProductID=o.ProductID
where Price>500


--7) Find customers who have ordered the same product more than once.
Select distinct m.CustomerName from
(Select CustomerName, ProductID, count(OrderID) [count] from Customers c Inner join Orders o
ON
o.CustomerID=c.CustomerID
group by CustomerName, ProductID
having count(OrderID) > 1) m
