##Assignments for a Specific Course
##Write a query to display the title and due_date of assignments for the course COMP1234.

SELECT course_id,title,due_date
FROM assignments
WHERE course_id LIKE '%COMP1234';

##Earliest Assignment Due Date
##Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()

SELECT min(due_date)
FROM assignments;
  
##Latest Assignment Due Date
##Write a query to find the latest assignment due date in the assignments table.

SELECT max(due_date)
FROM assignments;
  
##Assignments Due on a Specific Date
##Write a query to find the title and course_id of assignments due on 2024-10-08.

SELECT course_id,title
FROM assignments
WHERE due_date LIKE '%2024-10-08';

##Find All Assignments Due in October
##Write a query to display the title and due_date of assignments due in October 2024. Hint: use LIKE '2024-10%'

SELECT title,course_id
FROM assignments
WHERE due_date LIKE '2024-10%';

##Find the Most Recent Completed Assignment

SELECT *
from assignments
WHERE due_date ='2024-09-10';

##Count of "Not Started" Assignments
##Write a query to find the total number of assignments with a status of "Not Started". Remember to use single quotes for strings in SQL.

SELECT COUNT(*)
FROM assignments
WHERE status = 'Not Started';

##Find Courses with Labs on Tuesday
##Write a query to find the course_id and course_name of courses that have lab sessions on Tuesday. Hint: use LIKE 'Tue%

SELECT course_id,course_name
FROM courses
WHERE lab_time LIKE 'Tue%';



