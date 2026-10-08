SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER := 15;
BEGIN
    IF v_num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is Positive.');
    ELSIF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is Negative.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Number is Zero.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Structured classification complete without GOTO.');
END;
/