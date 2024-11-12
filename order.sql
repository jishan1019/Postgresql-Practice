CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50)
)


CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    total_amount DECIMAL(10,2)
)


INSERT INTO customers (customer_name) VALUES 
('John Doe'),
('Jane Smith'),
('Alice Brown'),
('Bob Johnson'),
('Carol Lee'),
('David Wilson'),
('Emma Davis'),
('Frank Thomas'),
('Grace Lewis'),
('Henry Martin'),
('Ivy Clark'),
('Jack Miller'),
('Karen Adams'),
('Leo Turner'),
('Mona Young'),
('Nina Scott'),
('Oscar Walker'),
('Paula King'),
('Quinn Perez'),
('Ryan Evans');



INSERT INTO orders (customer_id, order_date, total_amount) VALUES 
(1, '2023-01-15', 250.75),
(2, '2023-02-10', 125.50),
(3, '2023-03-05', 340.00),
(4, '2023-03-15', 75.20),
(5, '2023-04-01', 560.00),
(6, '2023-04-20', 410.10),
(7, '2023-05-10', 95.00),
(8, '2023-05-15', 220.35),
(9, '2023-06-01', 175.80),
(10, '2023-06-18', 390.60),
(11, '2023-07-05', 120.75),
(12, '2023-07-25', 89.99),
(13, '2023-08-05', 450.00),
(14, '2023-08-15', 300.00),
(15, '2023-09-01', 199.50),
(16, '2023-09-10', 560.75),
(17, '2023-10-05', 620.00),
(18, '2023-10-12', 75.25),
(19, '2023-10-20', 280.40),
(20, '2023-11-01', 340.60);



SELECT * FROM customers

SELECT * FROM orders


SELECT customer_id, count(order_id), sum(total_amount) FROM orders GROUP BY customer_id HAVING count(order_id) > 0


SELECT extract(month FROM order_date) as month , sum(total_amount) FROM orders WHERE extract(year FROM order_date) > 2022 GROUP BY month