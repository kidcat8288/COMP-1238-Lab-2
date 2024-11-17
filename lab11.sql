##Assignments for a Specific Course
##Write a query to display the title and due_date of assignments for the course COMP1234.

SELECT course_id,title,due_date
FROM assignments
WHERE course_id LIKE '%COMP1234';

  

##Earliest Assignment Due Date
##Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()


SELECT min(due_date) 
FROM assignments
  

##Latest Assignment Due Date
##Write a query to find the latest assignment due date in the assignments table.

SELECT max(due_date) 
FROM assignments
  

##Assignments Due on a Specific Date
##Write a query to find the title and course_id of assignments due on 2024-10-08.

SELECT course_id,title
FROM assignments
WHERE due_date LIKE '%2024-10-08';



##Find All Assignments Due in October
##Write a query to display the title and due_date of assignments due in October 2024. Hint: use LIKE '2024-10%'

SELECT title,course_id 
FROM assignments
WHERE due_date LIKE '2024-10%'

  

Find the Most Recent Completed Assignment
