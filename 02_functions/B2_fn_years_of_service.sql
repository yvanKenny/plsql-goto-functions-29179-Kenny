CREATE OR REPLACE FUNCTION fn_years_of_service(p_hire_date DATE)
RETURN NUMBER
IS
BEGIN
    IF p_hire_date IS NULL OR p_hire_date > SYSDATE THEN
        RETURN 0;
    END IF;
    RETURN FLOOR(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
END;
/