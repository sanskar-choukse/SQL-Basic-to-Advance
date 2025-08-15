--Example-1 Inner Join
Create table table3(
A int,
B varchar
);

Create table table4(
A int,
C varchar
);

insert into dbo.table3(A,B)
values
(1,'B'),
(2,'S'),
(3,'c'),
(3,'d');


insert into dbo.table4(A,C)
values
(1,'B'),
(4,'A'),
(3,'c'),
(3,'d');

select * from table3

select * from table4 

--Inner Join
Select * from table3 inner Join  table4 
on table3.A = table4.A

Select * from table3 a inner Join  table4 b 
on a.A = b.A

Select a.A,a.B,b.C from table3 a inner Join  table4 b 
on a.A = b.A

--Example-2 Inner Join 

use [Sales Database]

/*In SQL, nvarchar(max) is a data type used to store very large amounts of Unicode text—up to 2 GB or about 1 billion characters.
"nvarchar" stands for "national variable character" and supports multiple languages, while "max" means there is no fixed upper limit
 except for the maximum allowed storage.*/

--Creating tableA & inserting record in TableA 

create table tableA(C1 int,C2 nvarchar(max))
insert into tableA VALUES (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating tableB & inserting record in TableB 
create table tableB(C1 int,C3 nvarchar(max))
insert into tableB Values(1,'XA'),
(1,'MB'),
(2,'NX'),
(NULL,'MD'),
(4,'XY'),
(5,'TF')

select  * from tableA
select  * from tableB

--Inner join
select * from tableA 
inner join tableB on tableA.C1=tableB.C1
--or
select * from tableA as a 
inner join tableB as b on a.C1=b.C1
--or
select a.C1,a.C2,b.C3 from tableA as a
inner join tableB as b on a.C1=b.C1

--Join 
--Join operation also same work
select a.C1,a.C2,b.C3 from tableA as a
join tableB as b on a.C1=b.C1
