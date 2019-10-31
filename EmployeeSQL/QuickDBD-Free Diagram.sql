-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DMR80t
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    Number varchar   NOT NULL,
    Name varchar   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Number
     )
);

CREATE TABLE DepartmentEmployees (
    Emp_No int   NOT NULL,
    Dept_No varchar   NOT NULL,
    From_Date date   NOT NULL,
    To_Date date   NOT NULL
);

CREATE TABLE DepartmentManager (
    Dept_No varchar   NOT NULL,
    Emp_No int   NOT NULL,
    From_Date date   NOT NULL,
    To_Date date   NOT NULL
);

CREATE TABLE Titles (
    Emp_No int   NOT NULL,
    Title varchar   NOT NULL,
    From_Date date   NOT NULL,
    To_Date date   NOT NULL
);

CREATE TABLE Salaries (
    Emp_No int   NOT NULL,
    Salary int   NOT NULL,
    From_Date date   NOT NULL,
    To_Date date   NOT NULL
);

CREATE TABLE Employees (
    Number int   NOT NULL,
    Birth_Date date   NOT NULL,
    First_Name varchar   NOT NULL,
    Last_Name varchar   NOT NULL,
    Gender varchar   NOT NULL,
    Hire_Date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Number
     )
);

ALTER TABLE DepartmentEmployees ADD CONSTRAINT fk_DepartmentEmployees_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Number);

ALTER TABLE DepartmentEmployees ADD CONSTRAINT fk_DepartmentEmployees_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Number);

ALTER TABLE DepartmentManager ADD CONSTRAINT fk_DepartmentManager_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Number);

ALTER TABLE DepartmentManager ADD CONSTRAINT fk_DepartmentManager_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Number);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Number);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Number);

