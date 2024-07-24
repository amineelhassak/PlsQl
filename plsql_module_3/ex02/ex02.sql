SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION calculate_arithmetic_sum(
    p_first_term IN NUMBER,
    p_difference IN NUMBER,
    p_num_terms IN NUMBER
) RETURN NUMBER
IS
    v_sum NUMBER;
BEGIN
    v_sum := (p_num_terms / 2) * (2 * p_first_term + (p_num_terms - 1) * p_difference);
    
    RETURN v_sum;
END calculate_arithmetic_sum;
/

