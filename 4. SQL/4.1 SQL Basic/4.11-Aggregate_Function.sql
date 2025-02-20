-- Aggregate Function :- Max Min Sum Count Avg

Use Sales_Database

Select * from Sales

----- Max Function
Select max(totalAmount) [Maximum Amount] from sales
Select max(saledate) [Max Sale Date] from sales
select max(paymentMethod) [No of Payment] from Sales

-- Maximum Quantity Sold for Each ProductID
select productID, max(quantity) [Maximum Quantity] from Sales
group by ProductID

-- Maximum total Amount for all distinct dates in saledate column
select saledate, max(totalamount) [Maximum Total Amount] from Sales
group by SaleDate


----- Min Function
Select * from Sales

Select min(totalAmount)[Mininum Amount] from sales
Select min(saledate) [Max Sale Date] from sales
Select min(quantity) [Min Quantity] from Sales

select min(paymentmethod) [Minimum Pay Method] from Sales

-- show Minimum total Amount for each Storeid

select storeid, min(totalamount) [Minimum Total Amount] from Sales
group by StoreID


--- Sum Function
Select * from Sales

select sum(quantity) [total Quantity] from sales

select sum(quantity) [total Quantity], sum(totalamount) [Sum of Amount] from sales


--- Avg Function
Select * from Sales

select Avg(quantity) [Avg Quantity] from sales

select Avg(quantity) [Avg Quantity], avg(totalamount) [Avg total Amount] from sales

-- Sum of Quantity, sum of total Amount. avg of quantity, avg of total amount for each distinct product

select distinct
ProductID,
sum(quantity) as [Total Quantity],
sum(totalamount) as [Sum of Amount],
avg(quantity) [Average Amount]
from Sales group by ProductID


/*   Sum of Quantity, sum of amount, avg of quantity & avg of amount for distinct combination of 
     ProductID and Store id
 */ 

 select distinct
 productid, storeid,
 sum(quantity) as [Sum Quantity],
 sum(totalamount) as [Sum amount],
 avg(quantity) as [Avg Quantity],
 avg(totalamount) as [Avg total Amount]
 from sales group by ProductID, storeid


 ---- Count Function
 Select * from Sales

 select count(*) [total records]from Sales

 select count(paymentmethod) [no of Records] from Sales

 select count(distinct productid) [No of Products] from Sales

 select Paymentmethod, count(*) [Pay method] from sales
 group by PaymentMethod


 -- Group by 
  Select * from Sales

  select paymentmethod, sum(totalamount) as [Sum of Sales] from sales
  group by PaymentMethod

  select productid, Paymentmethod, sum(totalamount) [Sum of sales] from Sales
  group by productid, Paymentmethod
  order by ProductID