-- Create department
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);


-- Create dept_emp

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR
);

-- Creating column for departments in dept_emp

ALTER TABLE dept_emp 
ADD dept_name VARCHAR;

-- Updating dept_name for each employee in dept_emp

UPDATE dept_emp
SET dept_name = 'Marketing'
WHERE dept_no = 'd001';

UPDATE dept_emp
SET dept_name = 'Finance'
WHERE dept_no = 'd002';

UPDATE dept_emp
SET dept_name = 'Human Resources'
WHERE dept_no = 'd003';


UPDATE dept_emp
SET dept_name = 'Production'
WHERE dept_no = 'd004';

UPDATE dept_emp
SET dept_name = 'Development'
WHERE dept_no = 'd005';

UPDATE dept_emp
SET dept_name = 'Quality Management'
WHERE dept_no = 'd006';
UPDATE dept_emp
SET dept_name = 'Sales'
WHERE dept_no = 'd007';
UPDATE dept_emp
SET dept_name = 'Research'
WHERE dept_no = 'd008';
UPDATE dept_emp
SET dept_name = 'Customer Service'
WHERE dept_no = 'd009';




-- Create dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT
);

SELECT * FROM dept_manager

-- Create employees table

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees

-- Create salary table

CREATE TABLE salary(
	emp_no INT,
	salary INT
);

SELECT * FROM salary

--Create titles table

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
);

SELECT * FROM titles
