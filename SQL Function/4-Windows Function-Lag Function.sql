--LAG = Looks backward (to the previous row, or "past" data). #use for show the past data
--LEAD = Looks forward (to the next row, or "future" data).  #use for show the future data


/*
Key Points
Purpose: To compare the current row's value with the previous (LAG) or next (LEAD) row's value.

Why use them? They are much simpler and faster than joining a table to itself (a self-join).

Best for:
Calculating change over time (e.g., month-over-month sales growth).
Finding the time gap between events.
*/


select * from ProfitData

--To add a new column that shows Previous month's profit for each product
select *,Lag(Profit) over(partition by Product order by MonthNumber) as [ previous month's profit]
from ProfitData


--We don't want Product column inthe output but we want each month's total profit to be show by monthNumber & monthname,Also a
--new column should be added to show previous month's total profit

select MonthNumber,MonthName,sum(Profit) as [Total Profit],
Lag(sum(Profit)) over(order by MonthNumber asc) as [previous month's total profit]
From ProfitData
Group by MonthNumber,MonthName
order by MonthNumber