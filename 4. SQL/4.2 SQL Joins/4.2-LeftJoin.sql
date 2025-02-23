--- LEFT JOIN OR LEFT OUTER JOIN

SELECT * FROM table1;
SELECT * FROM table2;

Select * from Table1 left join Table2 
ON 
Table1.c1 = Table2.c1


SELECT a.c1, a.c2 , b.c3
FROM table1 a LEFT OUTER JOIN table2 b
ON
a.c1 = b.c1