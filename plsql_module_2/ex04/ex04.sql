CREATE OR REPLACE PROCEDURE insert_P(
    nom Personne.nomP%TYPE,
    age Personne.age%TYPE,
    profession Personne.profession%TYPE
) IS
    date_A Occupation.dateArrive%TYPE;
    date_D Occupation.dateDepart%TYPE;
    date_C Immeuble.dateConstruction%TYPE;
    id Personne.numP%TYPE;
BEGIN
    -- Obtenir l'identifiant maximal actuel des personnes
    SELECT MAX(numP) INTO id FROM Personne;
    
    -- Obtenir les dates d'arrivée et de départ pour la prochaine personne (id + 1) avec une date de départ non nulle
    SELECT dateArrive, dateDepart 
    INTO date_A, date_D 
    FROM Occupation 
    WHERE NumP = id + 1 AND dateDepart IS NOT NULL;
    
    -- Obtenir la date de construction de l'immeuble correspondant au nom donné
    SELECT dateConstruction 
    INTO date_C 
    FROM Immeuble 
    WHERE nomP LIKE nom;
    
    -- Vérifier la condition des dates et insérer la nouvelle personne si la condition est remplie
    IF date_C < date_A AND date_A < date_D THEN 
        INSERT INTO Personne (numP, nomP, age, profession) 
        VALUES (id + 1, nom, age, profession);
    END IF;
END insert_P;
/

