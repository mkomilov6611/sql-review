CREATE TABLE IF NOT EXISTS conversations (
    user_name VARCHAR(64),
    employer_name VARCHAR(255),
    message TEXT,
    date_sent TIMESTAMP
);