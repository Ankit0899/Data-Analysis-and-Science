select * from Employees_US

--- Like Operator use 
-- Wildcards

-- 1. % - It may represent 0,1 or multiple characters
-- 2. _ It exactly represent only 1 characters

--1) Find Employees whose Last Name starts with 'S'
Select * from Employees_US where LastName like 's%'

--2) Find Employees whose First Name ends with 'a'.
Select * from Employees_US where FirstName like '%a'

--3) Find Employees whose Department contains 'Eng'.
select * from Employees_US where Department like '%Eng%'

--4) Find Employees whose Last Name is exactly 5 characters long.
select * from Employees_US where LastName like '_____'

--5) Find Employees whose First Name starts with 'C' or 'D'.
Select * from Employees_US where FirstName like '[CD]%'

--6) Find Employees whose Last Name contains 'son'.
Select * from Employees_US where LastName like '%son%' 

--7) Find Employees whose First Name contains the letter 'i' as the second character.
Select * from Employees_US where FirstName like '_i%'

--8) Find Employees whose Last Name starts with any letter between 'A' and 'L'.
select * from Employees_US where LastName like '[A-L]%'

--9) Find Employees whose First Name does not contain 'o'.
select * from Employees_US where FirstName not like '%o%' 


--10) Find Employees whose Last Name ends with 'a' and is exactly 5 characters long.
Select * from Employees_US where LastName like '____%a'


--11) Find Employees whose Department starts with 'Mar' and ends with 'ing'.
Select * from Employees_US where Department like 'mar%ing'

--12) Find Employees whose First Name has an 'a' in the third position.
Select * from Employees_US where FirstName like '__a%'


--13) Find Employees whose Last Name starts with 'Br' or 'Bl'.
Select * from Employees_US where LastName like 'br%' or lastname like 'bl%'

--14) Find Employees whose First Name starts with a vowel.
Select * from Employees_US where FirstName like '[aeiou]%'

--15) Find Employees whose First Name does not start with a consonant.
Select * from Employees_US where FirstName not like '[^aeiou]%'

--16) Find Employees whose First Name starts with a consonant.
Select * from Employees_US where FirstName like '[^aeiou]%'

