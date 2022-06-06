SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
        SELECT MIN(base_result.sum)
        FROM (
                SELECT booking_date,
                    SUM(amount_billed)
                FROM bookings
                GROUP BY booking_date
                ORDER BY booking_date
            ) AS base_result
    );