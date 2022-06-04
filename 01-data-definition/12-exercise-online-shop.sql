-- CREATE DATABASE online_shop;
-- DROP TABLE products;
-- CREATE TABLE IF NOT EXISTS products(
--     product_id SERIAL PRIMARY KEY,
--     product_name VARCHAR(255) NOT NULL,
- - product_price NUMERIC CHECK (product_price > 0),
--     product_description TEXT,
- - amount_in_stock INTEGER check(amount_in_stock >= 0),
--     image_url VARCHAR(255) NOT NULL
-- );
-- ALTER TABLE products
--     ALTER COLUMN product_description SET NOT NULL,
-- ALTER COLUMN amount_in_stock TYPE SMALLINT
INSERT INTO products(
        product_name,
        product_description,
        product_price,
        amount_in_stock,
        image_url
    )
VALUES(
        'Mahsi',
        'A good shoes',
        142.99,
        1,
        'http://www.mahsi.com'
    )