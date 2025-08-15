select * from Customers

select * from Orders

select * from Products

 
--1)Identify pairs of customers who line in the same country 
select C.CustomerName,D.CustomerName from Customers C inner join Customers D on C.Country=D.Country and C.CustomerID<>D.CustomerID and  C.CustomerID>D.CustomerID


--2)Find  the customer who has spent the most on their orders
select CustomerName,sum(Price) [Amount spent] from Customers c inner join 
Orders o on c.CustomerID=o.CustomerID inner join Products p on o.ProductID=p.ProductID
group by CustomerName
order by [Amount spent] desc

--or--

select CustomerName,sum(Price) [Amount spent],DENSE_RANK() over(order by sum(Price) desc) [ODR]
from Customers c inner join 
Orders o on c.CustomerID=o.CustomerID inner join Products p on o.ProductID=p.ProductID
group by CustomerName

--or--

select Customername from 
(select CustomerName,sum(Price) [Amount spent],DENSE_RANK() over(order by sum(Price) desc) [ODR]
from Customers c inner join 
Orders o on c.CustomerID=o.CustomerID inner join Products p on o.ProductID=p.ProductID
group by CustomerName) m where ODR=1

--3)Find customers who have ordered more than one type of products
select CustomerName,COUNT(ProductID) [Product] from Customers C  inner join Orders O on C.CustomerID=O.CustomerID 
group by CustomerName
having COUNT(ProductID)>1

--or--

select CustomerName from Customers C  inner join Orders O on C.CustomerID=O.CustomerID 
group by CustomerName
having COUNT(ProductID)>1

--4)List all product and thier corresponding orders,using a RIGHT JOIN,including products that have never been ordered.
select OrderID,p.ProductID,ProductName from Orders o right join Products p on o.ProductID=p.ProductID

--5)Retrieve all orders placed by customers from the USA.
 select OrderID from Customers c inner join Orders o on c.CustomerID=o.CustomerID where Country in ('USA')

--6)Find the  names of customers who have ordered a product priced above $500
select distinct CustomerName from Customers c inner join Orders o on c.CustomerID=o.CustomerID inner join Products p  on o.ProductID=p.ProductID
where Price>500

--7)Find customer who have ordered the same product more than once.
select CustomerName from Customers c inner join Orders o on c.CustomerID=o.CustomerID
group by  CustomerName,ProductID
having count(OrderID)>1

--or--

select distinct m.CustomerName from
(select CustomerName,ProductID,count(OrderID) from Customers c inner join Orders o on c.CustomerID=o.CustomerID
group by  CustomerName,ProductID
having count(OrderID)>1) m

--or

select CustomerName ,ProductID,count(OrderID) from Customers c inner join Orders o on c.CustomerID=o.CustomerID
group by  CustomerName,ProductID
having count(OrderID)>1




