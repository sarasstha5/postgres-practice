--its a temporary intermidate code that helps in finding the bigger outcome of the query. 
--example: you want salary of the employee whose salary is greater than average salary.

--table
--employees(id,name,dept,salary)
with dept_avg as(                  --this is the intermidate 
	dept,AVG(salary) as avg_salary
	from detail
	group by dept
)
select e.name,e.dept,e.salary,a.avg_salary   --this is the mainquery reference to intermidate
	from detail e
	join dept_avg a 
	on e.dept = a.dept
WHERE
  e.salary > a.avg_salary;
