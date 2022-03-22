USE employees;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;

SELECT title, COUNT(title)
FROM titles GROUP BY title ORDER BY COUNT(title) DESC LIMIT 3;

SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;