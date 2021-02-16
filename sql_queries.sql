-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.first_name,e.last_name,e.sex,s.salary
FROM employees AS e
INNER JOIN salary AS s
ON e.emp_no = s.emp_no


-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

-- List the manager of each department with the following information: 
-- department number, department name, the manager’s employee number, last name, first name.

SELECT e.emp_no, e.first_name,e.last_name,d.dept_no,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no
WHERE e.emp_no IN
	(SELECT emp_no 
	FROM dept_manager);
    
    
-- List the department of each employee with the following information:
--  employee number, last name, first name, and department name.


SELECT e.emp_no, e.first_name,e.last_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no;



-- List first name, last name, and sex for employees 
--whose first name is “Hercules” and last names begin with “B.”

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.first_name,e.last_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no
WHERE dept_name = 'Sales';



--List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.first_name,e.last_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY (last_name);


