Select * from EmployeeRecords_1
order by EmployeeID, Email


-------------------
Select distinct * into #1 from EmployeeRecords_1

truncate table EmployeeRecords_1

insert into EmployeeRecords_1 Select * from #1

Select * from EmployeeRecords_1

Select * from EmployeeRecords_1 order by Email

-------
-- Records with lower Employee ID should Remain

with CTE as (
Select *, DENSE_RANK() over(Partition by email order by Employeeid) [DR] from EmployeeRecords_1
)
-- Select * from CTE
delete from CTE where DR = 2

Select * from EmployeeRecords_1
------------------------------------
Select * into EmployeeRecords_2 from #1
Select * from EmployeeRecords_2


-- Reatin the records with higher Employee ID
with CTE as (
Select *, DENSE_RANK() over(partition by email order by EmployeeID desc) [DR] from EmployeeRecords_2
)
-- Select * from CTE
delete from CTE where DR =2

----------------------------
Select * from EmployeeRecords_1 -- EmpID =5 was retained

Select * from EmployeeRecords_2  -- EmpID =6 was retained





