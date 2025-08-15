--Inner Join: Joins two different tables (like Orders and Customers) and returns only rows where there's a match in both tables.

--Self Join: Joins a table to itself (same table appears twice with different names/aliases) to compare or relate its own rows (like Employees compared with Employees for manager relationships


select * from tableA

select * from /*tableA*/ as a Inner join /*tableA*/ as b 
on a.C1=b.C1

select * from tableA as a Inner join tableA as b 
on a.C1=b.C1 

select a.C1,b.C2 From tableA as a inner Join tableA as b
on a.C1=b.C1

select a.C1,b.C2 From tableA as a Join tableA as b
on a.C1=b.C1