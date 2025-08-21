--LEAD = Looks forward (to the next row, or "future" data).  #use for show the future data
--LAG = Looks backward (to the previous row, or "past" data). #use for show the past data

/*
Key Points
Purpose: To compare the current row's value with the previous (LAG) or next (LEAD) row's value.

Why use them? They are much simpler and faster than joining a table to itself (a self-join).

Best for:
Calculating change over time (e.g., month-over-month sales growth).
Finding the time gap between events.
*/


create database [Profit DB]

use [profit db]

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);

select * from ProfitData

--To add a new column that shows next month's profit for each product
select *,LEAD(Profit) over(partition by Product order by MonthNumber) as [ next month's profit]
from ProfitData


--We don't want Product column inthe output but we want each month's total profit to be show by monthNumber & monthname,Also a
--new column should be added to show next month's total profit

select MonthNumber,MonthName,sum(Profit) as [Total Profit],
Lead(sum(Profit)) over(order by MonthNumber asc) as [next month's total profit]
From ProfitData
Group by MonthNumber,MonthName
order by MonthNumber