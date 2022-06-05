CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address_id INTEGER NOT NULL
);
CREATE TABLE addresses(
    id SERIAL PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    house_number VARCHAR(64) NOT NULL,
    city_id INTEGER NOT NULL
);
CREATE TABLE cities(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);