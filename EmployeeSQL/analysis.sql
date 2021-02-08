-- Salary by Employee
SELECT emp.emp_no,
	emp.last_name,
	emp.first_name,
	emp.sex,
	sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
		on (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

-- HIred in 1986
SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

-- Department / Manager
SELECT dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name,
	dm.from_date,
	dm.to_date
FROM dept_manager AS dm
  INNER JOIN departments AS d
	ON (dm.dept_no = d.dept_no)
  INNER JOIN employees AS e
	ON (dm.emp_no = e.emp_no);

-- Employee by Department
Select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
  INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
  INNER JOIN departments AS d
    ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

-- Hercules
SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Sales Department
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
  INNER JOIN departments AS de
    ON (e.emp_no = e.emp_no)
  INNER JOIN departments AS d
    ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- Sales and Development
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
  INNER JOIN departments AS de
    ON (e.emp_no = e.emp_no)
  INNER JOIN departments AS d
    ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;

-- Frequency of of last names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name);

