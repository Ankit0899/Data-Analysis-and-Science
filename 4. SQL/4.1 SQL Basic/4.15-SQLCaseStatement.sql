Select * from Products

--- Case Statement

-- Example1 : Add a column to Categorize each product into categories high, medium & low
Select
*,
case
	when Price > 500 then 'High'
	when Price < 500 and Price >=200 then 'Medium'
	else 'Low'
end as [High/Medium/Low]
from products


---------------------------- Test
Select
*,
case
	when Price > 500 then 'High'
	when Price < 500 and Price >=200 then 'Medium'
end as [High/Medium/Low]
from products



-- Example2: Provide Priority to Each category & Sort the Data According to that Priority
Select * from Products
order by
case
	when category in ('Electronics') then 1
	when category in ('Furniture') then 2
	else 3 
end



-------------------- Test
Select * from Products
order by
case
	when category in ('Electronics') then 1
	when category in ('Furniture') then 2
	when category = 'Accessories' then 3
end


-----------------------
-- Nested Case Statement
------------------------

Select * from Products

-- We need to group the data based on columns category & price into different categories i.e affordable & premium

Select
*,
case
	when category = 'Electronics' then
		case when price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end
	when category = 'Furniture' then 
		case when Price>=250 then 'Premium Furniture'
		else 'Affordable Furniture'
		end
else
		case when price>=200 then 'Premium Accessories'
		else 'Affordable Accessories'
		end
end as [Groups]
from products