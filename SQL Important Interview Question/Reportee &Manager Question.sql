
-- Create the table
CREATE TABLE ReportingStructure (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    ManagerID INT
);

-- Insert data into the table
INSERT INTO ReportingStructure (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),  -- Alice Smith is at the top and reports to no one
(2, 'Bob Johnson', 1),     -- Bob Johnson reports to Alice Smith
(3, 'Carol White', 1),     -- Carol White reports to Alice Smith
(4, 'David Brown', 2),     -- David Brown reports to Bob Johnson
(5, 'Eve Davis', 2),       -- Eve Davis reports to Bob Johnson
(6, 'Frank Miller', 3);    -- Frank Miller reports to Carol White

select * from ReportingStructure

select b.EmployeeName [Reportee],a.EmployeeName [Managere] 
from ReportingStructure as a inner  join ReportingStructure as b
on a.EmployeeID=b.ManagerID

select b.EmployeeName [Reportee],a.EmployeeName [Managere] from ReportingStructure as a inner  join ReportingStructure as b
on a.EmployeeID=b.ManagerID
union all
select EmployeeName,null  [Manager]from ReportingStructure --null put because in which equal number of rows both table
where ManagerID is null

