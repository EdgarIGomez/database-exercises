USE employees;

SELECT gender, COUNT(gender) FROM employees GROUP BY gender ORDER BY COUNT(gender) DESC;

SELECT t.title, FORMAT(AVG(s.salary), 2) FROM titles AS t JOIN salaries s on t.emp_no = s.emp_no GROUP BY t.title ORDER BY FORMAT(AVG(s.salary), 2) DESC;