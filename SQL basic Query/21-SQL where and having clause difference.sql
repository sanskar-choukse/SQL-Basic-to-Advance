-- Interview Q diff b/W the where and having clause
--WHERE: filters rows before grouping (used with individual rows).
--HAVING: filters groups after grouping (used with GROUP BY)


select * from dbo.sales
where TotalAmount>=20300

select ProductID,sum(TotalAmount) as [Total sales] from dbo.sales
group by ProductID
having sum(TotalAmount)>=20300 --HAVING: filters groups after grouping

select ProductID,sum(TotalAmount) as [Total sales] from dbo.sales
where TotalAmount>=20300 --WHERE: filters rows before grouping
group by ProductID
having sum(TotalAmount)>=41300

--order Asce
select * from dbo.sales
where TotalAmount>=20300
order by ProductID

--order desc
select * from dbo.sales
where TotalAmount>=20300
order by ProductID desc


select ProductID,sum(TotalAmount) as [Total sales] from dbo.sales
where TotalAmount>=20300 --WHERE: filters rows before grouping
group by ProductID
having sum(TotalAmount)>=21300
order by sum(TotalAmount) 

