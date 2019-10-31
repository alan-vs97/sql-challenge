select e.Number, e.Last_Name, e.First_Name, e.Gender, s.Salary from Employees e
inner join Salaries s on
e.Number = s.Emp_No;

select First_Name, Last_name, Hire_Date from Employees where EXTRACT(YEAR FROM Hire_Date) = 1986;

