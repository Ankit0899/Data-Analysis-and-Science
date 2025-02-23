--- RIGHT JOIN OR RIGHT OUTER JOIN


SELECT * FROM table1;
SELECT * FROM table2;

Select * from table1 RIGHT JOIN table2 ON table1.c1 = table2.c1
--- Both are same 
Select * from table1 RIGHT OUTER JOIN table2 ON table1.c1 = table2.c1


Select a.c1,a.c2,b.c3
FROM Table1 a RIGHT OUTER JOIN Table2 b
ON 
a.c1 = b.c1