CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id NUMBER)
RETURN VARCHAR2 IS
  v_salary employees.salary%TYPE;
  v_dept   employees.dept_id%TYPE;
  v_hire   employees.hire_date%TYPE;
BEGIN
  SELECT salary, dept_id, hire_date
  INTO   v_salary, v_dept, v_hire
  FROM   employees WHERE emp_id = p_emp_id;

  IF v_salary IS NULL OR v_salary <= 0 THEN
    RETURN 'INVALID: salary must be positive';
  END IF;
  IF v_hire > SYSDATE THEN
    RETURN 'INVALID: hire date is in the future';
  END IF;
  IF fn_dept_name(v_dept) = 'Unknown' THEN
    RETURN 'INVALID: department not found';
  END IF;
  IF fn_calculate_tax(v_salary) >= v_salary THEN
    RETURN 'INVALID: tax exceeds salary';
  END IF;
  RETURN 'VALID';
EXCEPTION
  WHEN NO_DATA_FOUND THEN RETURN 'INVALID: employee not found';
END;
/
