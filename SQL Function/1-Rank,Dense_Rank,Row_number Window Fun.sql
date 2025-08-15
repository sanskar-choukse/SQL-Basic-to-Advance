create database Student

use Student

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);

select * from Students
-----------FUNCTION---------------

--ROW NUMBER Function-->If case of a tie row numbers are assigned randomly 
select *,ROW_NUMBER() over(order by marks desc) as [ROW NUMBER]
from Students

--Rank Function-->If there 's a tie next rank/ranks will be skipped
select *,RANK() over(order by marks desc) as[Rank Function]
from Students

--Dense_Rank Function-->If there is tie next rank will not skipped
select *,DENSE_RANK() over(order by marks desc) as [Dense_Rank]
From Students

----------------------------------------------------------------------

--ROW NUMBER Function-->If case of a tie row numbers are assigned randomly 
select *,ROW_NUMBER() over(order by marks) as [ROW NUMBER]
from Students

--Rank Function-->If there 's a tie next rank/ranks will be skipped
select *,RANK() over(order by marks) as[Rank Function]
from Students

--Dense_Rank Function-->If there is tie next rank will not skipped
select *,DENSE_RANK() over(order by marks) as [Dense_Rank]
From Students