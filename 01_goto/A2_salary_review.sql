SET SERVEROUTPUT ON;
DECLARE
    v_salary NUMBER := 5500;
BEGIN
    IF v_salary >= 5000 THEN
        GOTO high_tier;
    ELSE
        GOTO standard_tier;
    END IF;

    <<high_tier>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' - Requires Executive Review.');
    GOTO finish_review;

    <<standard_tier>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' - Standard Review Approved.');
    GOTO finish_review;

    <<finish_review>>
    DBMS_OUTPUT.PUT_LINE('Review process ended.');
END;
/