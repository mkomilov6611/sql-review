- - PostgreSQL + ENUM = > We have to create a custom type first CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');
CREATE TABLE IF NOT EXISTS users (
    full_name VARCHAR(64),
    yearly_salary INTEGER,
    current_status employment_status
);