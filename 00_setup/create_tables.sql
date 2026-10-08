-- Drop old tables if they already exist
DROP TABLE employees CASCADE CONSTRAINTS;
DROP TABLE departments CASCADE CONSTRAINTS;

-- 1. Create the departments table
CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) NOT NULL
);

-- 2. Create the employees table
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    salary NUMBER(10, 2),
    hire_date DATE,
    dept_id NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 3. Insert initial test data
INSERT INTO departments (dept_id, dept_name) VALUES (10, 'Administration');
INSERT INTO departments (dept_id, dept_name) VALUES (20, 'IT');
INSERT INTO departments (dept_id, dept_name) VALUES (30, 'Finance');

INSERT INTO employees (emp_id, first_name, last_name, salary, hire_date, dept_id)
VALUES (101, 'Alice', 'Smith', 4500, TO_DATE('2018-05-10', 'YYYY-MM-DD'), 20);

INSERT INTO employees (emp_id, first_name, last_name, salary, hire_date, dept_id)
VALUES (102, 'Bob', 'Jones', 2500, TO_DATE('2021-02-15', 'YYYY-MM-DD'), 10);

INSERT INTO employees (emp_id, first_name, last_name, salary, hire_date, dept_id)
VALUES (103, 'Charlie', 'Brown', 6000, TO_DATE('2015-11-01', 'YYYY-MM-DD'), 30);

INSERT INTO employees (emp_id, first_name, last_name, salary, hire_date, dept_id)
VALUES (104, 'Diana', 'Prince', 8000, TO_DATE('2012-07-20', 'YYYY-MM-DD'), 20);

-- Save the changes permanently
COMMIT;