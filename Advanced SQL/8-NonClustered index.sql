/* Non-Clustered Index → Data is separate, and the index keeps pointers to the data location.(Like the index page of a book telling
                         which topic is on which page).
                       →A table can have many non-clustered indexes.
-----*/
--NOTE:Clustered Index Fast than Non-Clustered Index

select * from Students

create nonclustered index IX_1 on Students(id asc) 

create nonclustered index IX_2 on Students (age asc,gender desc)

drop index IX_2 on Students
