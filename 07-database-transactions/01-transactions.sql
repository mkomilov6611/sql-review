INSERT INTO customers(first_name, last_name, email)
VALUES ('Maria', 'Jones', 'marian@gmail.com');
INSERT INTO orders(amount_billed, customer_id)
VALUES (103.12);
-- Transaction is automatically turned on for the same-file-queries in PostgreSQL