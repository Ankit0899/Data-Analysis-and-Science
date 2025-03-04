-- Rank
-- Dense Rank
-- Row Number

Select * from Students


-- ROW NUMBER -- In case of a tie ROW NUMBERS are assigned randomly
Select *, ROW_NUMBER() over(order by marks desc) as [Row Number]
from Students

-- Rank - if there's a tie next rank/ranks will be skipped
Select *, RANK() over(order by marks desc) as [Rank Function]
from Students

-- Danse Rank - if there's a tie ranks will not be skipped
Select *, DENSE_RANK() over(order by marks desc) as [DENSE RANK]
from Students

-----------------------------------------------------------

-- ROW NUMBER -- In case of a tie ROW NUMBERS are assigned randomly
Select *, ROW_NUMBER() over(order by marks asc) as [Row Number]
from Students

-- Rank - if there's a tie next rank/ranks will be skipped
Select *, RANK() over(order by marks asc) as [Rank Function]
from Students

-- Danse Rank - if there's a tie ranks will not be skipped
Select *, DENSE_RANK() over(order by marks asc) as [DENSE RANK]
from Students