CREATE TABLE employees(
	employee_id serial PRIMARY KEY,
	first_name varchar(50)	NOT NULL,
	last_name varchar(75),
	title varchar(150),
	birth_date date,
	notes text
)
SELECT * FROM employees;
DROP TABLE orders,employees,customers;
CREATE TABLE customers(
	customer_id varchar(5) PRIMARY KEY	NOT NULL,
	company_name varchar(100)	NOT NULL,
	contact_name varchar(100)
)
SELECT * FROM customers;

CREATE TABLE orders(
	order_id int PRIMARY KEY	NOT NULL,
	customer_id varchar(5) REFERENCES customers(customer_id) NOT NULL,
	employee_id int REFERENCES employees(employee_id) NOT NULL,
	order_date date NOT NULL,
	ship_city text NOT NULL
)
SELECT * FROM orders;
