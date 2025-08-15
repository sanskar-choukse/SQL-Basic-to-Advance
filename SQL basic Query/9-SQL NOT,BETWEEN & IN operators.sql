

select * from dbo.EmployeeRecord
where FirstName='John'

select * from dbo.EmployeeRecord
where not FirstName='John'

select * from dbo.EmployeeRecord
where not FirstName='John' and not Department='IT'

select * from dbo.EmployeeRecord
where not  LastName='Gupth' and not LastName='Miller'

select * From dbo.EmployeeRecord
where not LastName='Gupth' or not Department='Management'

select * from EmployeeRecord
where Salary between 50000 and  70000

select * from dbo.EmployeeRecord
where EmployeesID between 1 and 3

--same output
select * from dbo.EmployeeRecord
where EmployeesID>=1 and EmployeesID<=3

select * from dbo.EmployeeRecord
where Salary between 50000 and 70000


--same output
select * from dbo.EmployeeRecord
where Salary>=50000 and Salary<=70000

select * from dbo.EmployeeRecord
where Salary not between 65000 and 70000

select * from dbo.EmployeeRecord
where EmployeesID not between  1 and 3

select * from dbo.EmployeeRecord
where Department='HR' or Department='IT'

select * from dbo.EmployeeRecord
where Department in  ('HR','IT')

select * from dbo.EmployeeRecord
where EmployeesID in (1,5)

 select * from EmployeeRecord
 where Department not in ('HR','IT') 

  select * from EmployeeRecord
 where Department NOT IN ('HR','Finance') 