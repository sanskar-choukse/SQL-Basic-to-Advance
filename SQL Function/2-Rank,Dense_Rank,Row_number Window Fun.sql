select * from students

select *,ROW_NUMBER() over(partition by subject order by marks desc) [Row Number Desc]
from Students

select *,ROW_NUMBER() over(partition by subject order by marks asc) [Row Number Asc]
from Students


select *,ROW_NUMBER() over(partition by student_name order by marks desc) [Row Number Desc]
from Students

select *,RANK() over(partition by student_name order by marks desc) as [Rank Desc]
From  Students

select *,Rank() over(partition by subject order by marks desc) [Rank Desc]
from Students

select *,DENSE_RANK() over(partition by subject order by marks desc) [Dense Rank Desc]
from Students


select *,DENSE_RANK() over(partition by student_name order by marks desc) [Dense Rank Desc]
from Students


--Arange data in this form
select *,
DENSE_RANK() over(partition by subject order by marks Asc) [Dense Rank Asc]
from Students

