--SCHEMATA--
-- Drop Tables
--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS title;

--Create and import table
--Department Table
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);	
SELECT * FROM departments;

--Title Table
CREATE TABLE title(
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title_id)
);		
SELECT * FROM title;



--Employee Table
CREATE TABLE employees(
	emp_no INTEGER, 
	emp_title_id VARCHAR, 
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);	
SELECT * FROM employees;

--Employee Department Table
CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);	
SELECT * FROM dept_emp;

--Managere Department Table
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager;

--Salaries Table
CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);		
SELECT * FROM salaries;


