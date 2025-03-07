

Select * from Employees

-- 2nd Highest Salary
Select max(salary) [2nd Highest Salary]from Employees 
Where salary < (Select max(salary) from Employees)


-- 3rd Highest salary
Select max(salary) [3rd Highest salary] from Employees
Where Salary < (Select max(salary) from Employees Where salary < (Select max(salary) from Employees))


-- CTE
-- Nth highest Salary
with cte as(
Select *, DENSE_RANK() over(order by salary desc) [DR] from Employees
)
Select salary from cte where DR = 1


--- Sub Query along with DENSE_RANK()

Select salary as [2nd Highest salary] from 
(Select *, DENSE_RANK() over(order by salary desc) [DR] from Employees) x
where DR = 2

Select salary as [3nd Highest salary] from 
(Select *, DENSE_RANK() over(order by salary desc) [DR] from Employees) x
where DR = 3


-- Sub Query
Select distinct top 1 salary from Employees 
order by salary desc

-- 2nd highest salary
Select top 1 salary [2nd Highest salary] from 
(Select distinct top 2 salary from Employees order by salary desc) x
order by salary asc


-- 3rd highest salary
Select top 1 salary [2nd Highest salary] from 
(Select distinct top 3 salary from Employees order by salary desc) x
order by salary asc