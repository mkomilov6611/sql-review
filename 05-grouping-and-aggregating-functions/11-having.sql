SELECT b.booking_date,
    SUM(b.num_guests) AS guests,
    pm.name
FROM payment_methods pm
    INNER JOIN bookings b ON pm.id = b.payment_id
GROUP BY pm.name,
    b.booking_date
HAVING SUM(amount_billed) > 30
ORDER BY b.booking_date