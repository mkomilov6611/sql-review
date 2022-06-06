-- SELECT booking_date, SUM(num_guests)
-- FROM bookings
-- GROUP BY booking_date;
SELECT b.booking_date,
    SUM(b.num_guests) AS guests,
    pm.name
FROM payment_methods pm
    INNER JOIN bookings b ON pm.id = b.payment_id
GROUP BY pm.name,
    b.booking_date
ORDER BY b.booking_date