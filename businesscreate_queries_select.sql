--Update the managers table to include the manager_id column

-- Add columns to the Employers table in SQLite
-- ALTER TABLE Employers
-- ADD COLUMN manager_id INT;

-- ALTER TABLE Employers
-- ADD COLUMN salary DECIMAL(10, 2);


--update the column with unique constraint

-- Add a unique constraint to an existing column (e.g., employer_name)
-- ALTER TABLE Employers
-- ADD CONSTRAINT unique_employer_name UNIQUE (employer_name);



-- CREATE TABLE Employers (
--     employer_id INTEGER PRIMARY KEY,
--     employer_name TEXT NOT NULL UNIQUE,
--     department VARCHAR(50),
--     manager_id INT,
--     salary DECIMAL(10, 2)
-- );

-- Set the mode to table
.mode table

-- Display column headers
.headers on





CREATE TABLE Managers (
    employer_id INTEGER PRIMARY KEY,
    manager_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    FOREIGN KEY (employer_id) REFERENCES Employers(employer_id)
);




INSERT INTO Managers (employer_id, manager_name, email, phone_number)
VALUES
    (5, 'Ravi kumar', 'ravi@abc.com', 9102332323),
    (4, 'seshadir ', 'ss@abc.com', 723572645),
  (3, 'Akira ', 'as@abc.com', 73423572645),
  (2, 'Sadyo ', 'wqjebn@abc.com', 723545);
  


-- select * from Employers;
-- select * from Managers;
--find out who all are reporting to ravi kumar

select e.employer_name as employeesreportingravi from Employers e
join Managers m on e.manager_id = m.employer_id
where m.manager_name ='Ravi kumar';





-- SELECT
--     e.employer_id,
--     e.employer_name,
--     e.department,
--     e.manager_id,
--     e.salary,
--     m.manager_name,
--     m.email,
--     m.phone_number
-- FROM
--     Employers e
-- JOIN
--     Managers m ON e.manager_id = m.employer_id
-- WHERE
--     m.manager_name = 'Ravi kumar';

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
    (501, 1, '2023-01-15'),
    (502, 2, '2023-02-20'),
    (503, 3, '2023-03-10'),
    (504, 4, '2023-04-05');

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



