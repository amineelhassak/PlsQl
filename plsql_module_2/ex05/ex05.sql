CREATE OR REPLACE PROCEDURE myproce(num in number, nom out varchar2)
IS
BEGIN
    SELECT nom_employe
    into nom from employe
    where (num_employe = num);
exception
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE('DATA NOUT FOUND !');
    nom := NULL;
END myproce;
/
