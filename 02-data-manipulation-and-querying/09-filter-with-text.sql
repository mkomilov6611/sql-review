SELECT *
FROM sales
WHERE (customer_name LIKE 'Company %')
    AND (customer_name > 'Company A');