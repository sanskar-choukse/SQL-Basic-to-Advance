Create database employees_details

use employees_details

CREATE TABLE employees(
    EmployeeID INT PRIMARY KEY,
	Firstname VARCHAR(50),
	Lastname  VARCHAR(50),
	Department VARCHAR(50),
	Salary DECIMAL(10,2),
	HireDate DATE 
);

INSERT INTO employees(EmployeeID,Firstname,Lastname,Department,Salary,HireDate)
VALUES
(1,'Sanskar','Chouksey','IT',15000000.00,'2025-06-01'),
(2,'shiv','Chouhan','Finacne',100000.00,'2023-06-14'),
(3,'Mayank','Jaiswal','Marketing',120000.00,'2023-06-14');

Select * from employees

Select Firstname from employees

Select Firstname,Salary From employees

Select Firstname,Lastname from employees

Select concat(Firstname,' ',Lastname) from employees

Select EmployeeID,concat(Firstname,' ',Lastname) [Full Name] from employees

Select EmployeeID,concat(Firstname,' ',Lastname) as [Full Name] from employees

 