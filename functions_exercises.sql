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

SELECT first_name, last_name, hire_date FROM employees WHERE gender = 'F' ORDER BY hire_date DESC LIMIT 10;

SELECT birth_date, COUNT(birth_date) FROM employees GROUP BY birth_date ORDER BY COUNT(birth_date) DESC;

SELECT gender, birth_date, COUNT(birth_date) FROM employees GROUP BY birth_date, gender ORDER BY COUNT(birth_date) DESC;

SELECT hire_date, COUNT(hire_date) FROM employees GROUP BY hire_date ORDER BY COUNT(hire_date) DESC;

SELECT * FROM employees WHERE birth_date = '1952-3-8' ORDER By LENGTH(last_name) DESC LIMIT 10;

