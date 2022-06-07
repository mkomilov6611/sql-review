SELECT EXISTS(
        SELECT first_name
        FROM customers
        WHERE email = 'max@test.com'
    )