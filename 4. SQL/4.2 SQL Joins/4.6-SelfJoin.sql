--- Self Join: A table can be join by itself
--- Ignoring the null value

SELECT * FROM table1;
SELECT * FROM table2;


Select * from table1 a INNER JOIN table1 as b
ON a.c1=b.c1

Select a.c1, b.c2 from table1 a INNER JOIN table1 as b
ON a.c1=b.c1

Select a.c1, b.c2 from table1 a JOIN table1 as b
ON a.c1=b.c1