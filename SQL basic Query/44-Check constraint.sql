--Check Constraint
/*It check for certain condition that can be applied on the columns of the table,if this condtion is not
fulfilled, we will not be able to insert the record into the  table */

--case 1:Table does't exist
create table Test_check(
E_ID int,
Firstname varchar(256),
age tinyint check(age>=10)
)

select * from Test_check

insert into Test_check values(1,'Ram',22)

insert into Test_check values(2,'shyam',8)

--case 2:Table exists
alter  table Test_check
add check (E_ID>=5)--This condtion is does't not execute because before E_Id is lessthan 5 so we will have to change E_Id value

update Test_check set E_ID=10 where E_ID=1 --then again alter

alter  table Test_check
add check (E_ID>=5)

insert into Test_check values(3,'Harsh',34)

insert into Test_check values(30,'Mayank',9)

insert into Test_check values(12,'shyam',22)
