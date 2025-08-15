
Select * from EmployeeRecord
where LastName='Miller' and Department='HR'

Select * from EmployeeRecord
where LastName='Miller' and Department='Finance'

Select * from dbo.EmployeeRecord
where Department='HR' or Department='Finance' 

Select * from dbo.EmployeeRecord
where Department='HR' or Department='Management' 

Select * from dbo.EmployeeRecord
where (Department='HR' or Department='Finance') and Salary>=50000

