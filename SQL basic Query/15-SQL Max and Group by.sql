--use column for database  name space 
create database [Sales Database]

use [Sales Database]

-----The difference between CREATE TABLE dbo.sales and CREATE TABLE sales in SQL Serve--------

--CREATE TABLE dbo.sales = Table hamesha dbo schema me banega.
--CREATE TABLE sales = Table aapke user ke default schema me banega, jo ki dbo ya kuch aur bhi ho sakta hai.

Hamesha schema ka naam specify karna achha hai, taaki clarity bani rahe.

create table dbo.sales(
   ProductID INT,
   SalesDate Date,
   Quantity INT,
   TotalAmount DECIMAL (10,2),
   CustomerID INT,
   StoreID INT,
   SalespersonID INT,
   PaymentMethod varchar(50)
);


insert into dbo.sales(ProductID,SalesDate,Quantity,TotalAmount,CustomerID,StoreID,SalespersonID,PaymentMethod)
Values 
(1,'2023-08-01',10,200.00,101,1,201,'Credit Card'),
(2,'2024-08-13',4,2430.00,102,3,208,'Cash'),
(3,'2025-04-10',1,20530.00,103,1,204,'Credit Card'),
(1,'2022-06-15',18,20680.00,104,9,201,NULL),  --NULL value in payment method
(3,'2023-03-21',9,2008.00,105,5,206,'Credit Card'),
(6,'2025-06-30',9,2006.00,106,11,201,'Cash'),
(2,'2024-08-13',15,20056.00,107,41,203,'Cash'),
(4,'2024-05-31',20,20008.00,108,16,201,NULL); --NULL value in payment method


select * from dbo.sales

select MAX(TotalAmount) from dbo.sales --check max value

select max(TotalAmount) [Maximum Amount] from dbo.sales --set column name

select max(SalesDate) [Max SalesDate] from dbo.sales  --check max sales date

select max(PaymentMethod) [Maxpayment Method] from dbo.sales  --check max payment method

 --Maximum Quantity sold for each productID

select ProductID,max(Quantity) [Maximum Quantity] from dbo.sales
 Group by ProductID

 -- Maximum Total amount for all distict data in salesdate column
 select SalesDate,max(TotalAmount) [Max total amount] from dbo.sales
 group by SalesDate








