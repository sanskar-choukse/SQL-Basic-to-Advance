--Foreign key constraint

--case 1:When the new table has to be created
create table test_primary_key(
Id int primary key,
name varchar(256)
)

insert into test_primary_key values (1,'raj'),(2,'vijay'),(3,'Ajay')

select * from test_primary_key

create table test_foreign_key(
Id int foreign key references test_primary_key(Id),
course varchar(256) 
)

insert into test_foreign_key values(1,'A')

select * from test_foreign_key

insert into test_foreign_key values(null,'B')

insert into test_foreign_key values(5,'C')

--case 2:Table already exists
create table test_foreign_key_2 (Id int,course varchar(256))

alter table  test_foreign_key_2
add foreign key (Id) references test_primary_key(Id)