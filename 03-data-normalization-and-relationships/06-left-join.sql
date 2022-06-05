SELECT *
FROM addresses a
    LEFT JOIN users u ON u.address_id = a.id
    LEFT JOIN cities AS c ON c.id = a.city_id