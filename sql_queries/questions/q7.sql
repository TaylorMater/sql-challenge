--Question 7
--List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.


SELECT	employees.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM employees
	JOIN dept_emp
	ON (dept_emp.emp_no = employees.emp_no)
		JOIN departments
		ON (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name IN 
(
	'Sales',
	'Development'
)


