--copying Data From existing table to the new table

--case 1:The New table simply does't exist
--case 2:The New table structure /New table exists


--case 1:
select * from dbo.sales


--All columns were copied from existing table  
--This statement will result in the creation of new_table_1 which will be having structure and records both
--same as that of dbo.sales table

select * into new_copy_table from dbo.sales
select * from new_copy_table

-----Certain Columns to be copies 
select ProductID,SalesDate into new_copy from dbo.sales
select top 0 * from new_copy


--case 2:New table structure/table already exists

select top 0 * into new_tables from dbo.sales

select * from  new_tables 


insert into new_table2 select * from dbo.sales

-----Copying Certain Columns
select * into new_table_3 from dbo.sales where 1=0
select * from new_table_3

insert into new_table_3 (ProductID,SalesDate) select ProductID,SalesDate from dbo.sales
select * from new_table_3

select ProductID,SalesDate into new_columns from dbo.sales
select * from New_columns