--SCHEMATA--
-- Drop Tables
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--Create and import table
--Department Table
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);	
SELECT * FROM departments

--Employee Table
CREATE TABLE employees(
	emp_no INTEGER, 
	emp_title_id INTEGER, 
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);	

CREATE TABLE employee(

--Employee Department Table
CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR
);	
SELECT * FROM dept_emp

--Employee Department Table
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INTEGER
);	
SELECT * FROM dept_manager

--Salaries Table
CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER
);		
SELECT * FROM salaries

--Title Table
CREATE TABLE title(
	title_id VARCHAR,
	title VARCHAR
);		
SELECT * FROM title
