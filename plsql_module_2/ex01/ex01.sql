SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE myproc IS
    CURSOR mycur IS SELECT * FROM emp;
    v_var mycur%ROWTYPE;
BEGIN
    OPEN mycur;
    LOOP
        FETCH mycur INTO v_var;
        EXIT WHEN mycur%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_var.empno);
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_var.ename);
        DBMS_OUTPUT.PUT_LINE('Job: ' || v_var.job);
        DBMS_OUTPUT.PUT_LINE('Manager ID: ' || v_var.mgr);
        DBMS_OUTPUT.PUT_LINE('Hire Date: ' || v_var.hiredate);
        DBMS_OUTPUT.PUT_LINE('Salary: ' || v_var.sal);
        DBMS_OUTPUT.PUT_LINE('Commission: ' || v_var.comm);
        DBMS_OUTPUT.PUT_LINE('Department ID: ' || v_var.deptno);
        DBMS_OUTPUT.PUT_LINE(''); -- Blank line for separation
    END LOOP;
    CLOSE mycur;
END myproc;
/

