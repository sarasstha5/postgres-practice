--find the department whose salary is above the company's sverage salary.
WITH company_avg AS (
    SELECT AVG(salary) AS company_avg
    FROM employee
),
dept_avg AS (
    SELECT dept,
           AVG(salary) AS dept_avg
    FROM employee
    GROUP BY dept
)
SELECT d.*
FROM dept_avg d
CROSS JOIN company_avg c
WHERE d.dept_avg > c.company_avg;
