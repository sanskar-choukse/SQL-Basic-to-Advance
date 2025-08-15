 -- (#) use for creat  a new table

 select * into #temp1
 from [dbo].[EmployeeRecord]


 select * from #temp1
 
 // Direct perform
 select * from dbo.EmployeeRecord

 select * into #temp2
 from  [dbo].[employees]

 select * from  #temp2

  // Direct perform
 select * from dbo.employees


  select * into ##temp3
 from  [dbo].[employees]

 select * From ##temp3

 //direct perform
 select * from dbo.employees
