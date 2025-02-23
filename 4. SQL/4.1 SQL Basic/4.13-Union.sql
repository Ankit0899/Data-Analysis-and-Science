--- Union And Union All
--- For combine multiple Select statements

Select * from append1
Select * from append2

--- For Duplicate records you need to use union all operation
Select c1,c2,c3 From append1
union all
Select c1,c2,c3 From append2


--- For distinct records  you need to use union operation

Select c1,c2,c3 From append1
union 
Select c1,c2,c3 From append2


--- Number of columns present in the select list have to be same 
--- Data Types of the columns have to be same 
--- Order in Which columns are written has to the same 

Select c1,c2,c3 From append1
union 
Select c1,c2 From append2

--- Error for above Query 
--- All queries combined using a UNION, INTERSECT or EXCEPT operator must have an equal number of expressions in their target lists.


--- Aliase names Which are Specified in 1st select Statement will be assigned will bw Assigned to the columns


Select c1 [column1],c2 [column2],c3 [column3] From append1
union 
Select c1 [col1],c2 [col2],c3 [col3] From append2