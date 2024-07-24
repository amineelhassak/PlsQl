CREATE OR REPLACE PACKAGE BODY employee_pkg IS

    PROCEDURE add_employee(
        p_name IN VARCHAR2,
        p_salary IN NUMBER
    ) IS
    BEGIN
        INSERT INTO employees (name, salary) 
        VALUES (p_name, p_salary);
        COMMIT;
    END add_employee;

    FUNCTION get_employee_salary(
        p_employee_id IN NUMBER
    ) RETURN NUMBER IS
        v_salary NUMBER;
    BEGIN
        SELECT salary INTO v_salary
        FROM employees
        WHERE employee_id = p_employee_id;
        
        RETURN v_salary;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
    END get_employee_salary;

    v_max_salary NUMBER := 100000;

END employee_pkg;
/

