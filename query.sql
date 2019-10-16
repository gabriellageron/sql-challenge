-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT a.emp_no, a.last_name, a.first_name, a.gender, b.salary
FROM salaries b
INNER JOIN employees a ON a.emp_no = b.emp_no;

-- 2. List employees who were hired in 1986.
SELECT * FROM employees
WHERE hire_date LIKE '1986%';

-- 3. List the manager of each department with the following information: department number, department name, 
--    the manager's employee number, last name, first name, and start and end employment dates.
SELECT a.dept_no, a.dept_name, b.emp_no, c.last_name, c.first_name, b.from_date, b.to_date
FROM departments a
INNER JOIN dept_manager b ON
b.dept_no = a.dept_no
JOIN employees c ON
c.emp_no = b.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM employees a
INNER JOIN dept_emp c ON
a.emp_no = c.emp_no
INNER JOIN departments b ON
b.dept_no = c.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees a
INNER JOIN dept_emp b ON
a.emp_no = b.emp_no
INNER JOIN departments c ON
c.dept_no = b.dept_no
WHERE c.dept_name LIKE 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees a
INNER JOIN dept_emp b ON
a.emp_no = b.emp_no
INNER JOIN departments c ON
c.dept_no = b.dept_no
WHERE c.dept_name LIKE 'Development'
OR c.dept_name LIKE 'Sales';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


