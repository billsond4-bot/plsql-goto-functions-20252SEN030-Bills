CREATE TABLE departments (
  dept_id   NUMBER PRIMARY KEY,
  dept_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
  emp_id    NUMBER PRIMARY KEY,
  emp_name  VARCHAR2(50) NOT NULL,
  dept_id   NUMBER REFERENCES departments(dept_id),
  salary    NUMBER(10,2),
  hire_date DATE
);

INSERT INTO departments VALUES (10, 'Finance');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO employees VALUES (101, 'Alice', 10, 2500,  DATE '2018-03-01');
INSERT INTO employees VALUES (102, 'Brian', 20, 5000,  DATE '2020-07-15');
INSERT INTO employees VALUES (103, 'Chloe', 20, 120000, DATE '2015-01-10');
INSERT INTO employees VALUES (104, 'David', NULL, -50, DATE '2022-09-01');
COMMIT;
