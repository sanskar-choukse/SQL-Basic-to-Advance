select * from Employees_2

--Write a SQL query to select all columns and rows from the Employees table.
select * from Employees_2;

--Write a SQL query to find the names and email addresses of all employees who work in the department with DepartmentID = 101.
select CONCAT(FirstName,' ',LastName) as [Name],Email From Employees_2 where DepartmentID=101;

--Write a SQL query to find the total number of employees in the Employees table.
select count(EmployeeID) as [number of employees] from Employees_2;

--Write a SQL query to find the details of employees who were hired in the year 2020.
select * from Employees_2 where year(HireDate)=2020;

--Write a SQL query to update the salary of 'Jane Doe' to 90,000.
update Employees_2
set Salary=90000
where FirstName='Jane' and LastName='Doe';