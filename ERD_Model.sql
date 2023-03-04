departments
-
dept_no varchar pk
dept_name varchar

dept_emp
-
emp_no varchar pk FK >- employees.emp_no
dept_no varchar pk FK >- departments.dept_no
dept_manager

dept_manager
-
dept_no varchar pk FK >- departments.dept_no
emp_no varchar pk FK >- dept_emp.emp_no

employees
-
emp_no int pk 
emp_title_id varchar
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

salaries
-
emp_no varchar pk FK >- employees.emp_no
salary int

titles
-
title_id varchar pk FK >- employees.emp_title_id
title varchar 