-- SQL-команды для создания таблиц
CREATE TABLE employees(
	employee_id int PRIMARY KEY	NOT NULL,
	first_name varchar(50)	NOT NULL,
	last_name varchar(75),
	title varchar(150),
	birth_date date,
	notes text
)
SELECT * FROM employees;

CREATE TABLE customers(
	customer_id int PRIMARY KEY	NOT NULL,
	company_name varchar(100)	NOT NULL,
	contact_name varchar(100)
)
SELECT * FROM customers;

CREATE TABLE orders(
	order_id int PRIMARY KEY	NOT NULL,
	customer_id int REFERENCES customers(customer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date date NOT NULL,
	ship_city text NOT NULL
)
SELECT * FROM orders;
