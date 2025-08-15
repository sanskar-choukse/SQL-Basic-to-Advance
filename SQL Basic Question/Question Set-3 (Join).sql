
-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA'),
(5, 'Eve', 'Australia');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID)
VALUES 
(101, 1, '2024-08-01', 1001),
(102, 1, '2024-08-03', 1002),
(103, 2, '2024-08-04', 1001),
(104, 3, '2024-08-05', 1003),
(105, 5, '2024-08-06', 1004);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1001, 'Laptop', 1000),
(1002, 'Smartphone', 700),
(1003, 'Tablet', 500),
(1004, 'Headphones', 200),
(1005, 'Smartwatch', 300);

select * from Customers

select * from Orders

select * from Products

--1) Write an SQL query to find the names of customers who have placed an order.
select * from Customers C inner join Orders O on C.CustomerID=O.CustomerID
--but we want to know the customer name
select distinct CustomerName from Customers C inner join Orders O on C.CustomerID=O.CustomerID --Inner join


--2) Find the list of customers who have not placed any orders.
select * from customers C  left join Orders O on C.CustomerID=O.CustomerID
where O.OrderID is null
--but we want to know the customer name
select distinct CustomerName from Customers C left join Orders O on C.CustomerID=O.CustomerID
where  O.OrderID is null ---left Anti join

--3) List all orders along with the product name and price.
select * from Orders O join Products P on O.ProductID=P.ProductID --left join
--but we want to know the Product name and Price
select distinct  ProductName,Price from Orders O join Products P on O.ProductID=P.ProductID

--4) Find the names of customers and their orders, including customers who haven't placed any orders.
select distinct CustomerName,OrderID from Customers C left join Orders O on C.CustomerID=O.CustomerID --Left join 

--5) Retrieve a list of products that have never been ordered.
select  distinct ProductName from Products  P left join Orders O on P.ProductID=O.ProductID 
where O.CustomerID is null  --Left Anti Join

--6) Find the total number of orders placed by each customer.
select CustomerName,COUNT(OrderID) [Number of orders] from Customers c inner join Orders o  on c.CustomerID=o.CustomerID
group by CustomerName

--OR 
select CustomerName,COUNT(OrderID) [Number of orders] from Customers c left join Orders o  on c.CustomerID=o.CustomerID
group by CustomerName


--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
select * from Customers c left join Orders o on c.CustomerID=o.CustomerID left join Products p on o.ProductID=p.ProductID

--but we want to know the customers,productsID,ProductName,order date

select CustomerName,p.Price,ProductName,OrderDate
from Customers c left join Orders o on c.CustomerID=o.CustomerID left join Products p on o.ProductID=p.ProductID

