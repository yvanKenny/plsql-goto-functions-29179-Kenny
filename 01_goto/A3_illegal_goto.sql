-- 1. THE ILLEGAL GOTO (Produces compilation error PLS-00375)
/*
DECLARE
    v_status VARCHAR2(10) := 'PENDING';
BEGIN
    GOTO inside_branch; -- Illegal jump into an IF block
    IF v_status = 'PENDING' THEN
        <<inside_branch>>
        DBMS_OUTPUT.PUT_LINE('Inside the IF block');
    END IF;
END;
/
*/

-- 2. THE LEGAL REWRITE (Fix)
SET SERVEROUTPUT ON;
DECLARE
    v_status VARCHAR2(10) := 'PENDING';
BEGIN
    IF v_status = 'PENDING' THEN
        DBMS_OUTPUT.PUT_LINE('Properly evaluated condition without illegal GOTO jump.');
    END IF;
END;
/