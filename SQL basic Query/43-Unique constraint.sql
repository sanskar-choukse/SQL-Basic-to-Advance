--Unique Constraint
--It ensures that a column conists of unique values

--case 2: we need to create the table
create table test_unique(
Student_id int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique

insert into test_unique values(1,21,'Mayank','Chouhan')

insert into test_unique values(2,20,'Mayank','Sharma')

insert into test_unique values(1,20,'Rohit','jain')

insert into test_unique values(Null,20,null,'Sharma')

--TRUNCATE in SQL is used to delete all rows from a table quickly while keeping the table structure intact.
truncate table test_unique

--case 1: When the table already exists
alter table test_unique
add unique (lastname)
--or 
alter table test_unique
alter column lastname varchar(256) unique --but this query is  not work for unique

insert into test_unique values(2,20,'Mayank','Sharma')

insert into test_unique values(3,20,'Ram','Sharma')