-- Author: Armando Sarza
-- Notes: (edited 2/20|9:40pm) Added NULL to prevent dups category names per user.

CREATE TABLE IF NOT EXISTS category (
    category_id serial PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT  unique_category_user_name UNIQUE (user_id, category_name)
);