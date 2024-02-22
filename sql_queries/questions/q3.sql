--Question 3
--List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name.


-- Probably could do this several ways. Multiple joins felt easiest. 
-- Might create a view if we want this again
SELECT 	dm.emp_no, 
		titles.title, 
		dm.dept_no,
		depts.dept_name,
		emp.first_name, 
		emp.last_name
FROM dept_manager AS dm
	JOIN employees AS emp 
	ON (dm.emp_no = emp.emp_no)
		JOIN departments AS depts
		ON (dm.dept_no = depts.dept_no)
			JOIN titles
			ON (emp.emp_title = titles.title_id)

