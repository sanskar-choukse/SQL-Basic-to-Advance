--First_Value Function:The FIRST_VALUE function finds the top value in a sorted list and copies it onto every row.

/*
In Simple Words
FIRST_VALUE lets you pick a value from the very first row of your sorted data (or the first row of a specific group)
and display that value on every row.
*/
Create database [Window Fun]

use [Window Fun]

CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

select * from EmployeeSalaries

Select *,
FIRST_VALUE(Salary) over(order by salary asc) as [Min salary]
from EmployeeSalaries

select *,
FIRST_VALUE(EmployeeName) over(order by salary asc) as [name with min Salary]
from EmployeeSalaries

select *,
FIRST_VALUE(Salary) over(order by salary asc) as [Min Salary],
FIRST_VALUE(EmployeeName) over(order by salary asc) as [Name with Min Salary]
From EmployeeSalaries


select *,
FIRST_VALUE(EmployeeID) over(partition by Department order by salary asc) as [Emp_ID with Min Salary]
From EmployeeSalaries

select *,
FIRST_VALUE(EmployeeID) over(partition by Department order by salary Desc) as [Emp_ID with Min Salary],
FIRST_VALUE(EmployeeName) over(partition by Department order by salary asc) as [Emp_Name with Min Salary]
From EmployeeSalaries