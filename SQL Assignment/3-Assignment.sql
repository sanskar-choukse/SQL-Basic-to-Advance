select * from Employees_2

--Write a SQL query to find the names of employees whose first names start with the letter 'J'.
select CONCAT(FirstName,' ',LastName) 
from Employees_2 
where FirstName  like 'j%'

--Write a SQL query to find the names of employees whose last names end with the letter 'n'.
select CONCAT(FirstName,' ',LastName) as [Name]
from  Employees_2 
Where LastName like '%n'

--Write a SQL query to find the email addresses of employees that contain the word "john".
select Email 
from Employees_2 
where Email like '%John%'

--Write a SQL query to find the names of employees whose first names have exactly 5 characters.
select CONCAT(FirstName,' ',LastName) as [Name]  
from Employees_2 
where FirstName like '_____'

--Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.
select CONCAT(FirstName,' ',LastName) as [Name] 
from Employees_2 
where LastName like '_a%'