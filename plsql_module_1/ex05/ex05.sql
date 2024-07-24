CREATE OR REPLACE TRIGGER salaire_employe
BEFORE UPDATE OF salaire on employe
FOR EACH ROW
DECLARE
    exp EXCEPTION;
BEGIN
    if (:old.salaire > :new.salaire) then
        RAISE exp;
    END IF;
EXCEPTION
    when exp then
         RAISE_APPLICATION_ERROR(-20001, 'ERROR:SALAIRE');
END;
/
