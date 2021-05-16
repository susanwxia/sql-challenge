-- Run below the line before editing corresponding table creation
-- DROP TABLE departments
-- DROP TABLE dept_emp
-- DROP TABLE manager
-- DROP TABLE employees
-- DROP TABLE salaries
-- DROP TABLE titles


CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY, 
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE dept_emp(	
	emp_no INT, 
	dept_no VARCHAR
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(	
	dept_no VARCHAR,
	emp_no INT
);

SELECT * FROM dept_manager;

CREATE TABLE employees(	
	emp_no INT PRIMARY KEY,
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

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

SELECT * FROM titles;


