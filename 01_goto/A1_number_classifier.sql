DECLARE
  salary NUMBER := 5000;
BEGIN
  IF salary < 10000 THEN
    GOTO low_salary;
  END IF;

  DBMS_OUTPUT.PUT_LINE('Salary is sufficient.');
  GOTO end_program;

  <<low_salary>>
  DBMS_OUTPUT.PUT_LINE('Salary is too low, consider a raise.');

  <<end_program>>
  NULL;
END;
/
