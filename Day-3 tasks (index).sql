USE Midhtech_db;
SHOW TABLES;

CREATE INDEX idx_emp_name
ON Employee(emp_name);

SHOW INDEX FROM Employee;

SELECT * FROM employee WHERE emp_name = "John";