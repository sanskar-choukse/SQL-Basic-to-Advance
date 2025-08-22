-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_1 (
    EmployeeID INT,
    Email VARCHAR(100)
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_1 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID

select * from EmployeeRecords_1

select * from EmployeeRecords_1 order by EmployeeID,Email

--Deleting duplicate data
select distinct * into #4 from EmployeeRecords_1

truncate table EmployeeRecords_1

insert into EmployeeRecords_1 select * from #4
--Now Check
select * from EmployeeRecords_1 order by Email


------------------------
--Records with Lower Employee ID should remain 

with CTE as (
select *,DENSE_RANK() over(partition by Email order by EmployeeId) as  [Dr]
From EmployeeRecords_1
)
--select * from CTE
delete from CTE where [Dr]=2

------------------------------------
select * into EmployeesRecords_2 from #4

select * from EmployeesRecords_2


--Retail the  record with higher Employee id
with CTE as (
select *,DENSE_RANK() over(partition by Email order by EmployeeID desc) [Dr] from EmployeesRecords_2
)
--select * from CTE
delete From CTE where [Dr]=2
-------------------------------------------

select * from EmployeeRecords_1  --EmployeeID=5 was retained 

select * from EmployeesRecords_2  --EmployeeID=6 was retained