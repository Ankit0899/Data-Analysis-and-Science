-- Last Value :- Window Function

Select * from EmployeeSalaries

-- Incorrect Query
Select *,
LAST_VALUE(EmployeeName) over(order by salary desc) [Emp with Lowest salary]
from EmployeeSalaries

-- Correct Query
Select *,
LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest salary]
from EmployeeSalaries

Select *,
LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest salary],
LAST_VALUE(salary) over(order by salary desc rows between unbounded preceding and unbounded following) [ Lowest salary]
from EmployeeSalaries


Select *,
LAST_VALUE(EmployeeName) over(partition by department
order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest salary],
LAST_VALUE(salary) over(partition by department
order by salary desc rows between unbounded preceding and unbounded following) [ Lowest salary]
from EmployeeSalaries