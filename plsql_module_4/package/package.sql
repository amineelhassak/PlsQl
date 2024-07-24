CREATE OR REPLACE PACKAGE employee_pkg IS
    PROCEDURE add_employee(
        p_name IN VARCHAR2,
        p_salary IN NUMBER
    );
    
    FUNCTION get_employee_salary(
        p_employee_id IN NUMBER
    ) RETURN NUMBER;
    
    v_max_salary NUMBER;
END employee_pkg;
/

