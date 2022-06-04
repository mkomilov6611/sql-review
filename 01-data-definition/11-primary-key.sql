-- DROP TABLE users;
-- DROP TABLE employers;
-- DROP TABLE conversations;
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(64) NOT NULL,
    yearly_salary INTEGER CHECK (yearly_salary > 0),
    current_status employment_status NOT NULL
);
CREATE TABLE employers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    company_address VARCHAR(255) NOT NULl,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);
CREATE TABLE conversations(
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    employer_id INTEGER,
    message TEXT NOT NULL
);