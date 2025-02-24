

--- Order of Execution

Select * from [dbo].[EmployeeSalaries]

Select distinct top 1 Department, AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary>50000
group by Department
having AVG(Salary)>55000
order by Department

----------------------------Order of Above Query Execution
-- From & JOINS
-- Where
-- Group By
-- Having
-- Select
-- Distinct
-- Order By
-- Top  



-------------------------------
Select distinct top 3 Department, AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary>50000
group by Department
having  [Avg Salary]>55000
order by Department