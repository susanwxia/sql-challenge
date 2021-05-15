-- Run below the line before editing corresponding table creation
-- DROP TABLE departments
-- DROP TABLE dept_emp
-- DROP TABLE manager
-- DROP TABLE employees
-- DROP TABLE salaries
-- DROP TABLE titles


CREATE TABLE departments(
	dept_no VARCHAR, 
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE dept_emp(	
	emp_no INT, 
	dept_no VARCHAR
);

SELECT * FROM dept_emp;

CREATE TABLE manager(	
	dept_no VARCHAR,
	emp_no INT
);

SELECT * FROM manager;

CREATE TABLE employees(	
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no INT,
    salary INT
);

SELECT * FROM salaries;

CREATE TABLE title(
	title_id VARCHAR,
    title VARCHAR
);

SELECT * FROM title;


