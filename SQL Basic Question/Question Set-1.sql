create database [SQL Basic Question]

use [SQL Basic Question]

CREATE TABLE Employees(
Employees_ID int  primary key,
Firstname varchar(256),
Lastname varchar(256),
Department varchar(256),
Salary Decimal(10,2)
);

insert into Employees(Employees_ID,Firstname,Lastname,Department,Salary)
values(1,'John','Doe','HR',55000.00),
(2,'Jane','Smith','HR',75000.00),
(3,'Jane','Jones','IT',65000.00),
(4,'Emily','Brown','Finance',80000.00),
(5,'Michael','Davis','IT',60000.00),
(6,'Sarah','Wilson','HR',70000.00),
(7,'David','Garcia','Finance',58000.00),
(8,'Robert','Miller','IT',67000.00),
(9,'James','Martinez','Finance',81000.00),
(10,'sans','chouksey','IT',100000.00);

select * from Employees



--1) How do you select all columns from the Employees table?
select * from Employees


--2) How do you select only the FirstName and Last Name columns from the Employees table
select Firstname,Lastname from Employees
							   
--3) How do you find all employees who work in the 'IT' department?
select * from Employees where Department='IT'

--or--

select * from Employees where Department like 'IT'

--4) How do you select employees with a salary greater than 70,000?
select * from Employees where Salary>70000

--5) How do you sort the results by Last Name in ascending order?
select * from Employees order by Lastname asc

--or--

select * from Employees order by Lastname


--6) How do you select distinct departments from the Employees table?
select distinct Department from Employees


--7) How do you count the number of employees in each department?
select Department,count(*)[Number of Employees] from Employees group by Department

--or--

select Department,count(Employees_ID)[Number of Employees] from Employees group by Department

--8) How do you find the maximum salary in the Employees table?
select max(salary) [Maximum Salary] from Employees

--9) How do you find the average salary of employees in the 'Finance' department?
select Department,AVG(salary) [Finance Avg Salatry] from Employees where Department like 'Finance' group by Department 

--or--
select AVG(Salary)[Finance Avg Salatry] from Employees where Department like 'Finance'

--10) How do you select employees whose last name starts with 'M'?
select * from Employees where Lastname like 'M%'





