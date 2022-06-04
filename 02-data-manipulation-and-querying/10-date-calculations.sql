-- SELECT *
-- FROM sales
-- WHERE date_fullfilled - date_created <= '5 days';
SELECT *
FROM sales
WHERE EXTRACT(
        DAY
        FROM date_fullfilled - date_created
    ) <= 5;