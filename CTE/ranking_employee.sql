--find the heighest paid employee in each department.
--employee(name,dept,salary)
WITH ranked_emp AS (
    SELECT name,
           dept,
           salary,
           RANK() OVER(
               PARTITION BY dept
               ORDER BY salary DESC
           ) AS rnk
    FROM employee
)
SELECT *
FROM ranked_emp
WHERE rnk = 1;
