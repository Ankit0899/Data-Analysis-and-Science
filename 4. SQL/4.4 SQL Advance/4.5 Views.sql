--- View

Select * from Employees

Select * into emp_bkp from Employees

--- View is a virtual table, It is a stored SQL Query
-- It helps in reducing the complexity of the code
-- It helps in implementing Security

Create view View_1 as (
Select * from emp_bkp
)

Select * from View_1


Create view View_2 as(
Select EmployeeID, firstname, lastname, DepartmentID from emp_bkp
)
Select * from View_2

-----------
Create view View_1 as (
Select * from emp_bkp
)

Select * from View_1
--**
update view_1
set EmployeeID = 100

--**

drop view View_2