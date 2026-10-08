SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Emp 101: ' || fn_validate_payroll(101));
    DBMS_OUTPUT.PUT_LINE('Emp 999: ' || fn_validate_payroll(999));
END;
/