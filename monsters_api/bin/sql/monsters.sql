CREATE TABLE
    monsters (
        id serial,
        name character varying(50),
        personality character varying(50)
    );

CREATE TABLE
    habitats (
        id serial,
        name character varying(50),
        climate character varying(50),
        temperature int
    );

CREATE TABLE
    lives (
        monster character varying(50),
        habitat character varying(50)
    );

INSERT INTO
    monsters (name, personality)
VALUES
    ('Bubu', 'agressive'),
    ('Foca', 'impatient'),
    ('Gina', 'fluffy');

INSERT INTO
    habitas (name, climate, temperature)
VALUES
    ('desert', 'dry', 50),
    ('forest', 'wet', 20),
    ('mountain', 'cold', 5);

INSERT INTO
    lives (monster, habitat)
VALUES
    ('Bubu', 'desert'),
    ('Foca', 'forest'),
    ('Gina', 'mountain');