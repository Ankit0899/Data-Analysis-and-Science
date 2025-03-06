
-- Recursive CTE
-- Factorial of a given Number


-- two Part - 1. Anchor Query  2. Recursive Query

with [R CTE] as (
-- Anchor Query
Select 1 as n
Union all


-- Recursive Query
Select n+1 from [R CTE] where n<=4

)
Select exp(sum(log(n))) [Factorial] from [R CTE]

--------------------------------

with [R CTE] as (
-- Anchor Query
Select 1 as n
Union all


-- Recursive Query
Select n+1 from [R CTE] where n<=4

)
Select * from [R CTE]