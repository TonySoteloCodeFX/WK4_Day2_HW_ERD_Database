CREATE TABLE movie_theater(
    theater_id SERIAL PRIMARY KEY,
    names VARCHAR(20)
);

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    theater_id INTEGER,
    first_name VARCHAR,
    last_name VARCHAR,
    FOREIGN KEY (theater_id) REFERENCES movie_theater(theater_id)
);

CREATE TABLE payments(
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    staff_id INTEGER,
    amount NUMERIC(5,2),
    FOREIGN KEY (staff_id) REFERENCES staff (staff_id)
);

ALTER TABLE payments
ADD FOREIGN KEY (customer_id) REFERENCES customers (customer_id);

CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    food VARCHAR,
    drinks VARCHAR,
    payment_id INTEGER,
    customer_id INTEGER,
    theater_id INTEGER,
    FOREIGN KEY (payment_id) REFERENCES payments (payment_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    FOREIGN KEY (theater_id) REFERENCES movie_theater (theater_id)
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    title VARCHAR(20),
    duration TIME,
    FOREIGN KEY (ticket_id) REFERENCES tickets (ticket_id)
);

ALTER TABLE tickets
ADD movie_id INTEGER,
ADD FOREIGN KEY (movie_id) REFERENCES movies (movie_id);