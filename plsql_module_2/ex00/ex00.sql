set serveroutput ON
CREATE OR REPLACE PROCEDURE myproc(nom in varchar2,post out varchar2)
AS
BEGIN
 SELECT poste into post form employe where (nom_employe = nom);
    exception
        when no_data_found then
            DBMS_OUTPUT.PUT_LINE("No data found !");
END myproc;/
