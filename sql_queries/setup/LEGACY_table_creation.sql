-- ORIGINALLY BUILT THIS MANUALLY
-- MET WITH TUTOR, WHO ADVISED USING CODE FROM QDBD
-- LEAVING THIS IN REPO FOR REFERENCE ONLY
-- THE SCHEMA SPECIFIED HERE DOES NOT CORRELATE TO THE ACTUAL DB SCHEMA
-- SEE ERD FROM QDBD FOR MORE INFO

-- Drop if it exists
DROP TABLE IF EXISTS departments CASCADE;

-- Create table

CREATE TABLE departments (
    dept_no 	VARCHAR(8) PRIMARY KEY,
	dept_name 	TEXT
);

--
--	Handle data import
--


-- Drop if it exists
DROP TABLE IF EXISTS titles CASCADE;

-- Create table
CREATE TABLE titles (
	title_id 	VARCHAR(8)	PRIMARY KEY,
	title		TEXT
);


--
--	Handle data import
--


-- Note that we want to create the titles table before the employees table to reference the title_id
-- Drop if it exists
DROP TABLE IF EXISTS employees CASCADE;

--I am not sure if I want to require all of these to be non-null or not. I can see a use case either way.
--I do think it is unlikely that you would hire someone without knowing all of this data
-- Create table
CREATE TABLE employees (
	emp_no 		INT			PRIMARY KEY,
	emp_title 	VARCHAR(8)	REFERENCES titles (title_id),
	birth_date	DATE		NOT NULL,
	first_name	TEXT		NOT NULL,
	last_name	TEXT		NOT NULL,
	sex			VARCHAR(1)	NOT NULL,
	hire_date	DATE		NOT NULL
);


--
--	Handle data import
--




-- Drop if it exists
DROP TABLE IF EXISTS dept_emp CASCADE;


--note we have duplicates in both columns, so no obvious PK
-- Create table
CREATE TABLE dept_emp (
	emp_no 		INT			REFERENCES employees (emp_no),
	dept_no 	VARCHAR(8) 	REFERENCES departments (dept_no)
);

--
--	Handle data import
--

-- Drop if it exists
DROP TABLE IF EXISTS dept_manager CASCADE;

-- Create table
CREATE TABLE dept_manager (
	dept_no 	VARCHAR(8) 	REFERENCES departments (dept_no),
	emp_no 		INT 		REFERENCES employees (emp_no)
);

--
--	Handle data import
--



-- salaries table just requires emplyees table
-- I am requiring that salary be non-null, an employee is officially hired with a salary, if not, it's illegal?
-- Drop if it exists
DROP TABLE IF EXISTS salaries CASCADE;

-- Create table
CREATE TABLE salaries (
	emp_no 		INT 		PRIMARY KEY REFERENCES employees (emp_no),
	salary		INT			NOT NULL
);


--
--	Handle data import
--
