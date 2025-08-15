
select * from Sales

select min(Quantity)[Minimum Quantity] from dbo.Sales

select min(salesDate)[Min salesDate]from dbo.sales

select min(PaymentMethod) [minPaymentmethod] from dbo.sales 

-- Show minimum Total amount for each storeID 
select StoreID,min(TotalAmount) [Min totalAmount] from dbo.sales
Group by StoreID