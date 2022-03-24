USE employees;

# SELECT users.name AS user_name, roles.name AS role_name FROM users JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name FROM users LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name FROM users RIGHT JOIN roles ON users.role_id = roles.id;
#
# SELECT roles.name AS role_name, COUNT(users.role_id) AS employees FROM roles JOIN users  ON roles.id = users.role_id GROUP BY roles.name;

SELECT departments.dept_name AS department_name, CONCAT(employees.first_name, ' ', employees.last_name) AS department_manager FROM employees JOIN dept_manager ON dept_manager.emp_no = employees.emp_no JOIN departments ON departments.dept_no = dept_manager.dept_no WHERE YEAR(dept_manager.to_date) = '9999';

SELECT departments.dept_name AS department_name, CONCAT(employees.first_name, ' ', employees.last_name) AS department_manager FROM employees JOIN dept_manager ON dept_manager.emp_no = employees.emp_no JOIN departments ON departments.dept_no = dept_manager.dept_no WHERE YEAR(dept_manager.to_date) = '9999' AND gender = 'F';

SELECT titles.title AS 'Job Title', COUNT(dept_emp.emp_no) AS 'Number of Employees' FROM titles JOIN dept_emp ON dept_emp.emp_no = titles.emp_no JOIN departments ON departments.dept_no = dept_emp.dept_no WHERE departments.dept_name = 'Customer Service' AND YEAR(titles.to_date) = '9999' AND YEAR(dept_emp.to_date) = '9999' GROUP BY titles.title ORDER BY COUNT(dept_emp.emp_no) DESC;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary' FROM employees JOIN dept_manager ON dept_manager.emp_no = employees.emp_no JOIN salaries on employees.emp_no = salaries.emp_no JOIN departments ON dept_manager.dept_no = departments.dept_no WHERE YEAR(dept_manager.to_date) = '9999' AND YEAR(salaries.to_date) = '9999';

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Full Employee Name', departments.dept_name, IF(YEAR(dept_manager.to_date) = '9999', CONCAT(employees.first_name, ' ', employees.last_name), null) AS 'Department Manager' FROM employees JOIN dept_emp ON dept_emp.emp_no = employees.emp_no JOIN departments ON departments.dept_no = dept_emp.dept_no LEFT JOIN dept_manager ON dept_manager.emp_no = dept_emp.emp_no WHERE YEAR(dept_emp.to_date) = '9999';

# IF(YEAR(dept_manager.to_date) = '9999', CONCAT(employees.first_name, ' ', employees.last_name), null) AS 'Department Manager'