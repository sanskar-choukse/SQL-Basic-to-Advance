/* A common Table Expression (CTE) in SQL is a Temporary result set that You can reference with in a 
SELECT,INSERT,UPDATE,or DELETE Statement.CTEs are define using the **With Keyword**,and they can make 
complex queries easier to write, understand, and maintain by breaking them into simpler parts.

*/

select * from employees

--Create Temp table  
select * into #Temp1 From employees

select * From #Temp1

--Example 1:CTE
with CTE as (
select * From #Temp1
)
select  * from CTE

--Example 2:
with Test_CTE as (
Select EmployeeID,Firstname from #Temp1 where EmployeeID in (1,2)
)
select * from Test_CTE


--Example 3:
with [common Table Expression] as(
select * From #Temp1 where EmployeeID in (1,2,3)
)
select * into #temp2 from [common Table Expression]

select * from #temp2
----------

select * from #Temp1

--Example 4:
with CTE_1 as (
select * from #Temp1 where EmployeeID in (2,4,6)
)
update #Temp1 set EmployeeID =101 where EmployeeID  in (select Distinct EmployeeID From CTE_1)

select * from #Temp1

--Example 5:
with cte_2 as (
select * from #Temp1 where EmployeeID = 1
)
Delete From #Temp1 where EmployeeID in (select distinct EmployeeID From cte_2)

select * from #Temp1

--Example 6:
select * from #Temp1

with cte_3 as (
select * from #Temp1 where EmployeeID=101
)
insert into #Temp1 select * from cte_3

select * From #Temp1
