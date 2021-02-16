SELECT e.emp_no, e.first_name,e.last_name,e.sex,s.salary
FROM employees AS e
INNER JOIN salary AS s
ON e.emp_no = s.emp_no

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT * FROM dept_emp;
SELECT * FROM employees

SELECT e.emp_no, e.first_name,e.last_name,d.dept_no,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no
WHERE e.emp_no IN
	(SELECT emp_no 
	FROM dept_manager);
	
SELECT e.emp_no, e.first_name,e.last_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no;


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT e.emp_no, e.first_name,e.last_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';


SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY (last_name);

SELECT * FROM employees
WHERE emp_no = 499942;
