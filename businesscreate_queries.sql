-- Set the mode to table
.mode table

-- Display column headers
.headers on



--basic select statements

select * from customers;
select * from managers;
select * from employers;
select * from orders;
select * from Billing;



--joins

--inner join

--List customer orders with details (customer name, order date, total amount):

select c.customer_name,o.order_id,o.order_date,b.total_amount from 
  customers c
inner join orders o on c.customer_id=o.customer_id
inner join Billing b on o.order_id=b.order_id;

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
    (504, 11, '2023-01-15'),
    (505, 22, '2023-02-20'),
    (506, 34, '2023-03-10'),
    (507, 45, '2023-04-05');



--left join

select c.customer_name,o.order_id,o.order_date from 
  customers c
left join orders o on c.customer_id=o.customer_id;




--right join
select c.customer_name,o.order_id,o.order_date from 
  customers c
full outer join orders o on c.customer_id=o.customer_id;




--cross join

--self join

SELECT e.employer_name AS employee, m.employer_name AS manager
FROM Employers e
LEFT JOIN Employers m ON e.manager_id = m.employer_id;

--who are reporting to only managers
SELECT e.employer_name AS employee, m.employer_name AS manager
FROM Employers e
JOIN Employers m ON e.manager_id = m.employer_id;

--Let us get who are reporting to 




--order by
SELECT e.employer_name AS employee, m.employer_name AS manager
FROM Employers e
JOIN Employers m ON e.manager_id = m.employer_id
WHERE m.employer_name = 'Robert White';

--how many orders;

SELECT COUNT(*) as total_orders
FROM orders;

-- order by




SELECT * 
FROM orders order by order_id desc;

SELECT * 
FROM Orders 
WHERE order_date >= '2023-02-01' AND order_date <= '2023-02-28';