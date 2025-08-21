--isnull & Coalesce Function

-- The ISNULL() function in SQL is primarily used to handle NULL values by replacing them with a specified value.

--The COALESCE() function is used in several common situations to handle NULL (or empty) values effectively. 

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

select * from Customers

--isnull
select isnull(null,'fill null value')

select isnull('abx',null)

select isnull(null,null)

select coalesce('A','B','C')

select coalesce(null,'A','B')

select coalesce(null,null,'c')


-----------------------------------------------
select * from Customers

select CustomerID,Email,PhoneNumber From Customers

select CustomerID,isnull(Email,'Email NA'),isnull(PhoneNumber,'Ph_no Na') From Customers

select CustomerID,Coalesce(Email,PhoneNumber,'Fill null') as [Coalesce Function] From Customers
