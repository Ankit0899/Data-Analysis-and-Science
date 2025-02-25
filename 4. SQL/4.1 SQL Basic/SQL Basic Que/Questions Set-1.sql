
Select * from Employees

--1) How do you select all columns from the Employees table?
Select * from Employees


--2) How do you select only the FirstName and Last Name columns from the Employees table?
Select FirstName, LastName from Employees

--3) How do you find all employees who work in the 'IT' department?

Select * from Employees
Where Department = 'IT'

--4) How do you select employees with a salary greater than 70,000?
Select * from Employees
Where Salary > 70000

--5) How do you sort the results by Last Name in ascending order?
Select * from Employees
order by LastName asc

--6) How do you select distinct departments from the Employees table?
Select distinct department from Employees


--7) How do you count the number of employees in each department?
Select Department, count(*) from Employees
group by Department



--8) How do you find the maximum salary in the Employees table?
Select max(salary) from Employees

--9) How do you find the average salary of employees in the 'Finance' department?
Select avg(salary) from Employees
where Department = 'Finance'


--10) How do you select employees whose last name starts with 'M'?
Select * from Employees
where LastName like 'M%'
