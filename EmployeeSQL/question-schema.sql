-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY emp_no


-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE hire_date LIKE '%1986'
OR hire_date LIKE '%1987'
OR hire_date LIKE '%1988'
OR hire_date LIKE '%1989'
OR hire_date LIKE '%1991'
OR hire_date LIKE '%1992'
OR hire_date LIKE '%1993'
OR hire_date LIKE '%1994'
OR hire_date LIKE '%1995'
OR hire_date LIKE '%1996'
OR hire_date LIKE '%1997'
OR hire_date LIKE '%1998'
OR hire_date LIKE '%1999'
OR hire_date LIKE '%2000'
ORDER BY emp_no

-- 3. List the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name.

SELECT dm.dept_no, 
d.dept_name,
dm.emp_no,
e.last_name, 
e.first_name
FROM dept_manager dm
JOIN departments d
ON dm.dept_no = d.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no
ORDER BY emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employees e
JOIN dept_employee de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
order by emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules'
AND last_name
LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 
e.emp_no, 
e.last_name, 
e.first_name,
d.dept_name
FROM employees e
JOIN dept_employee de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
order by emp_no;

-- 7. List all employees in the Sales and Development departments, including their employee number,
-- last name, first name, and department name.

SELECT 
e.emp_no, 
e.last_name, 
e.first_name,
d.dept_name
FROM employees e
JOIN dept_employee de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development'
order by emp_no;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;