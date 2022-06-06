CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    num_guests INTEGER NOT NULL,
    amount_billed NUMERIC(6, 2) NOT NULL,
    amount_tipped NUMERIC(6, 2),
    payment_id INTEGER REFERENCES payment_methods,
    table_id INTEGER REFERENCES tables
);