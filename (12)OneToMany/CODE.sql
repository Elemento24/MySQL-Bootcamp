-- SELECT * FROM orders;
-- SELECT * FROM customers WHERE last_name = 'George';
-- SELECT * FROM orders WHERE customer_id = 1;

-- SELECT * FROM orders 
-- WHERE customer_id = (
--   SELECT id FROM customers
--   WHERE last_name = 'George'
-- )

-- Also known as IMPLICIT JOIN or CROSS JOIN
-- SELECT * FROM customers, orders;

-- ================================================================

-- IMPLICIT INNER JOIN(s)
-- SELECT * FROM customers, orders 
-- WHERE customers.id = orders.customer_id;

-- SELECT first_name, last_name, order_date, amount FROM customers, orders 
-- WHERE customers.id = orders.customer_id;

-- EXPLICIT INNER JOIN(s)
-- SELECT * FROM customers
-- INNER JOIN orders ON customers.id = orders.customer_id;

-- SELECT first_name, last_name, order_date, amount FROM customers
-- JOIN orders ON customers.id = orders.customer_id;

-- SELECT * FROM orders
-- INNER JOIN customers ON customers.id = orders.customer_id;

-- SELECT first_name, last_name, order_date, amount FROM orders
-- JOIN customers ON customers.id = orders.customer_id;

-- ================================================================

-- Getting Fancier
-- SELECT first_name, last_name, order_date, amount FROM customers
-- JOIN orders ON customers.id = orders.customer_id ORDER BY amount;

-- SELECT first_name, last_name, SUM(amount) AS total_spent FROM customers
-- JOIN orders 
--   ON customers.id = orders.customer_id 
-- GROUP BY customers.id
-- ORDER BY total_spent DESC;

-- LEFT JOIN
-- SELECT first_name, last_name, order_date, amount FROM customers
-- LEFT JOIN orders ON customers.id = orders.customer_id;

-- SELECT 
--   first_name, 
--   last_name, 
--   IFNULL(SUM(amount), 0) AS total_spent 
-- FROM customers
-- LEFT JOIN orders 
--   ON customers.id = orders.customer_id
-- GROUP BY customers.id
-- ORDER BY total_spent DESC;

-- ================================================================

-- RIGHT JOIN
-- SELECT first_name, last_name, order_date, amount FROM customers
-- RIGHT JOIN orders ON customers.id = orders.customer_id;

-- ================================================================

