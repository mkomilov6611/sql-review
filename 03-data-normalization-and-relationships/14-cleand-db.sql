CREATE TABLE projects(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    deadline DATE
);
CREATE TABLE buildings(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    building_id INTEGER REFERENCES buildings ON DELETE
    SET NULL
);
CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    team_id INTEGER REFERENCES teams ON DELETE
    SET NULL
);
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE projects_employees (
    id SERIAL PRIMARY KEY,
    employee_id INTEGER REFERENCES employees ON DELETE CASCADE,
    project_id INTEGER REFERENCES projects ON DELETE CASCADE
);