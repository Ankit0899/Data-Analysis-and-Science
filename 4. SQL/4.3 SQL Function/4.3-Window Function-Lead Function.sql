-- Lead Function

Select * from ProfitData

-- To add a new Colum that shows next month's for each product

Select *,lead(Profit) over(partition by product order by monthnumber) [Next Months Profit]
from ProfitData

-- We dont't want product column in the output but we want each months total profit to be show by 
-- monthnumber & month name , also a new column should be added to show next month's total profit

Select MonthNumber, MonthName, sum(profit) [Total Profit],
lead(sum(profit)) over(order by Monthnumber asc) [Next Months Profit]
from ProfitData
group by MonthNumber, MonthName
order by MonthNumber