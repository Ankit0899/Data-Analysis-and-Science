

select * into #temp1
from [dbo].[Employees]


select * from #temp1

select * from dbo.Employees

select * into ##temp2
from [dbo].[EmployeeRecords]


## Temporary table create with ## for run sql query in any query editer
select * from ##temp2

select * from dbo.EmployeeRecords