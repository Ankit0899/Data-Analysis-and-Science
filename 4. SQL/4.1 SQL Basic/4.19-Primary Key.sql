

-- Primary Key Constraint

-- Case 1 : When New is to be Created
Create Table test_pk_1 (
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)
Select * from test_pk_1

insert into test_pk_1 values (1,'M',23,'Atul')
insert into test_pk_1 values (1,'F',19,'Priya')
insert into test_pk_1 values (null,'M',25,'raj')

truncate table test_pk_1

-- Case 2 : table Already Exists

alter table test_pk_1
add primary key (age)