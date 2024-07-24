SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER VER_PATIENT
BEFORE INSERT ON PATIENT
FOR EACH ROW
DECLARE
    CURSOR mycurseur IS SELECT * FROM PATIENT;
    var mycurseur%ROWTYPE;
BEGIN
    OPEN mycurseur;
    LOOP
        FETCH mycurseur INTO var;
        EXIT WHEN mycurseur%NOTFOUND;
        
        IF (:NEW.some_column = var.some_column) THEN
            DBMS_OUTPUT.PUT_LINE('Duplicate entry found for column: ' || var.some_column);
        END IF;
    END LOOP;
    
    CLOSE mycurseur;
END;
/
