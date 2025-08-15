create table  student_details(
Student_name nvarchar(256),
Gender char(1),
Age tinyint,
event_date date,
distance decimal(5,2))

insert into student_details(Student_name,Gender,Age,event_date,distance)
values('Sanskar Chouksey','M',21,'2026-03-20',123.11)

select * from student_details

insert into student_details
values('Aayush rai','M',20,'2025-09-21',13.33)

insert into student_details(Student_name,Gender)
values
('vijay sharma','M')

--see the all information
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

select * from student_details

insert into student_details(Age,event_date)
values(12,'2025-09-01'),(21,'2024-08-24')

--check:Datatype of  column age is tinyint 
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

