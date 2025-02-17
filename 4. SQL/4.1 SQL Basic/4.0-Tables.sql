Create Table Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Department VARCHAR(50),
Salary DECIMAL(10,2),
HireDate Date
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'HR',50000, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finanace',60000, '2021-05-15'),
(3, 'Alice', 'Johnson', 'HR',50000, '2022-01-23'),
(4, 'Bob', 'Brown', 'HR',50000, '2019-04-15'),
(5, 'Charlie', 'Davis', 'HR',50000, '2023-02-28');



Create Table EmployeeRecords(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Department VARCHAR(50),
Salary DECIMAL(10,2),
);

INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Miller', 'HR',50000),
(2, 'Jane', 'Smith', 'Finanace',60000),
(3, 'Alice', 'Johnson', 'HR',70000),
(4, 'Bob', 'Brown', 'HR',80000),
(5, 'Charlie', 'Davis', 'HR',90000),
(6, 'John', 'Davis', 'HR',90000);