CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE employees(
	emp_id     INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)   NOT NULL,
    last_name  VARCHAR(50)   NOT NULL,
    email      VARCHAR(100)  UNIQUE NOT NULL,
    phone      VARCHAR(15)   NOT NULL,
    hire_date  DATE          NOT NULL,
    salary     DECIMAL(10,2) NOT NULL,
    department VARCHAR(50)   NOT NULL
    );


INSERT INTO employees VALUES
(101, 'Prashun', 'Jha', 'prashun@cdac.in', '12345678', '2026-09-27', 80000, 'IT'),
(102, 'Vishal', 'Kumar', 'vishal@gmail.com', '23456789', '2026-08-01', 70000, 'ECE'),
(103, 'Shubham', 'Yadav', 'shubham@gmail.com', '34567890', '2026-04-13', 50000, 'CIVIL'),
(104, 'Adarsh', 'Singh', 'adarsh@gmail.com', '45678901', '2026-06-05', 60000, 'IT'),
(105, 'Manjeet', 'Gupta', 'manjeet@gmail.com', '56789012', '2026-02-01', 100000, 'ECE');


-- 1.Retrieve all records from the Employees table.
	SELECT * FROM employees;


-- 2.Retrieve employees whose salary is greater than 50,000.
	SELECT * FROM employees
    WHERE salary > 50000;


-- 3.Retrieve employees who were hired after January 1, 2022.
	SELECT * FROM employees
    WHERE hire_date > '2022-01-01';


-- 4.Retrieve employees working in the "IT" department.
	SELECT * FROM employees
    WHERE department = 'IT';


-- 5.Retrieve the total number of employees in the database.
	SELECT COUNT(*) as total_employees
    FROM employees;


-- 6.Update the salary of an employee withemp_id = 3by increasing it by 10%.
    UPDATE employees SET salary = salary * 1.10
    WHERE emp_id = 103;


-- 7.Delete an employee record whoseemp_id = 5.
	DELETE FROM employees 
    WHERE emp_id = 105;
    
    
    SELECT * FROM employees;
