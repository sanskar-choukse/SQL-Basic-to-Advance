--Clustered Index → Data is physically stored in the same order as the index. (Like pages of a book arranged in order).
--                → only one Clustered Index create on table


drop database Test_Index
create database Test_Index

use test_index

drop table if exists students
create table Students ( id int, name nvarchar(50), age int, gender varchar(20))

insert into Students values
(1,'Raj',23,'M'),
(4,'Nitin',25,'M'),
(3,'Priya',21,'F'),
(2,'Nikita',20,'F'),
(5,'Monica',20,'F')

select * from Students
  
create clustered index IX_1 on students(id)

create clustered index IX_2 on students(id desc)--show error since Cannot create more than one clustered index on table 'students'

drop index IX_1 on students

create clustered index IX_3 on students(gender desc,age asc)
--or
create clustered index IX_3 on students(age asc,gender desc)

drop index  IX_2 on students
drop index  IX_3 on students