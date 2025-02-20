Create database employee_details

use employee_details

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



 Create database [Sales_Database]


 CREATE TABLE dbo.Sales (
    ProductID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    StoreID INT,
    SalespersonID INT,
    PaymentMethod VARCHAR(50)  -- New varchar column for payment method
);

-- Inserting more sample data (10 records), including NULL values
INSERT INTO dbo.Sales (ProductID, SaleDate, Quantity, TotalAmount, CustomerID, StoreID, SalespersonID, PaymentMethod)
VALUES 
(1, '2023-08-01', 10, 200.00, 101, 1, 201, 'Credit Card'),
(2, '2023-08-01', 5, 150.00, 102, 1, 202, 'Cash'),
(1, '2023-08-02', 8, 160.00, 103, 2, 203, 'Credit Card'),
(2, '2023-08-02', 7, 210.00, 104, 2, 204, 'Cash'),
(1, '2023-08-03', 6, 120.00, 105, 1, 201, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-04', 12, 300.00, 106, 3, 205, 'Credit Card'),
(1, '2023-08-04', 5, 100.00, 107, 3, 206, 'Debit Card'),
(2, '2023-08-05', 9, 270.00, 108, 1, 202, NULL),              -- NULL value in PaymentMethod
(3, '2023-08-05', 15, 375.00, 109, 3, 207, 'Cash'),
(1, '2023-08-06', 7, 140.00, 110, 2, 203, 'Credit Card');

