-- First Value :- Window Function


Select * from EmployeeSalaries

--- Minimum Value Salary In the Database
Select *,
FIRST_VALUE(Salary) over(order by salary asc) [Mininum Salary]
from EmployeeSalaries

Select *,
FIRST_VALUE(EmployeeName) over(order by salary asc) [Employee with Mininum Salary]
from EmployeeSalaries

Select *,
FIRST_VALUE(Salary) over(order by salary asc) [Mininum Salary],
FIRST_VALUE(EmployeeName) over(order by salary asc) [Employee with Mininum Salary]
from EmployeeSalaries

--- Lowest Salary Department Wise
Select *,
FIRST_VALUE(EmployeeID) over(partition by Department order by salary) [First Value]
from EmployeeSalaries


-- Highest Salary Department Wise
Select *,
FIRST_VALUE(EmployeeID) over(partition by Department order by salary desc) [First Value EID],
FIRST_VALUE(EmployeeName) over(partition by Department order by salary desc) [First Value ENAME]
from EmployeeSalaries