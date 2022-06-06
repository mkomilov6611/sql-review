SELECT e1.first_name,
    e1.last_name,
    e2.first_name AS supervisor_name
FROM employees AS e1
    INNER JOIN employees AS e2 ON e1.supervisor_id = e2.id;