
-- isnull, coalesce Function

Select * from Customers

-- Is Null Function
Select ISNULL(null,'1 St value null')

Select isnull('abx',null)

Select isnull(null,null)


-- coalesce Function -> Its return 1st non null value

Select coalesce('A','B','C')

Select coalesce(null,'B','C')

Select coalesce(null,null,'C')


-------------------------------------
Select * from Customers

Select customerID, email, PhoneNumber from Customers

Select customerID, isnull(email,'Email NA'), isnull(phonenumber, 'Ph No NA') from Customers

Select CustomerID, coalesce(email,phonenumber,'Contact Na') [Coalesce Function] from Customers