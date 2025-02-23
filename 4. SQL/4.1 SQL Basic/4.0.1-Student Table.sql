
Create Database Student
use Student

create table student_details (
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
event_date date,
distance decimal(5,2)
)

select * from student_details

INSERT INTO student_details (Student_Name, Gender, Age, event_date, distance)  
VALUES  
    ('John Doe', 'M', 20, '2024-02-23', 12.45),  
    ('Jane Smith', 'F', 22, '2024-02-20', 9.78),  
    ('Emily Johnson', 'F', 19, '2024-02-18', 15.30),  
    ('Michael Brown', 'M', 21, '2024-02-25', 11.25),  
    ('Chris Wilson', 'M', 23, '2024-02-21', 10.50),  
    ('Sarah Davis', 'F', 20, '2024-02-22', 14.80),  
    ('David Martinez', 'M', 24, '2024-02-19', 13.90),  
    ('Sophia Taylor', 'F', 18, '2024-02-17', 16.70),  
    ('James Anderson', 'M', 22, '2024-02-24', 12.60),  
    ('Olivia Thomas', 'F', 21, '2024-02-20', 11.95);
