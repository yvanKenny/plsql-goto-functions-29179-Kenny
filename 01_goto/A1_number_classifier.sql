SET SERVEROUTPUT ON;
DECLARE
    v_num NUMBER := 15; -- Test with negative, zero, and positive numbers
BEGIN
    IF v_num > 0 THEN
        GOTO positive_label;
    ELSIF v_num < 0 THEN
        GOTO negative_label;
    ELSE
        GOTO zero_label;
    END IF;

    <<positive_label>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is Positive.');
    GOTO end_label;

    <<negative_label>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_num || ' is Negative.');
    GOTO end_label;

    <<zero_label>>
    DBMS_OUTPUT.PUT_LINE('Number is Zero.');
    GOTO end_label;

    <<end_label>>
    DBMS_OUTPUT.PUT_LINE('Classification complete.');
END;
/