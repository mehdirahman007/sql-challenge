-- 1.List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT
e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
FROM public."Employees" e
JOIN public."Salaries" s on e.emp_no = s.emp_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT
first_name,
last_name,
hire_date
FROM public."Employees" 
WHERE hire_date > '12/31/1985' and hire_date < '01/01/1987'

-- 3. List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name.

SELECT
t1.dept_no,
t3.dept_name,
t1.emp_no,
t2.first_name,
t2.last_name
FROM public."Department_Manager" as t1
JOIN public."Employees" as t2 on
t1.emp_no = t2.emp_no
JOIN public."Departments" as t3
on t3.dept_no = t1.dept_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
t1.emp_no,
t1.last_name,
t1.first_name,
t3.dept_name
FROM public."Employees" as t1
JOIN public."Department_Employees" as t2 on t1.emp_no = t2.emp_no
JOIN public."Departments" as t3 on t3.dept_no = t2.dept_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT 
first_name,
last_name
FROM public."Employees"
WHERE first_name = 'Hercules' and last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select 
t1.emp_no,
t1.last_name,
t1.first_name,
t3.dept_name
FROM public."Employees" as t1
JOIN public."Department_Employees" as t2 on t1.emp_no = t2.emp_no
JOIN public."Departments" as t3 on t3.dept_no = t2.dept_no
WHERE t3.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
t1.emp_no,
t1.last_name,
t1.first_name,
t3.dept_name
FROM public."Employees" as t1
JOIN public."Department_Employees" as t2 on t1.emp_no = t2.emp_no
JOIN public."Departments" as t3 on t3.dept_no = t2.dept_no
WHERE t3.dept_name = 'Sales' or t3.dept_name = 'Development'

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT
last_name, 
COUNT (last_name) as name_cnt
FROM public."Employees"
group by last_name
order by name_cnt desc







