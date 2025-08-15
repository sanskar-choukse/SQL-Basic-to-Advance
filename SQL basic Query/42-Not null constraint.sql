create database constraints

use constraints

--Constraints
--Condition that can be applied on columns of a table & these Condition are to be Followed while 
--inserting records into the table

--Not Null Constraint

--case 1:We will have to Create a new table
create table test_not_null(
Employees_ID int not  null,
age tinyint,
Firstname varchar(256)
)
select * from test_not_null

--we have to Know the Employees_ID columns is Nullable or not Nullable
select * from INFORMATION_SCHEMA.COLUMNS 
where TABLE_NAME like 'test_not_null'

insert into test_not_null values(1,23,'shamakash')

--if we put the null values so Emp_ID col did't give the permetion so this are not execute
insert into test_not_null values(Null,23,'shamakash')

-----
insert into test_not_null values(2,null,'Radhe')

--case 2:The table already exists
--then we want to make Firstname columns nullable (matlab inside not null)


alter table test_not_null
alter column Firstname varchar(256) not null

--now we check
insert into test_not_null values(4,45,null)

alter table test_not_null
alter column age tinyint not null -- show error because already consist null value

select * from test_not_null

/*
ALTER in SQL is used to modify an existing table's structure without deleting it.
Main uses:
Add a column
Drop a column
Change column data type or size
Rename a column or table
Add/remove constraints (e.g., primary key)

Example: ALTER TABLE employees ADD salary DECIMAL(10,2);
*/