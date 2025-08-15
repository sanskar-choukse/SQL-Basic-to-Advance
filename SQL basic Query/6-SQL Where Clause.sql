select * from dbo.EmployeeRecord

select * from [dbo].[EmployeeRecord]
where EmployeesID = 2

select EmployeesID,FirstName from [dbo].[EmployeeRecord]
where EmployeesID = 2

select * from dbo.EmployeeRecord where Salary>=75000.00

select FirstName,LastName,Department,Salary 
from dbo.EmployeeRecord where Salary<75000.00

select distinct FirstName,LastName,Department,Salary
from dbo.EmployeeRecord where Salary<75000.00