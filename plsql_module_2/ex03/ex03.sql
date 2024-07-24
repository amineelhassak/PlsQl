CREATE OR REPLACE PROCEDURE add_personne(
    v_nomP Perssone.nomP%TYPE,
    v_age Perssone.age%TYPE,
    v_profession Perssone.profession%TYPE
) IS
    v_check NUMBER;
    v_id NUMBER;
BEGIN
    -- Vérifier le nombre actuel de personnes
    SELECT COUNT(*) INTO v_check FROM Perssone;
    
    IF v_check < 25 THEN
        -- Obtenir l'identifiant maximal actuel des personnes
        SELECT MAX(NumP) INTO v_id FROM Perssone;
        
        -- Insérer une nouvelle personne avec l'identifiant incrémenté
        INSERT INTO Perssone (NumP, nomP, age, profession) 
        VALUES (v_id + 1, v_nomP, v_age, v_profession);
        
        -- Valider la transaction
        COMMIT;
    ELSE
        -- Lever une erreur si le nombre de personnes dépasse 25
        RAISE_APPLICATION_ERROR(-20001, 'NBR PERSONNE SUP 25');
    END IF;
END add_personne;
/

