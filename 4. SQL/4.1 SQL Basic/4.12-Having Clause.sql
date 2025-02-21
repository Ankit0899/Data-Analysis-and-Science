
select * from Sales

-- Having Clause

-- total sales, Avg Sales, Total Quantity, Avg Quantity for each Distinct product
select  
ProductID,
sum(Totalamount) [Sum of sales],
sum(Quantity) [Total Quantity],
avg(Totalamount) [Avg Total Amount],
avg(Quantity) [Avg Quantity]
from Sales
group by ProductID
having sum(Totalamount)<700 and sum(Quantity) = 21


-- Where Clause
select * from Sales

select * from Sales
where TotalAmount>=161

select ProductID, sum(totalamount) [Sum of sales] from Sales
group by ProductID
having sum(TotalAmount)<700

select ProductID, sum(totalamount) [Sum of sales] from Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by ProductID desc

select ProductID, sum(totalamount) [Sum of sales] from Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by sum(totalamount) asc