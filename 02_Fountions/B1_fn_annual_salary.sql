CREATE OR REPLACE FUNCTION fn_annual_salary(p_emp_id NUMBER)
RETURN NUMBER IS
  v_salary employees.salary%TYPE;
BEGIN
  SELECT salary INTO v_salary FROM employees WHERE emp_id = p_emp_id;
  RETURN v_salary * 12;          -- assumes salary is monthly
EXCEPTION
  WHEN NO_DATA_FOUND THEN RETURN NULL;
END;
/
