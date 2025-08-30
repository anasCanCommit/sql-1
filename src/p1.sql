CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT,
    department TEXT,
    salary NUMERIC(10,2)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city TEXT
);

CREATE TABLE inventories (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    quantity INTEGER,
    price NUMERIC(10,2)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INT REFERENCES customers(customer_id),
    total_amount NUMERIC(10,2)
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES inventories(product_id),
    quantity INT,
    sale_date DATE
);

INSERT INTO employees (name, position, department, salary) VALUES
('Alice Johnson', 'Manager', 'Sales', 75000),
('Bob Smith', 'Sales Rep', 'Sales', 55000),
('Charlie Brown', 'Engineer', 'IT', 65000),
('Diana Prince', 'HR Officer', 'HR', 48000),
('Ethan Hunt', 'Technician', 'IT', 42000);

INSERT INTO customers (customer_name, city) VALUES
('John Doe', 'New York'),
('Jane Roe', 'Los Angeles'),
('Sam Green', 'New York'),
('Lucy Black', 'Chicago');

INSERT INTO inventories (product_name, quantity, price) VALUES
('Laptop', 50, 1000.00),
('Phone', 100, 600.00),
('Tablet', 75, 400.00),
('Monitor', 30, 250.00);

INSERT INTO orders (order_date, customer_id, total_amount) VALUES
('2025-08-01', 1, 1600.00),
('2025-08-05', 3, 2000.00),
('2025-08-10', 2, 600.00);

INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 1, 1, '2025-08-01'),
(1, 1, 2, 1, '2025-08-01'),
(2, 3, 1, 2, '2025-08-05'),
(3, 2, 2, 1, '2025-08-10');


