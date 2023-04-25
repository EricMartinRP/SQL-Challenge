#Table for department
create table departments(
	dept_no VARCHAR(8) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

#Table for Dept_Emp
create table dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(8) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

#Table for Dept_Manager
create table dept_manager(
    dept_no VARCHAR(8) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

#Table for Employees
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(8) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	sex VARCHAR(1)NOT NULL,
	hire_date DATE NOT NULL
);

#Table for Salaries
create table salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

#Tables for Titles
create table titles(
    title_id VARCHAR(8) primary key NOT NULL,
    title VARCHAR(40) NOT NULL
);

