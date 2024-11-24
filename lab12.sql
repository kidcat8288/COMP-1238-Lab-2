

--Write a query to list all courses, concatenating the course_name and semester fields with a hyphen between them. Like this:
--"IT Essentials - 2024-3"

SELECT course_name ||'-'||semester
FROM courses

--Write a query to find all courses that have a lab session scheduled on Friday. Include only the course_id, course_name, and lab_time in the result.

SELECT course_id,course_name,lab_time
FROM courses
WHERE lab_time LIKE 'Fri%'

--Write a query to list all assignments with a due date after the current date.

SELECT date()  ---2024-11-23
SELECT due_date
from assignments
WHERE due_date > '2024-11-23'

--Write a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed").
--Hint: GROUP BY

SELECT COUNT(*),status
FROM assignments
GROUP BY status

--Write a query to find the course with the longest course_name. Use the length() function to compare the lengths.
--Hint: either use ORDER BY ... DESC or do it in two steps - first find the length, then the course.

SELECT LENGTH(course_name),course_name
from courses
order by LENGTH(course_name) DESC


--Write a query to return a list of all course names in uppercase.

SELECT upper(course_name)
from courses


--Write a query to list the titles of all assignments that are due in September, regardless of year. Use the LIKE operator to filter due_date.

SELECT due_date,title
from assignments
WHERE due_date LIKE '2024-09%' or due_date LIKE '2025-09%';



--Write a query to find all assignments where the due_date is missing. Note, there are no assignments with NULL due_dates initially, but one was added if you ran the INSERT statement in the examples above. Hint: due_date IS NULL

SELECT due_date,title
from assignments
WHERE due_date IS NULL
