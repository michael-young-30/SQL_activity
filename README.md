# SQL_activity

The purpose of this activity was to build a database using 6 different data files. This project taught how to build a database from scratch in pgAdmin, join tables, and run queries. 

# Tools

CSV files, SQL, pgAdmin

# Results
1. Entity Relationship Diagram

![image](https://user-images.githubusercontent.com/73977286/131581052-3ad4b3d6-a71a-49e6-b00b-b3d945bd32a4.png)

2. Example queries run:

SELECT e.emp_no, e.first_name,e.last_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no
WHERE dept_name = 'Sales';

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY (last_name);



