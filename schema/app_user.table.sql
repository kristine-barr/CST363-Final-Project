-- Author: Kristine Barruzo
-- Creates: app_user table

CREATE TABLE IF NOT EXISTS app_user (
    user_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    email VARCHAR(255) NOT NULL UNIQUE,  
    role_id INT NOT NULL
);