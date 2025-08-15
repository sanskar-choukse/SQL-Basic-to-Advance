Create Table product(
productID int primary key,
ProductName varchar(50),
Category varchar(20),
price DECIMAL(10,2),
StoctQuantity int,
Supplier Varchar(50),
Rating DECIMAL(3,1)
);


INSERT INTO product(productID,ProductName,Category,price,StoctQuantity,Supplier,Rating)
VALUES
(1,'Wireless Mouse','Electronic',25.99,150,'Tech Supplier',4.5),
(2,'Office chair','Furniture',120.00,85,'Comfort Co',4.7),
(3,'Water  bottel','Accessories',15.00,250,'AquaGear',4.3),
(4,'Laptop Backpack','Accessories',45.99,200,'Gearup',4.6),
(5,'Gamimg Laptop','Electronic',999.99,45,'Tech supplies',4.8),
(6,'desk Lamp','Furniture',35.00,120,'Light House',4.2),
(7,'bluetooth speaker','Electronic',59.99,95,'Soundwave',4.4),
(8,'Standing  Desk','Furniture',250.00,50,'Comfort Co',4.9),
(9,'Fitness Tracker','Electronic',129.95,95,'FitTech',4.4),
(10,'coffee','Accessories',250.10,350,'MugMasters',4.0);

--Example1 :Add a column to categorize each product into categories High,Medium,Low
select 
*,
 case 
     when price>500 then 'High'
	 when price<=500 and price>=200 then 'Medium'
	 else 'Low'
end as  [Hihg,Medium,Low]
from product
-----------------------TEST If you don't put else condetion-----------------------  
select 
*,
 case 
     when price>500 then 'High'
	 when price<=500 and price>=200 then 'Medium'
end as  [Hihg,Medium,Low]
from product

------------------------------------------------------------------------------------
--Example2: Provide priority to each columns and sort the data according to that Priority 

select * From product
order by 
case 
   when Category in ('Electronic') then 1
   when Category in ('Furniture') then 2
   else 3
end 
--------set the order according to your own,without else

select * From product
order by 
case 
   when Category in ('Electronic') then 1
   when Category in ('Furniture') then 2
   when Category = 'Accessories' then 3
end 
----------------------------------------------------------------------------------

select * from product
order by Category 

select * from product
order by Category desc

--"You should set the order according to your own preference, 
--not necessarily in ascending or descending.
----------------------------------------------------------------------------------

select  
   Rating,
   case 
       when Rating in (4.0) then 'First Rating'
	   when Rating in (4.2) then 'Second Rating'
	   when Rating in (4.3) then 'First Rating'
	   when Rating in (4.4) then 'First Rating'
	   when Rating in (4.5) then 'First Rating'
	   when Rating in (4.6) then 'First Rating'
	   when Rating in (4.7) then 'First Rating'
	   when Rating in (4.8) then 'First Rating'
	   when Rating in (4.8) then 'First Rating'
	   else 'Other'
	END as 'Rating _category'
from product 


select  
   *,
   case 
       when Rating in (4.0) then 'First Rating'
	   when Rating in (4.2) then 'Second Rating'
	   when Rating in (4.3) then 'First Rating'
	   when Rating in (4.4) then 'First Rating'
	   when Rating in (4.5) then 'First Rating'
	   when Rating in (4.6) then 'First Rating'    
	   when Rating in (4.7) then 'First Rating'
	   when Rating in (4.8) then 'First Rating'
	   when Rating in (4.8) then 'First Rating'
	   else 'Other'
	END as 'Rating _category'
from product

--------------------------------------
select 
*,
 case
    When StoctQuantity between 300 and 500 then 'very High Quantity'
	When StoctQuantity between 150 and 299 then 'High Quantity'
    When StoctQuantity between 50 and 149 then 'Medium Quantity'
    else 'Low Quantity'                                                         
   end as 'Quantity category'
from product

----------------------------------------Test
select 
*,
 case
    When StoctQuantity between 300 and 500 then 'very High Quantity'
	When StoctQuantity between 150 and 299 then 'High Quantity'
   end as 'Quantity category'
from product

--IF did 't not put some condition value and else value
 --When StoctQuantity between 50 and 149 then 'Medium Quantity'
 --   else 'Low Quantity'
 --**Answer showing a Null Value** 
--------------------------------Test complete-------------------



