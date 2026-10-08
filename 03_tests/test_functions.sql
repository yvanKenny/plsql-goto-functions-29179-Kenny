SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Testing Functions ---');
    DBMS_OUTPUT.PUT_LINE('Annual Salary (3000): ' || fn_annual_salary(3000));
    DBMS_OUTPUT.PUT_LINE('Tax for 4500: ' || fn_calculate_tax(4500));
    DBMS_OUTPUT.PUT_LINE('Dept for ID 10: ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Dept for ID 99: ' || fn_dept_name(99));
END;
/