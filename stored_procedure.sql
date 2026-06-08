--A  stored procedure is a precompiled group of SQL statements stored in the database that can be executed as a single unit.
--Instead of writing the same SQL queries again and again, you define them once as a procedure and just call it when needed.

CREATE OR REPLACE PROCEDURE update_salary(
    emp_salary NUMERIC,
    emp_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE detail
    SET salary = emp_salary
    WHERE id = emp_id;
END;
$$;
--to call the sql query stored in procedure
Call update_salary(32423234,1)

--without parameter
CREATE or replace PROCEDURE GetAllEmployees()
language plpgsql
AS $$
BEGIN
    SELECT * FROM employee;
END;
$$;
--calling procedure
CALL GetAllEmployees()
