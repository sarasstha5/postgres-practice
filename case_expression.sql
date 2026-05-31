--employee(id,first_name,last_name,department,salary,city)

select first_name, department,
case
   when salary>50000 then round(salary*0.1)
   else round(salary*0.15)
END as bonus
from employee;

"
select first_name ,salary
from employee
ORDER BY 
case
 when salary >50000 then 1
 else 2
end;

"

"
SELECT
    department,
    COUNT(CASE WHEN gender = 'M' THEN 1 END) AS males,
    COUNT(CASE WHEN gender = 'F' THEN 1 END) AS females
FROM employee
GROUP BY department;

"