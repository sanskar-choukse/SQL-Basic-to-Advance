-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry

select * from EmployeeRecords

Method 1-->Deleting Duplicate record

select * from EmployeeRecords
order by EmployeeID,EmployeeName,ManagerID

--row_number in which show duplicate data value different from unique data value
with CTE as(
select *,ROW_NUMBER() over(partition by EmployeeID,EmployeeName,ManagerID order by EmployeeID) as [Row number] from EmployeeRecords
)
--select * from CTE
delete From CTE where [Row number]=2 


------------------------------------------------
--Save backup data
select * into  back_up from EmployeeRecords

select * from back_up
------------------------------------------------

method 2-->Deleting duplicate Record

select distinct * into #5 from back_up

select * from #5

truncate table back_up

insert into back_up select * from #5

--now Check
select * from back_up 
 