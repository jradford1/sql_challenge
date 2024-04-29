-- testing my table
select * from "Salaries"

--List the employee number, last name, first name, sex, and salary of each employee (2 points)
-- joining tables on the employee number as this is primary key for table employees and foreign key for salaries
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" e
join "Salaries" s on e.emp_no = s.emp_no;

select * from "Employees"

--List the first name, last name, and hire date for the employees who were hired in 1986
-- using extract function and year from function to get relevant data from employees table
select first_name, last_name, hire_date
from "Employees"
where extract(year from hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
-- Selecting relevant info and joining the department mamangers with the departments table and employees table
select dm.dept_no, d.dept_name, dm.emp_no as manager_emp_no, e.last_name as manager_last_name, e.first_name as manager_last_name
from "Department_Manager" dm
join "Departments" d on dm.dept_no = d.dept_no
join "Employees" e on dm.emp_no = e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
-- Joining the departments table with the employees table based off the key 
select e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
from "Employees" e
join "Department_Employees" de on e.emp_no = de.emp_no
join "Departments" d on de.dept_no = d.dept_no;
