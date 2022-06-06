-- SELECT ROUND(AVG(amount_tipped), 2)
-- FROM bookings
- -
WHERE amount_billed > 20
    AND num_guests > 2;
-- SELECT MAX(b.num_guests) AS guest, MAX(t.num_seats) AS seat
-- FROM bookings AS b
-- INNER JOIN tables AS t ON b.table_id = t.id;
SELECT MAX(b.num_guests) AS guest,
    MAX(t.num_seats) AS seat
FROM bookings AS b
    INNER JOIN tables AS t ON b.table_id = t.id
    INNER JOIN payment_methods pm ON b.payment_id = pm.id;