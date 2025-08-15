
select * from dbo.sales

select sum(Quantity)[total Quantity] from dbo.sales

select sum(Quantity) [Total Quantity] ,sum(TotalAmount)[Totalamount] from dbo.sales

select avg(Quantity) [Average Quantity] from dbo.sales

select avg(Quantity) [Average Quantity],avg(TotalAmount) [avg Amount] from dbo.sales

-- sum of Quantity,sum of Total Amount,avg Quantity,avg Total Amount for each distinct Product 

select ProductID,
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [sum of Amount ],
avg(Quantity) as [Average Quantity Sold],
avg(TotalAmount) as [Average Amount]
from dbo.sales
group by ProductID

select * from dbo.sales

--Sum of Quantity,Sum of amount,avg of Quantity,avg of amount for distinct combination of ProductID & StoreID 
select  
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [Sum of Amount],
avg(Quantity) as [Average Quantity],
avg(TotalAmount) as [Average TotalAmount],
ProductID,StoreID
from dbo.sales
Group by ProductID,StoreID

--or--

select ProductID,StoreID,
sum(Quantity) as [Total Quantity],
sum(TotalAmount) as [Sum of Amount],
avg(Quantity) as [Average Quantity],
avg(TotalAmount) as [Average TotalAmount]
from dbo.sales
Group by ProductID,StoreID


select * from dbo.sales
--count Total no of rows
select count(*) as [Number of Rows] from dbo.sales

--when we use count so NULL value will not count
--count payment method Rows
Select count(Paymentmethod) as [No of Payment row] from dbo.sales

--count unique ProductID 
select count(distinct ProductID) as [Distinct ProductID] from dbo.sales

 -- count Unique PaymentMethod
 select count(distinct PaymentMethod) as  [Distinct PaymentMethod] from dbo.sales

 select PaymentMethod,count(distinct PaymentMethod) as  [Distinct PaymentMethod] from dbo.sales
 group by PaymentMethod

 select PaymentMethod,count(PaymentMethod) as  [Pay mode] from dbo.sales
 group by PaymentMethod

 select PaymentMethod,count(*) as  [Pay mode] from dbo.sales
 group by PaymentMethod


