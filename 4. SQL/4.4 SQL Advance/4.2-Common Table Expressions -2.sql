
Select * from Employees

Select * into #1 from Employees

Select * from #1

-- Example 1:
With CTE1 as (
Select * from #1 where EmployeeID in (1,2)
),CTE2 as (
Select * from #1 where EmployeeID in (3,4)
)

Select * from CTE1 
union all
Select * from CTE2


-- Example 2:
with CTE3 as (
Select EmployeeID, FirstName from #1 where EmployeeID = 1
),CTE4 as (
Select EmployeeID, FirstName from #1 where EmployeeID in (3)
)

Select * into #2 from (
Select * from CTE3
union all
Select * from CTE4
) x

Select * from #2


-- Example 3:

with CTE3 as (
Select EmployeeID, FirstName from #1 where EmployeeID = 1
),CTE4 as (
Select EmployeeID, FirstName from #1 where EmployeeID in (3)
)

insert into #2 Select * from (
Select * from CTE3
union all
Select * from CTE4
) x

Select * from #2


-- Example 4 :
with CTE3 as (
Select EmployeeID, FirstName,Salary from #1 where EmployeeID = 2
),CTE4 as (
Select EmployeeID, FirstName, Salary from #1 where EmployeeID in (4)
)

delete from #1 where EmployeeID in (Select Distinct EmployeeID from CTE3
union all
Select distinct EmployeeID from CTE4
)
Select * from #1


-- Example 5:
with CTE3 as (
Select EmployeeID, FirstName,Salary from #1 where EmployeeID = 9
),CTE4 as (
Select EmployeeID, FirstName, Salary from #1 where EmployeeID in (10)
)

update #1 set EmployeeID = 100 where EmployeeID not in (Select Distinct EmployeeID from CTE3
union all
Select distinct EmployeeID from CTE4
)
Select * from #1