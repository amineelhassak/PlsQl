CREATE OR REPLACE TRIGGER auto_num
BEFORE INSERT ON etudiant
FOR EACH ROW
DECLARE
    num NUMBER;
BEGIN
    SELECT COUNT(*) INTO num FROM etudiant;
    
    IF (num = 0) THEN
        :new.num_etudiant := 1;
    ELSE
        SELECT MAX(num_etudiant) INTO num FROM etudiant;
        :new.num_etudiant := num + 1;
    END IF;
END;
/

