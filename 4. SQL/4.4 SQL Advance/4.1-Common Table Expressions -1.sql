/*
A Common Table Expression (CTE) is SQl is a Temporary Result Set that you can reference Within a 
SELECT, INSERT, UPDATE, OR DELETE Statement.
CTE are defined using the with keyword, and they can make complex queries easier to write, understand, and maintain 
by breaking them into simpler parts.
*/

Select * from Employees

-- Create a Hash Table
Select * into #temp1 from Employees

Select * from #temp1

-- Example 1 : CTE

with CTE AS (
Select * from #temp1
)

Select * from CTE

-- Example 2:

with Test_CTE as (
Select EmployeeID, FirstName from #temp1 Where EmployeeID in (2,4)
)
Select * from Test_CTE


-- Example 3:

with [Comm table Expression] as (
Select * from #temp1 where EmployeeID in (1,2,3)
)

Select * into #temp2 from [Comm table Expression]

Select * from #temp2


-- Example 4:
with CTE_1 as (
Select * from #temp1 where EmployeeID in (2,4,6)
)

update #temp1 set Employeeid = 101 where EmployeeId in (Select distinct Employeeid from CTE_1)
--
Select * from #temp1


-- Example 5:
with CTE_2 as (
Select * from #temp1 where EmployeeID = 1
)

delete from #temp1 where EmployeeID in (Select distinct EmployeeID from CTE_2)

Select * from #temp1


-- Example 6:
with CTE_3 as (
Select * from #temp1 where EmployeeID in (101)
)

insert into #temp1 select * from CTE_3

Select * from #temp1