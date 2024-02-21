-- Question 2
-- List the first name, last name, and hire date for the employees who were hired in 1986.

-- different ways to skin a cat

--method 1
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'

-- --method 2
-- inclusive
-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

-- --method 3
-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE DATE_PART('Year', hire_date) = 1986