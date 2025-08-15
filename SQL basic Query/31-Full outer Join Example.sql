/*"A full outer join returns all data from both tables, and if there’s no match, it fills in the missing side with NULLs."*/
/* "Full outer join दोनों टेबल से सभी डेटा दिखाता है और अगर माचिंग डेटा नहीं है, तो दूसरी तरफ NULL दिखाता है।"*/

select * from tableA

select * from tableB

select * from tableA full outer join tableB 
on tableA.C1=tableB.C1

select a.C1,a.C2,b.C3 from tableA as a full outer join tableB as b
on a.C1=b.C1
