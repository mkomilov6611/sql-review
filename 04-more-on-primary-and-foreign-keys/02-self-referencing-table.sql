ALTER TABLE employees
ADD COLUMN supervisor_id INTEGER REFERENCES employees ON DELETE
SET NULL