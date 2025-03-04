-- WINDOW FUNCTION:-
					-- Rank
					-- Dense Rank
					-- Row Number

Select * from Students
-------------------------
Select *, ROW_NUMBER() over(partition by subject order by marks desc) as [ROW NUMBER]
From Students

Select *, ROW_NUMBER() over(partition by subject order by marks) as [ROW NUMBER asc]
From Students

Select *, ROW_NUMBER() over(partition by student_name order by marks desc) as [ROW NUMBER asc]
From Students

-------------------------------------

Select *, RANK() over(partition by subject order by marks desc) as [RANK]
From Students

Select *, RANK() over(partition by student_name order by marks desc) as [RANK desc]
From Students
------------------------------------------

Select *, DENSE_RANK() over(partition by subject order by marks desc) as [DENSE RANK]
From Students

Select *, DENSE_RANK() over(partition by student_name order by marks desc) as [DENSE RANK dec]
From Students

Select *, DENSE_RANK() over(partition by student_name order by marks asc) as [DENSE RANK asc]
From Students