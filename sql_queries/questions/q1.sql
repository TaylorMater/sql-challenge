-- Question 1
-- List the employee number, last name, first name, sex, and salary of each employee.

--no ordering
SELECT 	e.emp_no, 
		e.last_name, 
		e.first_name, 
		e.sex, 
		s.salary
FROM employees as e
INNER JOIN salaries as s ON e.emp_no = s.emp_no


--ordering by salary
-- SELECT 	e.emp_no, 
-- 		e.last_name, 
-- 		e.first_name, 
-- 		e.sex, 
-- 		s.salary
-- FROM employees as e
-- INNER JOIN salaries as s ON e.emp_no = s.emp_no
-- ORDER BY s.salary DESC