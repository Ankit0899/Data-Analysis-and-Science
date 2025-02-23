--- Left Anti Join And Right Anti Join

SELECT * FROM table1;
SELECT * FROM table2;


--- Left Anti Join
Select * from Table1 Left Join table2 on table1.c1 = table2.c1

Select * from Table1 Left Join table2 on table1.c1 = table2.c1
Where table2.c3 is null

Select a.c1,a.c2,b.c3 from Table1 a Left Join table2 b on a.c1 = b.c1
Where b.c3 is null


--- Right Anti Join
Select * from Table1 Right Join table2 on table1.c1 = table2.c1

Select * from Table1 Right Join table2 on table1.c1 = table2.c1
Where table1.c2 is null

Select a.c1,b.c1,b.c3 from Table1 a Right Join table2 b on a.c1 = b.c1
Where a.c2 is null

Select a.c1,b.c1,b.c3 from Table1 a Right Join table2 b on a.c1 = b.c1
Where a.c1 is null