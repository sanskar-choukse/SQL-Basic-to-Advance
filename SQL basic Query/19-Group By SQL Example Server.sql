select * from dbo.sales

select (Paymentmethod),sum(TotalAmount) from dbo.sales
group by PaymentMethod

select ProductID,Paymentmethod,sum(TotalAmount) as [sum of Sales]  from dbo.sales
group by ProductID,Paymentmethod 
order by ProductID
