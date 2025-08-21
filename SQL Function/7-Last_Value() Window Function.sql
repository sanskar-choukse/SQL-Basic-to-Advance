select * from EmployeeSalaries

--Incorrect Query
select *,
LAST_VALUE(EmployeeName) over(order by salary desc) as [Emp_Name with Low Salary]
From EmployeeSalaries

--Correct Query
Select *,
LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded Following) as [Emp_Name with Low Salary],
LAST_VALUE(Salary) over(order by salary desc rows between unbounded preceding and unbounded Following) as [Low Salary]
From EmployeeSalaries

--Correct Query
select *,
LAST_VALUE(EmployeeName) over(partition by Department order by salary desc rows between unbounded preceding and unbounded following) as [Emp_Name with low salary],
LAST_VALUE(Salary) over(partition by Department order by salary desc rows between unbounded preceding and unbounded Following) as [low salary]
From EmployeeSalaries

--Correct Query [Last_Value]
--we will use asc order
select *,
LAST_VALUE(EmployeeName) over(partition by Department order by salary asc rows between unbounded preceding and unbounded following) as [Emp_Name with Highest salary],
LAST_VALUE(Salary) over(partition by Department order by salary asc rows between unbounded preceding and unbounded Following) as [Highest salary]
From EmployeeSalaries

--Correct Query [First_Value]
--we will use asc order
select *,
First_VALUE(EmployeeName) over(partition by Department order by salary desc ) as [Emp_Name with Highest salary],
First_VALUE(Salary) over(partition by Department order by salary desc) as [Highest salary]
From EmployeeSalaries
