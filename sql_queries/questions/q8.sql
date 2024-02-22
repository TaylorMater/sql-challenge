--Question 8
--List the frequency counts, in descending order, 
-- of all the employee last names (that is, how many employees share each last name).


SELECT 	employees.last_name,
		COUNT(employees.last_name) as name_frequency
FROM employees
GROUP BY employees.last_name
ORDER BY name_frequency DESC
