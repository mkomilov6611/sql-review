-- CREATE DATABASE restaurant;
CREATE TABLE payment_methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE tables(
    id SERIAL PRIMARY KEY,
    num_seats INTEGER,
    category VARCHAR(255)
);