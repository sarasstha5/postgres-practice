--when more than one table
--employees(emp_id,first_name,salary,dept_id)
--departments(dept_id,department_name)
create view employee_info as
select 
e.emp_id,
e.first_name,
d.department_name
from employees e
join departments d on e.dept_id = d.dept_id;

--with one table
--employee(emp_id,name,salary,department)
CREATE VIEW it_employees AS
SELECT emp_id, name, salary
FROM employee
WHERE department = 'IT';
--to update single table is possible, it directly update the real employee table
UPDATE it_employees
SET salary = 55000
WHERE emp_id = 1;
-- view is not manly used for updates it is for security, simplify the repetative queries . it is a virtual table where queries act as table.
