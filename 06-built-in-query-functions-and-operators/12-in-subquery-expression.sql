-- SELECT email
-- FROM customers
-- INNER JOIN orders ON customers.id = orders.customer_id
SELECT email
FROM customers
WHERE id IN(
        SELECT customer_id
        FROM orders
    )