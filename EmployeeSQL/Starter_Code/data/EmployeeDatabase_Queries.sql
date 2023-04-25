#List the employee number, last name, first name, sex, and salary of each employee 
select s.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees as e
inner join salaries as s
on s.emp_no = e.emp_no
order by s.emp_no;

#List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

#List the manager of each department along with their department number, department name, employee number, last name, and first name.
select d.dept_no, d.dept_name, d.emp_no, e.last_name, e.first_name
from departments as d
inner join dept_manager as dm
on dm.dept_no = d.dept_no
inner join employees as e
on e.emp_no = dm.emp_no;

#List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no;

#List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select e.last_name, e.first_name
from employees as e
where (e.first_name = 'Hercules') and (lower(e.last_name) like 'b%')
order by e.last_name;

#List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name
from employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales';

#List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no
where d.dept_name in ('Sales', 'Development');

#List the frequency counts, in descending order, of all the employee last names
select last_name, count(last_name) as frequency
from employees
group by last_name
order by frequency desc;