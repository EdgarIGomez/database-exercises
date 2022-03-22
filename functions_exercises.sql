USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M' ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E'ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E'ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date, hire_date DESC;

SELECT *, DATEDIFF(NOW(), hire_date) FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date, hire_date DESC;

# Below is extra exercises

SELECT * FROM titles WHERE title = 'Senior Engineer' ORDER BY from_date, emp_no;

SELECT from_date, COUNT(from_date) FROM titles WHERE title = 'Staff' GROUP BY from_date ORDER BY COUNT(from_date) DESC;

SELECT emp_no FROM titles WHERE title = 'Engineer' ORDER BY emp_no DESC;