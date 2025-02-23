-- full outer join : there are 3 contidition
--	- Inner Join
--	- Left Join
--	- Right Join


SELECT * FROM table1;
SELECT * FROM table2;


Select * from table1 FULL OUTER JOIN table2
ON
table1.c1=table2.c1


Select a.c1,a.c2,b.c3
from table1 a FULL OUTER JOIN table2 b
ON
a.c1=b.c1