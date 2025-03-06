-- Clustered Index
-- Non Clustered Index

 Create database Test_Index
 use Test_Index

 Create table Students (id int, name nvarchar(50), age int, gender varchar(20))

 Insert into Students values
 (1,'raj',23,'M'),
 (2,'nitin',25,'M'),
 (3,'Ankit',26,'M'),
 (4,'Nikita',23,'F'),
 (5,'Priya',24,'F')

 Select * from Students

 ---------------------------
Create clustered index ix_1 on students (id)

--
Create clustered index ix_2 on students (id desc)
-- Error
-- Cannot create more than one clustered index on table 'students'. 
-- Drop the existing clustered index 'ix_1' before creating another.

drop index ix_1 on students

Create clustered index ix_3 on students (gender desc, age asc)

drop index ix_2 on students


-----------------------------------------------------------------------------------
-- Non Clustered Index

Select * from Students

Create nonclustered index ix_2 on students (id)

Create nonclustered index ix_1 on students (gender desc, age asc)

drop index ix_2 on students