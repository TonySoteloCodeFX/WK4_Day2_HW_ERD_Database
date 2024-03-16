INSERT INTO movie_theater(
    names
) VALUES (
    'My Movie Theater'
);

INSERT INTO staff(
    first_name,
    last_name
) VALUES 
(
    'Sam',
    'Rolon'
),
(
    'Saul',
    'Rolon'
),
(
    'Edward',
    'Rolon'
),
(
    'Rich',
    'Rolon'
);

INSERT INTO customers(
    first_name,
    last_name
) VALUES (
    'Rebeca',
    'Rolon'
),
(
    'Marila',
    'Sotelo'
),
(
    'Isaiah',
    'Sotelo'
),
(
    'Tony',
    'Sotelo'
);

INSERT INTO payments(
    customer_id,
    staff_id,
    amount
) VALUES (
    1,
    7,
    25.50
),
(
    2,
    8,
    30.25
),
(
    3,
    9,
    12.98
),
(
    4,
    10,
    31.17
);

UPDATE staff
SET theater_id = 1
WHERE first_name = 'Edward' AND last_name = 'Rolon';

INSERT INTO concessions(
    food,
    drinks,
    payment_id,
    customer_id,
    theater_id
) VALUES (
    'popcorn',
    'coke',
    1,
    1,
    1
);

INSERT INTO concessions(
    food,
    drinks,
    payment_id,
    customer_id,
    theater_id
) VALUES (
    'nachos',
    'cherry slushy',
    2,
    2,
    1
);

INSERT INTO concessions(
    food,
    drinks,
    payment_id,
    customer_id,
    theater_id
) VALUES (
    'popcorn',
    'coke',
    3,
    3,
    1
);

INSERT INTO concessions(
    food,
    drinks,
    payment_id,
    customer_id,
    theater_id
) VALUES (
    'nachos',
    'coke',
    4,
    4,
    1
);

INSERT INTO movies(
    title,
    duration
) VALUES (
    'Dune Part 2',
    ('02:46:00')
);

INSERT INTO tickets(
    movie_id
) VALUES (
    1
);

UPDATE movies
SET ticket_id = 1
WHERE movie_id = 1 AND title = 'Dune Part 2';

INSERT INTO movies(
    title,
    duration
) VALUES (
    'Ghst bstrs Frzn Emp',
    ('01:55:00')
);

INSERT INTO movies(
    title,
    duration
) VALUES (
    'Kung Fu Panda 4',
    ('01:34:00')
);

INSERT INTO movies(
    title,
    duration
) VALUES (
    'Luca',
    ('01:38:00')
);

INSERT INTO tickets(
    movie_id
) VALUES (
    2
),
(
    3
),
(
    4
);

UPDATE movies
SET ticket_id = 2
WHERE movie_id = 2 AND title = 'Ghst bstrs Frzn Emp';

UPDATE movies
SET ticket_id = 3
WHERE movie_id = 3 AND title = 'Kung Fu Panda 4';

UPDATE movies
SET ticket_id = 4
WHERE movie_id = 4 AND title = 'Luca';