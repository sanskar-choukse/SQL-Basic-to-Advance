--UNION and UNION ALL are used in SQL to combine the results of two or more SELECT queries, but there are key differences betweenthem:

--UNION: Combines the results and removes duplicate rows. Only unique records are shown in the final result set.

--UNION ALL: Combines all results, including duplicates. Every row from each SELECT appears in the final set, so repeated records remain

create table append1(C1 int,C2 nvarchar(255),C3 int)
insert into append1 values(1,'A',7),
(2,'B',8),
(3,'C',9)


create table append2(C1 int,C2 nvarchar(50),C3 int);
insert into append2 values(11,'A',17),
(2,'B',8),
(33,'C1',91);

--Union all: Combines results and keeps duplicates.
select C1,C2,C3 from append1
union all
select C1,C2,C3 from append2

--Union: Combines results and removes duplicates.
select C1,C2,C3 from append1
union 
select C1,C2,C3 from append2

--*Condition for Union&Union all*
--Number of column present in the select list have to be same
--Data Types of the columns have to be same
--order in which columns are written has to be same

select C1,C2,C3 from append1
union
select C1,C2 from append2
--error show because condition is not follow

select C1,C2,C3 from append1
union
select C1,C3,C2 from append2
--error show because order in which columns are written has to be same


select C1,C2,C3 from append1  --C1 is int,C2 is nvarchar,C3 is int
union
select C1,C3,C2 from append2
--error show because Data Types of the columns have to be same


--Aliase names which are specified in 1st select statement will be assigned  to the columns 
select C1 [column1],C2 [column2],C3 [column3] from append1
union 
select C1 [col1],C2 [col2],C3 [col3] from append2


--if you have to delete the table 
DROP TABLE append2;