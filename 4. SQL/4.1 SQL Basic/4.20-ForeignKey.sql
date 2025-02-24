

--- Foreign Key
-- Case 1 : When New is to be Created

Create table test_primary_key (
ID int primary key,
name varchar(256)
)

Select * from test_primary_key

insert into test_primary_key values (1,'Raj'),(2,'Ravi'),(3,'Ankit') 


Create table test_foreign_key (
ID int foreign key references test_primary_key(ID),
course varchar(256)
)

Select * from test_foreign_key

insert into test_foreign_key values (1,'A')
insert into test_foreign_key values (null,'B')
insert into test_foreign_key values (5,'C')
insert into test_foreign_key values (2,'C')



-- Case 2 : table Already Exists
Create table test_foreign_key_2 (
ID int,
course varchar(256)
)

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)

Select * from test_foreign_key_2