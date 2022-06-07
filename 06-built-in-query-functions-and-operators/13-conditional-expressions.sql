SELECT amount_billed,
    CASE
        WHEN amount_billed > 30 THEN 'Good day'
        WHEN amount_billed > 15 THEN 'Normal day'
        ELSE 'Bad day'
    END AS daily_status
FROM orders