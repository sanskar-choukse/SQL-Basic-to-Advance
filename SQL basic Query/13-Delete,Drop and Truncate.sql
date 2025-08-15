 --its important for interview ?what is diff b/w Delete,Drop and truncate 

select * from employees 

--use (#) table because we have to changes in  temperary table

select * into #3 from dbo.employees

select * from #3

--DELETE: Delete use for remove row one by one from table ; you can choose which rows; can use where.

delete from #3 
where Lastname='' and Salary=0.00

delete from #3 
where Lastname='' or Salary=0.00

select * from #3

select * into #4 from dbo.employees
select * from #4

delete from #4
select * from #4

select * from #3

--TRUNCATE: removes all rows from a table, keeps structure, faster than DELETE, no rollback (mostly).

truncate table #3

--Drop -all the record will be  deleted plus + table structure will also remove

drop table #3





