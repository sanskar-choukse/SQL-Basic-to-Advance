-- Does't executed to Query to other windows because single pound(#)

select * from #temp1

select * from  #temp2

-- but this are executed  Query to other windows because 2 pound(##)

 select * From ##temp3