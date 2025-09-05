--Ex-1
--Find Even & Odd
--CASE lets you write conditional logic in SQL (similar to IF/ELSE).
select *,
   case
     when EmployeesID%2=0 then 'Even'
	 else 'Odd'
end as 'Type'
From EmployeeRecord;

--print Even & odd Row number
with RowCTE as (
select *,ROW_NUMBER() over(order by EmployeesID) as [Row_number]
from EmployeeRecord
)
--select * from RowCTE where Row_number%2=0;
select * from RowCTE where Row_number%2=1;

 /*Conclusion for Even & odd:
 Use MOD() for databases like MySQL.
 Use ROW_NUMBER()&Case Statement for databases that support Window Functions.*/


--EX-2
--handle NULL values in SQL

--IS NULL – To check if a column contains NULL.
select * from EmployeeRecord where Salary is null

--IS NOT NULL – To check if a column does not contain NULL.
select * from EmployeeRecord where Salary is not null

--COALESCE() – Replaces NULL with a default value.
select *,Coalesce(Salary,10000) as [new_salary] from EmployeeRecord

--Conditional checks: 
SELECT *, 
CASE 
WHEN salary IS NULL THEN 'Unknown' 
ELSE 'Known' 
END AS salary_status 
FROM EmployeeRecord; 

select * from EmployeeRecord

--Ex-3
--Query to Calculate Percentage of Employees in Each Department:
select Department,
(EmployeesID*100)/(select sum(EmployeesID) from EmployeeRecord)  as [Percentage]	
from EmployeeRecord

--Query to Calculate Percentage of Salary in Each Department:
select Department,
(salary * 100)/(select sum(Salary) from EmployeeRecord) as Percentage
from EmployeeRecord

--Ex-4
--How to find the Employees who earn more than their Manager?
select A.Name as Employees ,A.Salary as Emp_salary,B.Name as Manager,B.Salary as Manager_salary  
from Emp_to_manager as A join Emp_to_manager as B                                              --Self Join 
on A.Manager_ID =B.Emp_ID                                 
where  A.Salary>B.Salary


--Report & Manager
select * from ReportingStructure

select B.EmployeeName as [Reportee],A.EmployeeName as [Manager] 
from ReportingStructure as A join ReportingStructure as B          --Self Join
on A.EmployeeID=B.ManagerID

--Ex-5 
/*Write a query to identify customers who have made
 transactions above $5,000 multiple times. */
select CustomerID,count(*)
from sales
where TotalAmount>5000
group by CustomerID
having count(*)>1


--How to find Duplicate Emails in the Email Table?
select Email,count(Email) 
from Email
group by Email
having count(Email)>1

--OR 
--Write a query to find duplicate rows in a table.
select Emp_ID,Email,count(*)
from Email
group by Emp_ID,Email
having count(*)>1

--How to Delete Duplicate data in the Email Table?
select distinct * into #4 from Email
select * from #4
--truncate table Email
--insert into Email select * from #4

--or--
--A CTE (Common Table Expression) is a temporary, named result set that you can reference within a SQL query.                                                                 
With CTE as (
select *,DENSE_RANK() over(partition by Email order by Emp_ID Desc) as [DR]
From Email
)
--select * from CTE
delete From CTE Where DR=2

--Ex-6
--How to find the Highest Salary?
select Max(salary) from Employeessss
--or
select * from  Employeessss where Salary=(select Max(salary) from Employeessss)

--How to find the Highest Salary without using MAX()?
select top 2 * from Employees
order by Salary desc

----How to find the nth number of Highest Salary?
--2 Highest Salary 
select Max(salary) from Employees
where Salary<(select Max(Salary) from Employees)

--3 Highest Salary 
with Highest_Salary_3 as(
select *, ROW_NUMBER() over(order by salary Desc) as [NR]
From Employees
)
select * from  Highest_Salary_3 where NR=3

--3 Highest Salary 
select *  from (
select *,ROW_NUMBER() over(order by salary desc) as [NR] from Employees)X
where [NR]=3 

--3 Highest Salary 
select top 1 salary From (
select top 3 salary from Employees order by Salary desc)X
order by salary asc 

--Ex-7 
-- How to fetch records from two tables using JOIN?
select *  from Employees as A full join  EmployeesRecords_2 as B on A.EmployeeID=B.EmployeeID

-- How to fetch common records from two tables without JOIN?

-- combined using a UNION ,INTERSECT operator must have an equal number of expressions in their target lists.
select *  from Employees
intersect (/*or*/) Union
select * from EmployeesRecords_2


--EX-8
-- Write a query to fetch the top 3 performing Salary based on Employees
select top 3 Salary from Employees
order by Salary desc

--or 

select Salary From(
select Salary,Dense_rank() over(order by Salary desc) as [DR]
From Employees)X
where [DR]<=3


--EX-9
-- Explain the difference between UNION and UNION ALL. 
 
--   UNION:Removes duplicates 
--        :Performance Slower (because of sorting)
--Use case:
--UNION ALL:Keeps all rows, including duplicates 
--         :Performance Faster (no de-duplication) 
--Use case :When duplicates are meaningful 
Example: 
--Returns a unique list of cities.
SELECT city FROM customers 
UNION 
SELECT city FROM vendors; 
--Returns all cities, including duplicates. 
SELECT city FROM customers 
UNION ALL 
SELECT city FROM vendors; 


--Ex-10[use Database]
--Write a query to calculate the cumulative sum of sales
select *,
  SUM(TotalAmount) over(partition by PaymentMethod,ProductID,CustomerID,StoreID,SalespersonID order by SalesDate) as cumulative_sales
from sales


--EX-11
/* Write a query to find all customers who have not made 
any purchases in the last 6 months */
select CustomerID 
from sales
Group by CustomerID
having Max(SalesDate)<DATEADD(MONTH,-6,GETDATE())
OR MAX(SalesDate) IS NULL;

--if we have 2 table (using Left join)
SELECT c.customer_id,c.customer_name 
FROM Customers c LEFT JOIN Orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING MAX(o.order_date) < DATEADD(MONTH, -6, GETDATE()) 
     OR MAX(o.order_date) IS NULL;


--Ex-12





