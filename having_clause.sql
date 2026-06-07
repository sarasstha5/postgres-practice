--detail(id,name,email,dept,salary,hire_date)
--having clause is used after 'GROUP BY' which is also used to filter the grouped row.mostly used with aggregate functions
--where clause is used to filter singlw row written before 'GROUP BY'
select dept,count(*) as total_employee
from detail
GROUP BY dept
having count(*)>2;  -- this gives department with more than 2 employee. 
