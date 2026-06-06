--students(id,name)
--enrollment(enrollment_id,s_id,c_id,enrollment_date) 
--courses(c_id,name,fee)
SELECT
    s.name,
    COUNT(e.c_id) AS total_courses
FROM students s
JOIN enrollment e
    ON s.s_id = e.s_id
GROUP BY s.name;
