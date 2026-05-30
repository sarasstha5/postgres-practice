--detail(id,name,gmail,dept,salary,hire_date)
"
select dept,COUNT(id)
from detail
GROUP BY dept;
"
  
"
select dept,AVG(salary)
from detail
GROUP BY dept;
"

"
select dept,AVG(salary) as average_salary
from detail
GROUP BY dept;
"
-- group by used to bind the similar row with same values together and do calculation.commonly used with aggregate function
