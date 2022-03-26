USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name', hire_date FROM employees WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010);

SELECT DISTINCT titles.title AS titles, COUNT(titles.title) AS 'Number of People with title' FROM titles JOIN employees ON employees.emp_no = titles.emp_no WHERE employees.first_name IN (SELECT employees.first_name FROM employees WHERE first_name = 'Aamod') GROUP BY titles.title;

SELECT employees.first_name, employees.last_name FROM employees LEFT JOIN dept_manager on employees.emp_no = dept_manager.emp_no WHERE gender = 'F' AND dept_manager.to_date IN(SELECT dept_manager.to_date FROM dept_manager WHERE YEAR(dept_manager.to_date) = '9999');

SELECT departments.dept_name FROM departments RIGHT JOIN dept_emp ON departments.dept_no = dept_emp.dept_no JOIN dept_manager ON dept_emp.emp_no = dept_manager.emp_no JOIN employees ON dept_emp.emp_no = employees.emp_no WHERE employees.gender IN (SELECT employees.gender FROM employees WHERE employees.gender = 'F') AND YEAR(dept_manager.to_date) = '9999';

SELECT employees.first_name, employees.last_name FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salaries.salary IN (SELECT MAX(salaries.salary) FROM salaries)