CREATE OR REPLACE PROCEDURE add_employee(
    p_emp_id INT,
    p_emp_name VARCHAR(50),
    p_salary NUMERIC,
    p_dept_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employee(emp_id, emp_name, salary, dept_id)
    VALUES (p_emp_id, p_emp_name, p_salary, p_dept_id);
END;
$$;
--call procedure
CALL add_employee(101, 'Ram', 50000, 1);
