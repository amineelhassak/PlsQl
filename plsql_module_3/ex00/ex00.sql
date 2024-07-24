SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION departement(num IN NUMBER)
RETURN VARCHAR2
IS
    result VARCHAR2(255);
BEGIN
    SELECT nom_departement INTO result
    FROM departement
    WHERE num_departement = num;
    
    RETURN result;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('DATA NOT EXISTE');
        RETURN NULL;
END departement;
/

