
Select * from EmployeeRecords
order by EmployeeID, EmployeeName, ManagerID

---Removing Duplicate Records
-- With CTE 

with CTE as (
Select *, Row_number() over (partition by EmployeeID, EmployeeName, ManagerID order by EmployeeID) [ROW Number] from EmployeeRecords
)
-- Select * from CTE
delete from CTE where [ROW Number] = 2

---------------------
Select * into emprecords_bkp from EmployeeRecords

Select * from emprecords_bkp

-- 
Select distinct * into #1 from emprecords_bkp

truncate table emprecords_bkp

insert into emprecords_bkp select * from #1

Select * from emprecords_bkp