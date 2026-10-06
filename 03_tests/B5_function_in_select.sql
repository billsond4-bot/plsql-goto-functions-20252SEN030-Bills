SELECT e.emp_id,
       e.emp_name,
       fn_dept_name(e.dept_id)      AS department,
       fn_annual_salary(e.emp_id)   AS annual_salary,
       fn_years_of_service(e.emp_id) AS years_service,
       fn_calculate_tax(e.salary)   AS tax
FROM   employees e
WHERE  e.salary >= 0;
