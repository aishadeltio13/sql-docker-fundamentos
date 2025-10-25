CREATE DATABASE my_company_database; 

CREATE TABLE IF NOT EXISTS employees (
    id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    birth_date  DATE NOT NULL,  
    first_name  VARCHAR(100) NOT NULL,
    last_name   VARCHAR(255) NOT NULL
);

ALTER TABLE employees
ADD COLUMN salary NUMERIC(10, 2),
ADD COLUMN title VARCHAR(100),
ADD COLUMN title_date DATE;

INSERT INTO employees 
    (birth_date, first_name, last_name, salary, title, title_date)
VALUES
    ('1990-05-15', 'Ana', 'Torres', 45000.50, 'Project Manager', '2020-01-10'),
    ('1988-02-20', 'Luis', 'Gomez', 48000.00, 'Senior Developer', '2020-03-15'),
    ('1995-11-30', 'Sofia', 'Chen', 32000.75, 'Data Analyst', '2020-06-01'),
    ('1992-07-14', 'Carlos', 'Ruiz', 39000.00, 'Marketing Specialist', '2020-09-20'),
    ('1985-09-05', 'Maria', 'Fernandez', 49500.00, 'HR Manager', '2020-11-05'),
    ('1993-01-25', 'David', 'Garcia', 41000.00, 'Software Engineer', '2021-02-15'),
    ('1991-04-12', 'David', 'Lopez', 42000.00, 'Systems Administrator', '2021-05-10'),
    ('1994-08-19', 'David', 'Kim', 41500.00, 'Software Engineer', '2022-01-30'),
    ('1996-03-08', 'Elena', 'Perez', 36000.00, 'UX/UI Designer', '2021-07-22'),
    ('1987-12-01', 'Javier', 'Martin', 47000.00, 'Senior Developer', '2019-10-01'),
    ('1998-06-22', 'Laura', 'Sanchez', 29000.00, 'Junior Developer', '2023-01-15'),
    ('1990-10-17', 'Miguel', 'Gonzalez', 34000.00, 'Data Analyst', '2022-03-10'),
    ('1989-05-29', 'Lucia', 'Diaz', 33000.00, 'Marketing Specialist', '2021-11-01'),
    ('1997-02-11', 'Pablo', 'Moreno', 31000.00, 'QA Tester', '2022-08-14'),
    ('1993-07-07', 'Carmen', 'Alvarez', 43000.00, 'Product Owner', '2021-04-05');

SELECT first_name, salary 
FROM employees;

SELECT first_name 
FROM employees 
WHERE id = 2;

SELECT first_name 
FROM employees 
WHERE salary > 20000;

SELECT * 
FROM employees 
WHERE salary <= 10000;

UPDATE employees 
SET first_name = 'Aisha' 
WHERE id = 7;

SELECT first_name 
FROM employees 
WHERE id = 5;

DELETE FROM employees WHERE id = 5;

DELETE FROM employees WHERE salary BETWEEN 30000.00 AND 31000.00;

SELECT first_name 
FROM employees 
WHERE salary < 31000.00;

SELECT first_name 
FROM employees;


SELECT FROM employees WHERE salary BETWEEN 14000.00 AND 50000.00;

SELECT first_name 
FROM employees 
WHERE salary BETWEEN 14000.00 AND 50000.0;

SELECT * FROM employees ORDER BY birth_date ASC;

SELECT DISTINCT first_name FROM employees;

SELECT first_name || ' ' || last_name AS nombre_completo
FROM employees
WHERE id=9;

SELECT * FROM employees;

SELECT * FROM employees WHERE first_name LIKE 'L%';

SELECT * FROM employees WHERE first_name LIKE '%L%';

-- SELECT age, COUNT(age) FROM users GROUP BY age;

SELECT COUNT(id) FROM employees;

SELECT MAX(salary) FROM employees;

SELECT id, first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT title, AVG(salary) FROM employees GROUP BY title;

SELECT title, MAX(salary), MIN(salary)
FROM employees
GROUP BY title;

SELECT first_name, salary,
ROUND((salary * 0.12), 2) AS ahorro_mensual
FROM employees;

SELECT first_name, salary,
ROUND((salary * 0.21), 2) AS impuestos,
ROUND(salary - (salary * 0.21), 2) AS salario_neto
FROM employees;

