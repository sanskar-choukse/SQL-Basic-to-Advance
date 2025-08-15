CREATE TABLE EmployeeSales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    Department VARCHAR(50),
    SaleAmount DECIMAL(10, 2),
    SaleDate DATE
);

--Step 2) Insert records into the table
INSERT INTO EmployeeSales (SaleID, EmployeeID, Department, SaleAmount, SaleDate)
VALUES 
(1, 101, 'Electronics', 500.00, '2023-08-01'),
(2, 102, 'Electronics', 300.00, '2023-08-03'),
(3, 101, 'Furniture', 150.00, '2023-08-02'),
(4, 103, 'Electronics', 250.00, '2023-08-04'),
(5, 104, 'Furniture', 200.00, '2023-08-02'),
(6, 101, 'Furniture', 450.00, '2023-08-05'),
(7, 102, 'Electronics', 700.00, '2023-08-05'),
(8, 103, 'Furniture', 100.00, '2023-08-06');

select * from  EmployeeSales
--Write a query to calculate the total sales amount for each department in the EmployeeSales table.
select Department,sum(SaleAmount) [Total Sales] from EmployeeSales 
group by Department;


--Write a query to count the number of sales made by each employee.
select EmployeeID,COUNT(SaleID)[Number of sales] from EmployeeSales
group by EmployeeID;


--Write a query to calculate the average sale amount for each department.
select Department,AVG(SaleAmount) [average sale amount] from EmployeeSales
group by Department;


--Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.
select EmployeeID,sum(SaleAmount)[total sales amount] from EmployeeSales
group by EmployeeID
having COUNT(SaleID)>1;


--Write a query to find the total sales for each month in 2023.
select Month(SaleDate) as Month,sum(SaleAmount) as [total sales] from EmployeeSales 
group by SaleDate;

