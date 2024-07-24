CREATE OR REPLACE TRIGGER check_appartement
BEFORE INSERT ON appartement
FOR EACH ROW
DECLARE
    v_check number;
BEGIN
    select count(*) into v_number from appartement where numim = :new.numim;
    IF (v_number >= 9) THEN
        raise_application_error(-20001,"error appartement plein !");
    END IF;
END;/
