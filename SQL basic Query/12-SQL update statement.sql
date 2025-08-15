

select * from dbo.employees

select * into #1 from dbo.employees

select * from dbo.#1

--update null value

update #1
set Department='HR'
where  Department is null

--update null salary
update #1
set Salary =150000
where Salary is null

--update null HireDate
update #1
set HireDate='2025-11-01'
where EmployeeID=7 or EmployeeID=8 

update #1
set HireDate='2004-03-20',Salary=2500000
where EmployeeID=11 or EmployeeID=12


update #1
set Firstname='Sanskar Chouksey'
where Firstname='Utkarsh'

update #1
set Firstname='Utkarsh'
where EmployeeID=11


select * from #1 where EmployeeID=10

select * into #2  From dbo.employees

select * From #2

update #2
set Salary=1500000
--if you did't put condition so set value in all column table

