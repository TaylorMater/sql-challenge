--Question 5
--List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B.



SELECT 	emp.first_name,
		emp.last_name,
		emp.sex
FROM employees as emp
WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%'
