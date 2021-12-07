-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    dept_no VARCHAR  NOT NULL ,
    dept_name VARCHAR  NOT NULL ,
    PRIMARY KEY (
        dept_no
    )
);

CREATE TABLE Employees (
    emp_no INTEGER  NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE Dept_Employee (
    emp_no INTEGER  NOT NULL ,
    dept_no VARCHAR  NOT NULL 
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR  NOT NULL ,
    emp_no INTEGER  NOT NULL 
);

CREATE TABLE Salaries (
    emp_no INTEGER  NOT NULL ,
    salary INTEGER  NOT NULL 
);

CREATE TABLE Titles (
    title_id VARCHAR  NOT NULL ,
    title VARCHAR  NOT NULL 
);

ALTER TABLE Dept_Employee ADD CONSTRAINT fk_Dept_Employee_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Employee ADD CONSTRAINT fk_Dept_Employee_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

