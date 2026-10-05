DECLARE
  v_salary employees.salary%TYPE;
  v_new    NUMBER;
BEGIN
  SELECT salary INTO v_salary FROM employees WHERE emp_id = 101;

  IF v_salary < 3000 THEN GOTO big_raise;
  ELSIF v_salary < 10000 THEN GOTO small_raise;
  ELSE GOTO no_raise;
  END IF;

  <<big_raise>>
  v_new := v_salary * 1.10;
  GOTO show_result;

  <<small_raise>>
  v_new := v_salary * 1.05;
  GOTO show_result;

  <<no_raise>>
  v_new := v_salary;

  <<show_result>>
  DBMS_OUTPUT.PUT_LINE('Old: ' || v_salary || '  New: ' || v_new);
END;
/
