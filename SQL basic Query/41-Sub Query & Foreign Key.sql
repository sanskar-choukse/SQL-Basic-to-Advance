-- Foreign KEY:Ek table ka column (Foreign Key) doosre table ke Primary Key column se link hota hai.

/* oreign Key kya hai?
Ek Foreign Key kisi database table ka ek column (ya columns ka group) hota hai jo doosre table se link banane ka kaam karta hai. Yeh link doosre table ki Primary Key ki value se match karke banta hai.

Ise do lists ke beech ek cross-reference ki tarah sochiye.

Jis table mein Foreign Key hoti hai, use child table kehte hain.

Jis table ko yeh refer karti hai (jismein Primary Key hoti hai), use parent table kehte hain.

Hamare example ke anusaar:

Parent Table: Customers (jismein customer_id iski Primary Key hai)

Child Table: Orders (jismein customer_id iski Foreign Key hai)

Orders table mein customer_id ki value wahi honi chahiye jo Customers table mein pehle se maujood ho.*/

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



-- Insert data into Customers table
INSERT INTO Customers (customer_id, customer_name, email)
VALUES 
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Johnson', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com');

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES 
(101, 1, '2024-07-15', 250.00),
(102, 1, '2024-08-05', 300.00),
(103, 2, '2024-08-10', 150.00),
(104, 3, '2024-06-25', 100.00);

select * from Customers
select * from  Orders

--I have to see the customer detail of Augest month
select * from Customers
where customer_id in (
select distinct customer_id From Orders where order_date between '2024-08-01' and '2024-08-31'
)

--I have not to see the customer detail of Augest month
select * from Customers 
where customer_id in (
select distinct customer_id from orders where order_date not between '2024-08-01' and  '2024-08-31'
)

--Fetch the data employess table where salary > average salary

select * from employees
where Salary > (select AVG(Salary) from employees)

select AVG(salary) [Average salary] from employees
