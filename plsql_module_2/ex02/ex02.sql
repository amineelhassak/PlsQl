SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE PROC_PATIENT(num_med IN No_M%TYPE) IS
    CURSOR mycur IS 
        SELECT * 
        FROM Patient p 
        JOIN consultation c ON p.id = c.id;
    var mycur%ROWTYPE;
BEGIN
    OPEN mycur;
    LOOP
        FETCH mycur INTO var;
        EXIT WHEN mycur%NOTFOUND;
        
        IF var.NO_M = num_med THEN
            DBMS_OUTPUT.PUT_LINE('Patient ID: ' || var.id || 
                                 ', Patient Name: ' || var.name || 
                                 ', Consultation ID: ' || var.consultation_id || 
                                 ', Doctor ID: ' || var.NO_M);
        END IF;
    END LOOP;
    CLOSE mycur;
END PROC_PATIENT;
/

