select * from employees

select * into #1 From dbo.employees

--Example 1:
with CTE1 as (
select * From #1 Where EmployeeID in (1,2)
),CTE2 as (
Select * from #1 where EmployeeID in (3,4)
)
select * from CTE1
UNION ALL
select * from CTE2

--Example 2:
with CTE3 as (
select EmployeeID,Firstname from #1 where EmployeeID = 1 
),CTE4 as (
select EmployeeID,Firstname from #1 where EmployeeID = 2 
)
select * into #2 from (
select * from CTE3
union all
select * from CTE4
)x

select * from #2

--Example 3:
with CTE3 as (
select EmployeeID,Firstname from #1 where EmployeeID = 1 
),CTE4 as (
select EmployeeID,Firstname from #1 where EmployeeID = 2 
)
insert into  #2 select * from (
select * from CTE3
union all
select * from CTE4
)x

select * from #2


--Example 4:
with CTE3 as (
select EmployeeID,Firstname,Salary from #1 where EmployeeID = 2 
),CTE4 as (
select EmployeeID,Firstname,Salary from #1 where EmployeeID = 4  
)
delete From #1 where EmployeeID in (select distinct EmployeeID From CTE3 
union all
select distinct EmployeeID From CTE4
)

select * from #1


--Example 5:
with CTE3 as (
select EmployeeID,Firstname,Salary from #1 where EmployeeID = 9 
),CTE4 as (
select EmployeeID,Firstname,Salary from #1 where EmployeeID = 10  
)
update #1 set EmployeeID=100 where EmployeeID not in (select distinct EmployeeID From CTE3 
union all
select distinct EmployeeID From CTE4
)

select * from #1

