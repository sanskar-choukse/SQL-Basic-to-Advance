--Primary key constraint 

/*Primary Key ? A column (or set of columns) that uniquely identifies each record in a table and cannot contain NULL.

Why use it in SQL:
To uniquely identify each row.
To prevent(?????) duplicate data.
To improve search speed and indexing */

--case 1:When new is to be created 
create table test_pk(
E_id int primary key,
Gender char(1),
age tinyint,
Firstname varchar(256)
)

insert into test_pk values(1,'M',22,'Rajesh')

select * from test_pk

insert into test_pk values(1,'F',24,'Hari')

insert into test_pk values(null,'M',25,'Harry')

insert into test_pk values(' ','M',25,'Harry')
insert into test_pk values(' ','M',25,'jarry')

truncate table  test_pk

--case 2: Table already exists
alter table test_pk
add primary key (age) --primary key Can be a defined on a single column in a table

create table test_pk1(
S_id int not null unique,
Firstname varchar(256),
age tinyint not null
)


alter table test_pk1
add primary key (S_id,age)

--we want only primary key in S_id so drop the table

drop table test_pk1

alter table test_pk1
add primary key (S_id)