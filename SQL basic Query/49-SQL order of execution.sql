--order of Execution

select * from employees

--Correct Query
select distinct top 1 Department,AVG(salary) [Avg Salary] from employees
where Salary>50000
group by Department
having AVG(Salary)>55000
order by Department 

--Incorrect Query
select distinct top 1 Department,AVG(salary) [Avg Salary] from employees
where Salary>50000
group by Department
having [Avg Salary]>55000
order by Department 