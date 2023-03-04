
-- 1) List the employee number, last name, first name, sex, and salary of each employee.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees e JOIN salaries s
ON e.emp_no =s.emp_no ORDER BY e.emp_no;


-- 2)List the first name, last name, and hire date for the employees who were hired in 1986.
select 
last_name,
first_name,
hire_date

from employees where hire_date between '01-01-1986' and '12-31-1986'
order by hire_date;

-- 3)List the manager of each department along with their department number, 
--   department name, employee number, last name, and first name.


select e.emp_no,e.first_name,e.last_name,dm.dept_no,d.dept_name
from dept_manager dm
join department d on dm.dept_no = d.dept_no
join employees e on e.emp_no = dm.emp_no;

-- 4)List the department number for each employee along with that 
--   employee’s employee number, last name, first name, and department name.

SELECT de.dept_no,
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name

from employees e 
join dept_emp de on e.emp_no = de.emp_no  
join department d on d.dept_no = de.dept_no;

-- 5) List first name, last name, and sex of each employee whose first name is Hercules 
--    and whose last name begins with the letter B
select first_name, last_name, sex
from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6) List each employee in the Sales department, including their employee number, last name, and first name.

select e.emp_no,e.first_name,e.last_name,d.dept_name
from employees e 
join dept_emp de ON e.emp_no = de.emp_no
join department d on d.dept_no = de.dept_no
where d.dept_name = 'Sales';

-- 7) List each employee in the Sales and Development departments, 
--    including their employee number, last name, first name, and department name.

select e.emp_no,e.first_name,e.last_name,d.dept_name
from employees e 
join dept_emp de ON e.emp_no = de.emp_no
join department d on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name =  'Development';

-- 8)List the frequency counts, in descending order, of all the employee last names 
--  (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency;
