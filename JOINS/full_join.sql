--employees(emp_id,first_name,salary,dept_id)
--Departments(dept_id,department_name)
select * from employees FULL JOIN Departments
ON
employees.dept_id = Departments.dept_id;
