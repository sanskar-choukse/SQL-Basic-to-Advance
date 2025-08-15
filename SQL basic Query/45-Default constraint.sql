--Default constraint
--This constraint to provide Default value to columns

/*The default constraint is used to provide default values to columns. When inserting a record into a table,
if a value for a particular column is not specified, and a default value is defined for that column, then 
the default value is inserted instead of NULL.*/


--Case 1: The table does not exist
create table test_default(
E_id int default 5,
Firstname varchar(256) default 'Rohit',
Lastname varchar(256),
age tinyint
)

select * from test_default

insert into test_default values(1,'sanskar','Chouksey',21)

insert into test_default(Lastname,age) values('Gurjar',23)

insert into test_default (Lastname) values('mishra') 

--Case 2: The table already exist

alter table test_default
add default 25 for age

insert into test_default (Lastname) values('mishra') 

select * from test_default