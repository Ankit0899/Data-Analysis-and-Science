
create database constraints

use constraints

---- Constraints

-- Condition that can be applied on columns of a table & these condition are to be followed while
-- insering records into the table
----------------------------------------------------------------------------------
--1. Not Null constraint

-- Case 1: We will have to create a new table

create table test_not_null(
Eid int not null,
age tinyint,
firstname varchar(256)
)

Select * from test_not_null

Select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME like 'test_not_null'


insert into test_not_null values(1,23,'Ankit')

insert into test_not_null values(null,23,'Ankit')

insert into test_not_null values(1,null,'raj')

-- Case 2  : the table already exists

-- We want to make firstname column nullable

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values(2,23,null)

alter table test_not_null
alter column age tinyint not null

-----------------------------------------------------------------------------------------
-- 2. Unique constraint
--It ensure that a column consists of unique values

--case1 : when the table already exists
alter table test_unique
add unique(lastname)



-- Case 2 : We need to create the table
Create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

Select * from test_unique

Select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME like 'test_unique'

insert into test_unique values (1,22,'Ankit', 'Adlak')

insert into test_unique values (1,24,'rohit', 'singh')

insert into test_unique values (null,24,'rohit', 'singh')

insert into test_unique values (null,34,'Nitin', 'singh')

truncate table test_unique

----------------------------------------------------------------------------------------------
-- 3. Check constraint
-- It check for certain condition that can be applied on the columns of a table if this condition is not
-- fulfilled, we will not be able to insert the records into the table

-- Case 1 : table doesn't exist
create table test_check(
EID int,
firstname varchar(256),
age tinyint check (age>10)
)
Select * from test_check

insert into test_check values(1,'Ankit', 9)
insert into test_check values(1,'Ankit', 23)

update test_check set EID = 11 Where EID = 1

-- Case 2 : table exist
alter table test_check
add check(EID>5)

insert into test_check values(1,'Ankit', 23)

insert into test_check values(7,'Atul', 23)


---------------------------------------------------------------------------------
-- 4. Default Constraint
-- This Constraint to provide default values to columns


-- Case 1 : The table does not exist
create table test_default (
EID int default 5,
age tinyint,
firstname varchar(256) default 'Ankit',
lastname varchar(256)
)

Select * from test_default

insert into test_default values (1,25,'Ankit','Adlak')

insert into test_default(lastname,age) values ('Singh',26)


-- Case 1 : The table exist

alter table test_default
add default 25 for age

insert into test_default (lastname) values('Gupta')