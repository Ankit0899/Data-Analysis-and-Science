## Operators -: OR, And, NOT, BETWEEN, IN & NULL

select * from EmployeeRecords

select * from EmployeeRecords
where LastName = 'Miller' OR EmployeeID = 2

select * from EmployeeRecords
where LastName = 'Miller' AND EmployeeID = 1

select * from EmployeeRecords
where (LastName = 'Miller' or EmployeeID = 1) AND Salary = 50000

select * from EmployeeRecords
where NOT LastName = 'Miller' and not Salary = 60000

select * from EmployeeRecords
where Salary BETWEEN 60000 AND 70000

select * from EmployeeRecords
where Salary not BETWEEN 60000 AND 80000


select * from EmployeeRecords
where not Salary BETWEEN 60000 AND 80000


select * from EmployeeRecords
where Department = 'HR' or Department = 'IT'

select * from EmployeeRecords
where Department in ('HR','IT')


select * from EmployeeRecords
where not Department in ('HR','IT')

select * from EmployeeRecords
where Department not in ('HR','IT')


select * from Employees
where Department = 'NULL'

select * from Employees
where Department is null

select * from Employees
where Department is not null