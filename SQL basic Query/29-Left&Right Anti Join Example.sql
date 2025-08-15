--different b/w the left join and left Anti join
--Left Join	All from left, matched right, unmatched right as NULL
--Left Anti Join	Only unmatched from left (no match with right)

select * from tableA

select * from tableB


--Left Anti Join: Returns only rows from the left table that do not have any matching rows in the right table
select * from tableA left join tableB
on tableA.C1=tableB.C1
where tableB.C3 is null      --In left anti join we perform the condition on Right table   
--where righttablename.any column name can be write from right table  

--Right Anti Join:Returns only rows from the Right table that do not have any matching rows in the left table
select * From tableA right join tableB
on tableA.C1=tableB.C1   
where tableA.C2 is null  --In Right anti join we perform the condition on left table 