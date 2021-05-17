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

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

SELECT * FROM titles;

CREATE TABLE employees(	
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

CREATE TABLE dept_emp(	
	id SERIAL PRIMARY KEY,
	emp_no INT, 
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(	
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
	id SERIAL PRIMARY KEY,
	emp_no INT,
    salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;




