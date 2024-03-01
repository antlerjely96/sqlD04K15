CREATE TABLE departments(
    dept_no CHAR(4),
    dept_name VARCHAR(40),
    PRIMARY KEY(dept_no)
);

CREATE TABLE employees(
    emp_no INT(10),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M','F'),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE dept_manager(
    dept_no CHAR(4),
    emp_no INT(10),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY(dept_no, emp_no)
);

CREATE TABLE dept_emp(
    emp_no INT(10),
    dept_no CHAR(4),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY(dept_no, emp_no)
);

CREATE TABLE salaries(
    emp_no INT(10),
    salary INT,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY(emp_no, from_date)
);

CREATE TABLE titles(
    emp_no INT(10),
    title VARCHAR(50),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY(emp_no, title, from_date)
);

 

