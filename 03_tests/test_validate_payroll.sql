SELECT emp_id, emp_name, fn_validate_payroll(emp_id) AS status FROM employees;
SELECT fn_validate_payroll(999) FROM dual;
