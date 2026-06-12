--find the department having more than 5 employees
-- this can be used in place of having clause

--employee(name,dept,salary)
WITH dept_count AS (
    SELECT dept,
           COUNT(*) AS total_emp
    FROM employee
    GROUP BY dept
)
SELECT *
FROM dept_count
WHERE total_emp > 5;
