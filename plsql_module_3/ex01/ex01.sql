SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION calculate_annual_salary(
    p_employee_id IN NUMBER
) RETURN NUMBER
IS
    v_monthly_salary employees.salary%TYPE;
    v_annual_salary NUMBER;
BEGIN
    SELECT salary INTO v_monthly_salary
    FROM employees
    WHERE employee_id = p_employee_id;
    
    v_annual_salary := v_monthly_salary * 12;
    
    RETURN v_annual_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
        RETURN NULL;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN NULL;
END calculate_annual_salary;
/

