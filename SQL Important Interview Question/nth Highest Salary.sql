Create Database [Advanced SQL Question]

use [Advanced SQL Question]

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


--2nd Highest Salary
select Max(salary)[2nd Highest Salary] from Employees where salary<
(select max(Salary) from Employees)

--3rd Highest Salary
select max(salary) from employees where salary<
(select Max(salary) from employees where salary<
(select Max(salary) from Employees))



--CTE(Common Table Expression)
with CTE_2 as (
select *,DENSE_RANK() over(order by salary desc) as [DR] 
From Employees
)
select Salary [second Highest Salary] from CTE_2 where [DR] =2

--3rd Highest salary
with CTE3 as(
select *,DENSE_RANK() over(order by salary desc) [DR]
from Employees
)
select salary from CTE3 where [DR]=3



--Sub Query along With Dense_Rank()
select Salary [2nd highest Salary] from 
(Select *,DENSE_RANK() over(order by salary desc) as [DR] From Employees)X
where DR=2

select Salary [3rd highest Salary] from 
(Select *,DENSE_RANK() over(order by salary desc) as [DR] From Employees)X
where DR=3


--Sub Query
select top 1 Salary [2nd Highest salary] from 
(select distinct top 2 salary from Employees order by Salary desc)x
order by salary asc

--3rd highest Salary
select top 1 Salary [3rd Highest Salary] from  
(select distinct top 3 Salary from Employees order by  Salary desc)x
order  by  Salary asc


