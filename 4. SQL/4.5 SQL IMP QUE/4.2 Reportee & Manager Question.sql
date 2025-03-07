-- Reportee & Manager

Select * from ReportingStructure

----*
Select B.EmployeeName [Reportee] , A.EmployeeName [manager] from ReportingStructure A inner join ReportingStructure B
on
A.EmployeeID=B.managerID

union all

Select EmployeeName, null [manager] from ReportingStructure
where managerid is null
----*