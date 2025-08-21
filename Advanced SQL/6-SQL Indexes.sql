/*--Index:Index Like a book’s index, it helps to find data faster.
        :Isse database ko poori table scan nahi karni padti; direct relevant rows mil jaati hain
*/
select * from Employees

create index IX_1 on Employees(Salary Desc)

create index IX_2 on Employees(FirstName,LastName)

drop index Employees.IX_1