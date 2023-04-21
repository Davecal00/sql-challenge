--create departments table
CREATE TABLE departments (
	dept_no VARCHAR(6),
	dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments


--create titles table
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles

--create employees table
CREATE TABLE employees (
	emp_no INTEGER,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

SELECT * FROM employees


--create dept_emp table
CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY  (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY  (dept_no) REFERENCES departments (dept_no)
);

SELECT * FROM dept_emp

--create dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY  (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY  (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_manager


--create salaries table
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries



