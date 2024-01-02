-- CREATE TABLE Customers (
--     customer_id INT PRIMARY KEY,
--     customer_name VARCHAR(100),
--     email VARCHAR(100),
--     phone_number VARCHAR(15)
-- );

-- CREATE TABLE Products (
--     product_id INT PRIMARY KEY,
--     product_name VARCHAR(100),
--     price DECIMAL(10, 2),
--     stock_quantity INT
-- );

-- CREATE TABLE Orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     order_date DATE,
--     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
-- );

-- CREATE TABLE Billing (
--     billing_id INT PRIMARY KEY,
--     order_id INT,
--     total_amount DECIMAL(10, 2),
--     payment_date DATE,
--     FOREIGN KEY (order_id) REFERENCES Orders(order_id)
-- );

-- CREATE TABLE Employers (
--     employer_id INT PRIMARY KEY,
--     employer_name VARCHAR(100),
--     department VARCHAR(50)
-- );


-- Insert data into Customers
INSERT INTO Customers (customer_id, customer_name, email, phone_number)
VALUES
    (1, 'John Doe', 'john@example.com', '123-456-7890'),
    (2, 'Jane Smith', 'jane@example.com', '987-654-3210'),
    (3, 'Mike Johnson', 'mike@example.com', '555-123-4567'),
    (4, 'Emily Davis', 'emily@example.com', '111-222-3333');

-- Insert data into Products
INSERT INTO Products (product_id, product_name, price, stock_quantity)
VALUES
    (101, 'Laptop', 999.99, 10),
    (102, 'Smartphone', 499.99, 20),
    (103, 'Tablet', 299.99, 15),
    (104, 'Headphones', 79.99, 30);

-- Insert data into Orders
INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
    (504, 11, '2023-01-15'),
    (505, 22, '2023-02-20'),
    (506, 34, '2023-03-10'),
    (507, 45, '2023-04-05');

-- Insert data into Billing
INSERT INTO Billing (billing_id, order_id, total_amount, payment_date)
VALUES
    (701, 501, 999.99, '2023-01-18'),
    (702, 502, 499.99, '2023-02-25'),
    (703, 503, 299.99, '2023-03-15'),
    (704, 504, 79.99, '2023-04-10');


CREATE TABLE CustomerPurchases (
  purchase_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  product_id INTEGER,
  order_id INTEGER,
  billing_id INTEGER,
  purchase_date DATE,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (billing_id) REFERENCES Billing(billing_id)
);

-- Insert data into CustomerPurchases
INSERT INTO CustomerPurchases (purchase_id, customer_id, product_id, order_id, billing_id, purchase_date, total_amount)
VALUES
  (1, 1, 101, 501, 701, '2023-01-15', 999.99),
  (2, 2, 102, 502, 702, '2023-02-20', 499.99),
  (3, 3, 103, 503, 703, '2023-03-10', 299.99),
  (4, 4, 104, 504, 704, '2023-04-05', 79.99);
