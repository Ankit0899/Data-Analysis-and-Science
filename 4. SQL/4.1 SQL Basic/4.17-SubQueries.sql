Select * from Customers
Select * from Orders


----- Sub Query

Select * from Customers
where customer_id in (
Select distinct customer_id from Orders where order_date between '2024-08-01' and '2024-08-31'
)

Select * from Customers
where customer_id in (
Select distinct customer_id from Orders where order_date not between '2024-08-01' and '2024-08-31'
)

Select * from Employees

--- Fetch the data from Employees table where salary > average salary

select * from Employees where Salary > (
select avg(Salary) from Employees
)
