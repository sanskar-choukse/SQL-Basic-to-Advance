select * from dbo.sales

select ProductID,
sum(TotalAmount) as [Total sales],
sum(Quantity) as [TotalQuantity],
avg(TotalAmount) as [Average sales],
avg(Quantity) as [Average Quantity]
from dbo.sales
group by ProductID
Having sum(TotalAmount)<42000 

--HAVING is used to filter groups after GROUP BY

select ProductID,
sum(TotalAmount) as [Total sales],
sum(Quantity) as [TotalQuantity],
avg(TotalAmount) as [Average sales],
avg(Quantity) as [Average Quantity]
from dbo.sales
group by ProductID
Having sum(TotalAmount)<42000 and sum(Quantity) = 56

/* The HAVING clause in SQL is used to filter groups after aggregation,while WHERE filters rows before grouping.
Use HAVING when you want to filter results based on aggregate functions
like SUM(), COUNT(), etc.*/
