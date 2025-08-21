select * from Employees

select * into emp_bkp from  Employees

select * from emp_bkp

-----A view is a virtual table,it is a store SQL Query
-- It helps in reducing the complexity of the code 
-- It helps in implementing security

create view view_1 as(
select * from emp_bkp
)

select * from view_1
	
--**
update  view_1
set EmployeeID=100
--**


create view view_2 as (
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
)

select * from view_2

drop view view_2
