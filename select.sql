-- CREATE TABLE students (

-- student_id SERIAL PRIMARY KEY,
-- first_name VARCHAR(50),
-- last_name VARCHAR(50),
-- age INT,
-- grade CHAR(2),
-- course VARCHAR(50),
-- email VARCHAR(100),
-- dob DATE,
-- blood_group VARCHAR(5),
-- country VARCHAR(50)
-- )



INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Physics', 'jane.smith@example.com', '2002-05-23', 'A-', 'Canada'),
('Robert', 'Brown', 21, 'A', 'Chemistry', 'robert.brown@example.com', '2003-03-10', 'B+', 'UK'),
('Emily', 'Jones', 23, 'C', 'Biology', 'emily.jones@example.com', '2001-07-04', 'AB-', 'Australia'),
('Michael', 'Davis', 24, 'B', 'History', 'michael.davis@example.com', '2000-11-19', 'O-', 'New Zealand'),
('Sarah', 'Wilson', 19, 'A', 'English', 'sarah.wilson@example.com', '2005-09-25', 'A+', 'USA'),
('David', 'Taylor', 20, 'C', 'Computer Science', 'david.taylor@example.com', '2004-02-14', 'B-', 'India'),
('Laura', 'Anderson', 21, 'B', 'Philosophy', 'laura.anderson@example.com', '2003-06-18', 'O+', 'Ireland'),
('Daniel', 'Thomas', 22, 'A', 'Economics', 'daniel.thomas@example.com', '2002-12-05', 'AB+', 'South Africa'),
('Emma', 'Harris', 23, 'A', 'Sociology', 'emma.harris@example.com', '2001-04-30', 'A-', 'Germany');





SELECT * FROM students


SELECT email FROM students


SELECT email,age FROM students



SELECT email as student_email FROM students



SELECT email as "Student email" FROM students


-- SOet 

SELECT * FROM students ORDER BY age ASC

SELECT country FROM students ORDER BY country ASC

-- UNIQUE value show
SELECT DISTINCT country FROM students

SELECT * FROM students WHERE country='USA'

SELECT * FROM students WHERE grade= 'A' and course  = 'English'

SELECT * FROM students WHERE country = 'USA' OR country = 'INDIA'



SELECT * FROM students WHERE age <=20




SELECT * FROM students WHERE age <> 20


-- MODUEL CONTINUE AFTER 51-6 

SHOW timezone

SELECT now()


SELECT CURRENT_DATE

SELECT now()::date

SELECT to_char(now(), 'dd/mm/yyyy')

SELECT CURRENT_DATE - INTERVAL '1 year'

SELECT age(CURRENT_DATE, '2002-04-07')