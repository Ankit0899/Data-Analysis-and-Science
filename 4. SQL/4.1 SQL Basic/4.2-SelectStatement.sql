Select * from Employees

Select FirstName from Employees

Select FirstName, Salary from Employees

Select FirstName, LastName from Employees

Select EmployeeID, CONCAT(FirstName, '', LastName) from Employees

Select EmployeeID, CONCAT(FirstName, '', LastName) [FullName] from Employees

Select EmployeeID, CONCAT(FirstName, '', LastName) as [FullName] from Employees