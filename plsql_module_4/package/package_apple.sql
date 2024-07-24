BEGIN
    employee_pkg.add_employee('John Doe', 50000);

    DECLARE
        v_salary NUMBER;
    BEGIN
        v_salary := employee_pkg.get_employee_salary(101);
        DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_salary);
    END;
END;
/

