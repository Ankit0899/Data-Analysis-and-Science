

Select * from Employees

select * into #1 from Employees

select * from #1

update #1 
set Department = 'Finanace'
where EmployeeID = 4

update #1 
set LastName = 'kose'
where EmployeeID =9

update #1 
set Salary = 85000, HireDate = '2022-09-23'
where EmployeeID =6


select * into #2 from Employees

select * from #2


#### ####
Delete Drop And Truncate

select * into #3 from Employees

Select * from #3

delete from #3
where LastName = '' or Department = '0'

select * into #4 from Employees

Select * from #4

delete from #4

select * from #3

truncate table #3

drop table #3
drop table #4
