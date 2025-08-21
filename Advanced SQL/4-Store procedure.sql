﻿--Stored Procedure → A saved program in the database that runs when you call it,used to do tasks again and again easily

create database testDB

use testdb

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

select * from Employees

create procedure sp_test
as
begin 
    select * from Employees 
end

sp_test

exec sp_test

execute sp_test


--Example-2

Create proc sp_test_1
as
begin
     select FirstName,LastName From Employees
end 

sp_test_1

exec sp_test_1

execute sp_test_1

------------------------------------------

--Changes in the store procedure
alter proc sp_test_1
as 
begin 
    select EmployeeID,FirstName,LastName from Employees
end

sp_test_1