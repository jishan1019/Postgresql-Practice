CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10,2),
    hire_date DATE
)


CREATE TABLE departments(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)


INSERT INTO departments(department_name) VALUES 
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('IT'),
('Customer Service'),
('Research and Development'),
('Product Management'),
('Quality Assurance'),
('Operations'),
('Logistics'),
('Legal'),
('Purchasing'),
('Public Relations'),
('Engineering'),
('Security'),
('Training and Development'),
('Administration'),
('Business Development'),
('Health and Safety');




INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES 
('Alice Johnson', 1, 55000.00, '2019-04-15'),
('Bob Smith', 2, 60000.00, '2020-06-22'),
('Carol White', 3, 58000.00, '2018-11-03'),
('David Brown', 4, 67000.00, '2021-01-10'),
('Emma Davis', 5, 75000.00, '2019-09-01'),
('Frank Wilson', 6, 45000.00, '2020-10-18'),
('Grace Taylor', 7, 72000.00, '2017-03-25'),
('Henry Harris', 8, 69000.00, '2022-02-15'),
('Ivy Lewis', 9, 52000.00, '2016-05-12'),
('Jack Clark', 10, 61000.00, '2021-07-07'),
('Karen Martinez', 11, 63000.00, '2018-08-30'),
('Leo Rodriguez', 12, 58000.00, '2019-12-17'),
('Mona Young', 13, 51000.00, '2020-11-21'),
('Nina King', 14, 65000.00, '2021-04-09'),
('Oscar Scott', 15, 70000.00, '2022-06-30'),
('Paula Hill', 16, 49000.00, '2020-05-15'),
('Quinn Green', 17, 55000.00, '2021-03-10'),
('Ryan Adams', 18, 47000.00, '2019-10-05'),
('Sara Nelson', 19, 73000.00, '2022-09-12'),
('Tom Baker', 20, 68000.00, '2021-12-01');



SELECT * FROM departments

SELECT * FROM employees


SELECT * FROM employees
    JOIN departments USING(department_id)


SELECT department_name, avg(salary) FROM employees
    JOIN departments USING(department_id) GROUP BY department_name


SELECT department_name, count(*) FROM employees
    JOIN departments USING(department_id) GROUP BY department_name


SELECT department_name, round(avg(salary)) as avg_salary FROM employees
    JOIN departments USING(department_id) GROUP BY department_name
        ORDER BY avg_salary DESC
            LIMIT 1


SELECT extract(YEAR FROM hire_date) as hire_year, count(*) FROM employees
    GROUP BY hire_year ORDER BY hire_year DESC



