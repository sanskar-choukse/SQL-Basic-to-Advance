
select * from tableA 
select * from tableB 

--Left Join
select * from tableA left join tableB 
on tableA.C1=tableB.C1
--or
Select a.C1,a.C2,b.c3 from tableA as a left Join tableB as b 
on a.C1=b.C1

--Left outer join
--give a same output
Select a.C1,a.C2,b.c3 from tableA as a left outer Join tableB as b 
on a.C1=b.C1