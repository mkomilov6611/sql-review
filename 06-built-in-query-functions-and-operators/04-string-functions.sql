-- SELECT CONCAT(first_name, ' ', last_name) FROM memberships;
-- SELECT * FROM memberships WHERE LENGTH(first_name) < 5;
INSERT INTO memberships (
        membership_start,
        membership_end,
        last_checkin,
        last_checkout,
        consumption,
        first_name,
        last_name,
        price,
        billing_frequency,
        gender
    )
VALUES (
        '2021-10-01',
        NULL,
        '2021-10-01 05:17:36',
        '2021-10-01 06:20:45',
        26.49,
        'Muxammad',
        'Komilov',
        19.99,
        12,
        LOWER(
            TRIM (
                BOTH ' '
                FROM ' MALE '
            )
        )
    )