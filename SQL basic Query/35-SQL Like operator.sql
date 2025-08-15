Create table  Employees_US(
  EmployeesID int primary Key,
  FirstName Varchar(50),
  LastName  varchar(50),
  Department varchar(50)
)

insert into Employees_US(EmployeesID,FirstName,LastName,Department) values
(1,'Alice','Smith','Finance'),
(2,'Bob','Johnson','Engineering'),
(3,'charlie','william','Marketing'),
(4,'Diana','brown','Finance'),
(5,'Edward','Jones','Engineering'),
(6,'Fiona','Garcia','Marketing'),
(7,'George','Miller','Finance');

select * From Employees_US

--Wildcards

--1) % -It may represent  0,1 or multiple character
--2) _ It exactly represent only 1 character

--1.Find Employees whose Last Name Start with 'S'
select * from Employees_US where LastName Like 'S%'

--2.Find Employees whose LastName end with 'a'
select * from Employees_US where LastName Like '%a'

--3.Find Employees whose FirstName end with 'a'
select * from Employees_US where  FirstName Like '%a' 

--4.Find Employees whose Department contant 'Eng'
select * from Employees_US where  Department Like '%Eng%'

--5.Find Employees whose Department contant 'gine'
select * from Employees_US where Department Like  '%gine%'

--6.Find Employees whose Department contant start with 'Mar'
select * from Employees_US where Department Like  'Mar%'

--7.Find Employees whose Last Name is exactly 5 characters long.
select * from Employees_US where LastName Like '_____'

--8.Find Employees whose First Name start with 'C' or 'D'
select * from Employees_US where FirstName like '[CD]%'

--9.Find Employees whose Last Name Contains 'Son'
select  * from Employees_US where LastName like '%Son%'

--10.Find employees whose First Name Contains the letter 'i' as the Second Character.
select * from Employees_US where  FirstName like '_i%'

--11.Find employees Whose Last Name starts with any Letter between'A' and 'L'.
select * from Employees_US where  LastName Like '[a-l]%'

--12. Find Employees Whose Firstname does not contain 'o'.
select * from Employees_US where FirstName not  like '%o%'

--13. Find Employees Whose Department does not contain 'Fin.
select * from Employees_US where Department not like '%Fin%'

--14.Find employees whose Lastname ends with 'a' and is exactly 5 characters long.
select * from Employees_US where LastName Like '____a'

--15.Find employees whose Firstname ends with 'e' and is exactly 5 characters long.
select * from Employees_US where FirstName Like '____e'

--16.Find employees whose Department  start with 'Mar' and ends with 'ing'.
select *  from Employees_US where Department like 'Mar%ing'

--17.Find employees whose First Name has  an 'a' in the third position.
select * from Employees_US where FirstName Like '__a%'

--18.Find  Employees whose LastName start with 'B' or 'S'
select * from Employees_US where LastName like '[bS]%'

--19.Find  Employees whose LastName start with 'Br' or 'Bl'
select * from Employees_US where LastName like 'br%' or LastName like 'bl%'

--20.Find  Employees whose FirstName start with a vowel
select * from Employees_US where FirstName like '[aeiou]%'

--21.Find  Employees whose FirstName start with a consonant
select * from Employees_US where FirstName not like '[aeiou]%'
--or
select * from Employees_US where FirstName like '[^aeiou]%'

--22.Find  Employees whose FirstName does not start with a consonant
select * from Employees_US where FirstName not like '[BCDFGHJKLMNPQRSTVWXYZ]%'
--or
select * from Employees_US where FirstName not like '[^aeiou]%'

