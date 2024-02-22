--Question 4
--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.


SELECT 	dep.dept_no,
		dept_emp.emp_no,
		emp.last_name,
		emp.first_name,
		dep.dept_name
FROM employees as emp
	JOIN dept_emp
	ON (emp.emp_no = dept_emp.emp_no)
		JOIN departments as dep
		ON (dept_emp.dept_no = dep.dept_no)

