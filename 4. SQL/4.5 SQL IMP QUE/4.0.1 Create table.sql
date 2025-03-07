Create Database [Advance SQL QUE]

use [Advance SQL QUE]

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);



-- Create the table
CREATE TABLE ReportingStructure (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    ManagerID INT
);

-- Insert data into the table
INSERT INTO ReportingStructure (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),  -- Alice Smith is at the top and reports to no one
(2, 'Bob Johnson', 1),     -- Bob Johnson reports to Alice Smith
(3, 'Carol White', 1),     -- Carol White reports to Alice Smith
(4, 'David Brown', 2),     -- David Brown reports to Bob Johnson
(5, 'Eve Davis', 2),       -- Eve Davis reports to Bob Johnson
(6, 'Frank Miller', 3);    -- Frank Miller reports to Carol White


-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry



-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID

