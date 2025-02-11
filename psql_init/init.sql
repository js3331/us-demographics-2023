CREATE TABLE Beatles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    height DECIMAL,
    weight DECIMAL,
    instrument VARCHAR(100),
    birth_place VARCHAR(100),
    active_years VARCHAR(100)
);

INSERT INTO Beatles (name, height, weight, instrument, birth_place, active_years)
VALUES ('John Lennon', 179, 70, 'Vocals, Guitar', 'Liverpool, England', '1960-1970'),
       ('Paul McCartney', 180, 68, 'Vocals, Bass', 'Liverpool, England', '1960-1970'),
       ('George Harrison', 178, 68, 'Vocals, Guitar', 'Liverpool, England', '1960-1970'),
       ('Ringo Starr', 173, 65, 'Vocals, Drums', 'Liverpool, England', '1962-1970');

SELECT * FROM Beatles;