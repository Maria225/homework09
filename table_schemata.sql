-- Drop table if table exists
-- Drop Table departments
-- Create the departments table
create table departments (
	dept_no varchar Not Null primary key,
	dept_name varchar Not Null
);
-- Check data import
select * from departments;


-- Drop table if table exists
-- Drop Table employees
-- Create the employees table
create table employees (
	emp_no int Not Null primary key,
	birth_date varchar Not Null,
	first_name varchar Not Null,
	last_name varchar Not Null,
	gender varchar Not Null,
	hire_date varchar Not Null
);
-- Check data import
select * from employees;


-- Drop table if table exists
-- Drop Table dept_manager
-- Create the dept_manager table
create table dept_manager (
	dept_no varchar Not Null,
	emp_no int Not Null,
	from_date varchar Not Null,
	to_date varchar Not Null,
	foreign key (dept_no) references departments (dept_no), 
	foreign key (emp_no) references employees (emp_no)
);	
-- Check data import
select * from dept_manager;


-- Drop table if table exists
-- Drop Table dept_emp
-- Create the dept_emp table
create table dept_emp (
	emp_no int Not Null,
	dept_no varchar Not Null,
	from_date varchar Not Null,
	to_date varchar Not Null,
	foreign key (dept_no) references departments (dept_no), 
	foreign key (emp_no) references employees (emp_no)
);
-- Check data import
select * from dept_emp;


-- Drop table if table exists
-- Drop Table salaries
-- Create the salaries table
create table salaries (
	emp_no int Not Null,
	salary int Not Null,
	from_date varchar Not Null,
	to_date varchar Not Null, 
	foreign key (emp_no) references employees (emp_no)
);
-- Check data import
select * from salaries;


-- Drop table if table exists
-- Drop Table titles
-- Create the titles table
create table titles (
	emp_no int Not Null,
	title varchar Not Null,
	from_date varchar Not Null,
	to_date varchar Not Null,
	foreign key (emp_no) references employees (emp_no)
);
-- Check data import
select * from titles;
