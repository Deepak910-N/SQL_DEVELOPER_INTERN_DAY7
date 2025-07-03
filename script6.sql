CREATE DATABASE IF NOT EXISTS view_demo;
USE view_demo;

CREATE TABLE IF NOT EXISTS Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employees (emp_id, name, department, salary) VALUES
(1, 'Alice', 'HR', 40000),
(2, 'Bob', 'IT', 60000),
(3, 'Charlie', 'Finance', 55000),
(4, 'David', 'IT', 65000),
(5, 'Eva', 'HR', 42000),
(6, 'Frank', 'Finance', 58000),
(7, 'Grace', 'IT', 61000);

CREATE VIEW High_Earners AS
SELECT emp_id, name, department, salary
FROM Employees
WHERE salary > 55000;

CREATE VIEW Department_Summary AS
SELECT department, 
       COUNT(*) AS num_employees,
       AVG(salary) AS avg_salary,
       MAX(salary) AS max_salary
FROM Employees
GROUP BY department;

CREATE VIEW IT_Employees AS
SELECT emp_id, name, salary
FROM Employees
WHERE department = 'IT';

SELECT * FROM High_Earners;

SELECT * FROM Department_Summary;

SELECT * FROM IT_Employees
ORDER BY salary DESC;

SELECT name FROM High_Earners
WHERE salary > 60000;
