
Select * from Employees

Create procedure sp_test
as
begin
	Select * from employees
end

sp_test
exec sp_test
execute sp_test
-------------------------------------------

-- Example 1

Create proc sp_test_2
as 
begin
	Select firstName,LastName from Employees
end

exec sp_test_2
------------------------------

alter proc Sp_test_2
as
begin
	Select EmployeeID,FirstName,LastName from Employees
end

exec sp_test_2