-- List the following details of each employee: employee number,
-- last name, first name, gender, and salary.

select e.Number, e.Last_Name, e.First_Name, e.Gender, s.Salary from Employees e
inner join Salaries s on
e.Number = s.Emp_No;

-- List employees who were hired in 1986.

select First_Name, Last_name, Hire_Date from Employees where EXTRACT(YEAR FROM Hire_Date) = 1986;

-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name, and start and end 
-- employment dates.

select manager.Dept_No, Departments.Name, manager.Emp_No, Employees.Last_Name,
Employees.First_Name, manager.From_Date, manager.To_Date from DepartmentManager manager
inner join Departments on manager.Dept_No = Departments.Number
inner join Employees on manager.Emp_No = Employees.Number;

-- List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.

select dept_e.Emp_No, Employees.Last_Name, Employees.First_Name, Departments.Name Department_Name
from DepartmentEmployees dept_e
inner join Departments on dept_e.Dept_No = Departments.Number
inner join Employees on dept_e.Emp_No = Employees.Number;

-- List all employees whose first name is "Hercules" and last names begin with "B."

select First_Name, Last_Name from Employees
where First_Name = 'Hercules' and Last_Name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, 
-- first name, and department name.

select DepartmentEmployees.Emp_No, Employees.Last_Name, Employees.First_Name, Departments.Name dept_name
from Employees
inner join DepartmentEmployees on DepartmentEmployees.Emp_No = Employees.Number
inner join Departments on DepartmentEmployees.Dept_No = Departments.Number
where Departments.Name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.

select DepartmentEmployees.Emp_No, Employees.Last_Name, Employees.First_Name, Departments.Name dept_name
from Employees
inner join DepartmentEmployees on DepartmentEmployees.Emp_No = Employees.Number
inner join Departments on DepartmentEmployees.Dept_No = Departments.Number
where Departments.Name = 'Sales' or Departments.Name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e.
-- how many employees share each last name.

select Last_Name, count(Last_Name) from Employees
group by Last_Name
order by Last_Name desc;
