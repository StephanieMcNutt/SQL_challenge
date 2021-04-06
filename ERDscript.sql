Employee
-
emp_no INTEGER PK
emp_title_id INTEGER FK >- Title.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

Departments
-
dept_no VARCHAR PK
dept_Name VARCHAR


Dept_Emp
-
emp_no INTEGER FK >- Employee.emp_no
dept_no VARCHAR FK >- Departments.dept_no

Dept_Manager
-
dept_no VARCHAR FK >- Departments.dept_no
emp_no INTEGER FK - Employee.emp_no

Salaries
-
emp_no INTEGER FK - Employee.emp_no
salary INTEGER

Title
-
title_id VARCHAR PK
title STRING