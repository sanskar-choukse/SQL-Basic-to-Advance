select * from dbo.employees

--Fill blank  null value
insert into dbo.employees
values (10,'vidhi',' ','IT',450000,'2026-04-20')

insert into dbo.employees
values (12,'Utkarsh','Guptha','CS' ,0,'')

Select * from dbo.employees where Department = null

Select * from dbo.employees where Department is null

select * from dbo.employees where  Salary is null

Select * from dbo.employees where  Department is not Null

select * from dbo.employees where Salary is not null