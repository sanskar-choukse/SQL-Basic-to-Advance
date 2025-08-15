 
 select * from dbo.employees

 insert into dbo.employees(EmployeeID,Firstname,Lastname,Department,Salary,HireDate)
 values (5,'Ayush','Rai','Finance',50000,'2025-09-01'),
         (6,'shubham','Mishra','IT',1200000,'2026-09-1');

 --If you have to fill some Values
 insert into dbo.employees(EmployeeID,Firstname,Lastname)
 values (7,'Jay','Yadav'),
         (8,'shyam','Birla');

--if you have to fill all column value so directly fill
INSERT INTO DBO.employees
VALUES(9,'Mahesh','Narang','HR',200000,'2024-09-12')


--ye table ka design dikhata ha
Select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME= 'employees'


  select * from dbo.employees