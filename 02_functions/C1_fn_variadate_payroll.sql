CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id NUMBER)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE emp_id = p_emp_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than 0';
    ELSIF v_salary > 20000 THEN
        RETURN 'FLAGGED: Salary exceeds normal threshold';
    ELSE
        RETURN 'VALID: Approved for payroll';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee does not exist';
    WHEN OTHERS THEN
        RETURN 'ERROR: Unexpected error occurred';
END;
/