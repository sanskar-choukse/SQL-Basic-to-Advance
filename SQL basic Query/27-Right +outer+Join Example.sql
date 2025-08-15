select * from tableA

select * from tableB

--Right join 
select * from tableA Right join tableB
on tableA.C1=tableB.C1

--Right join we can say Right outer join
select * from tableA Right outer join tableB
on tableA.C1=tableB.C1

select * from tableA a right join tableB b
on a.C1=b.C1

select a.C1,a.C2,b.C3 from tableA a right join tableB b
on a.C1=b.C1
