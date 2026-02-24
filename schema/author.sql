-- Author: Armando Sarza
-- EDITED: (02/20|9:50pm) Adding NULL within author_name

CREATE TABLE IF NOT EXISTS author (
    author_id serial PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL
);
