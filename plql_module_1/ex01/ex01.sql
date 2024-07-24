SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER VER
BEFORE INSERT ON etudiant
FOR EACH ROW
DECLARE
    num NUMBER;
BEGIN
    SELECT COUNT(*) INTO num FROM etudiant;
    IF num >= 12 THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERROR: Maximum number of students (12) reached.');
    END IF;
END;
/
