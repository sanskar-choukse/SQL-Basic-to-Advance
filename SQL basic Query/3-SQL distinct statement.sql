CREATE TABLE EmployeeRecord(
     EmployeesID INT PRIMARY KEY,
	 FirstName NVARCHAR(50),
	 LastName NVARCHAR(50),
	 Department NVARCHAR(50),
	 Salary DECIMAL(10,2)
);


INSERT INTO EmployeeRecord(EmployeesID,FirstName,LastName, Department,Salary)
VALUES
(1,'John','Miller','HR',60000),
(2,'Jone','Gupth','Finance',60000),
(3,'John','smith','HR',60000),
(4,'harry','Milker','IT',60000),
(5,'John','Khan','Account',60000);


Select * from EmployeeRecord

Select * from EmployeeRecord

Select EmployeesID from EmployeeRecord

#distinct use for unique

Select distinct FirstName from EmployeeRecord

Select distinct Department From  EmployeeRecord

Select distinct FirstName,LastName from EmployeeRecord

select distinct Salary From  EmployeeRecord

select distinct * From EmployeeRecord