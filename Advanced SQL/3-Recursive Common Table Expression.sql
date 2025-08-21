--Recursive Commom Table Expression
--number From 1 to 5

With [R CTE] as (
--Anchor Query
select 1 as n

union all


--Recursive Query
select 1+n From [R CTE] where n<=4
)
select * from [R CTE]
-------------------------


-------------------------
--5*4*3*2*1
------------------------
--Factorial of  number 5
With [Fac CTE] as (
--Anchor Query
select 1 as n

union all

--Recursive Query
select n+1 From [F CTE] where n<=4
)
select exp(sum(log(n))) from [F CTE]