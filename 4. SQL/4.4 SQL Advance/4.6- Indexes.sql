
-- Index

Select * from Employees

Create index IX_1 on Employees(Salary desc)

Create index IX_2 on Employees(firstname, lastname)

drop index Employees.IX_1