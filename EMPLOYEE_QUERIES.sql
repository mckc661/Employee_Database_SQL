-- List the following details of each employee: employee number, last name,
-- first name, gender, and salary


select e.emp_no 'Employee Number'
-- 	e.last_name 'Last Name',
-- 	e.first_name 'First Name', 
-- 	e.gender 'Gender',
-- 	s.salary 'Salary'
from employees e
join salaries s on e.emp_no = s.emp_no;

--employees hired in 1986
select 
	emp_no "Employee Number"
	,last_name "Last Name", 
	first_name "First Name",
	hire_date "Hire Date"
from employees
where hire_date between '01/01/1986' and '12/31/1986'

-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number,
-- last name, first name, and start and end employment dates.

Select d.dept_no, 
	d.dept_name, 
	m.emp_no, 
	e.last_name, 
	e.first_name, 
	m.from_date, 
	m.to_date

from departments d
left join dept_manager m on d.dept_no=m.dept_no
left join employees e on m.emp_no=e.emp_no


-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
Select e.emp_no 'Employee Number', 
	e.last_name 'Last Name', 
	e.first_name 'First Name',
 	d.dept_name 'Department Name'
FROM employees e
join dept_empl de on e.emp_no=de.emp_no
join departments d on d.dept_no=de.dept_no



-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT emp_no "Employee Number",
	last_name "Last Name",
	first_name "First Name"
	from employees 
	where first_name = 'Hercules' and last_name like 'B%'
	
	
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no "Employee Number",
	e.last_name "Last Name",
	e.first_name "First Name",
	d.dept_name "Department Name"
from dept_empl de
left join employees e on de.emp_no=e.emp_no
left join departments d on de.dept_no= d.dept_no
where d.dept_no like '%d007%'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no "Employee Number",
	e.last_name "Last Name",
	e.first_name "First Name",
	d.dept_name "Department Name"
from dept_empl de
left join employees e on de.emp_no=e.emp_no
left join departments d on de.dept_no= d.dept_no
where d.dept_no like '%d007%' or d.dept_no like '%d005%'


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name "Last Name", 
		count(emp_no) "Frequency of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Frequency of Last Name" desc
	