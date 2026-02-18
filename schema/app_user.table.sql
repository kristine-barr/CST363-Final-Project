-- Author: Kristine Barruzo
-- Creates: app_user table

CREATE TABLE IF NOT EXISTS app_user (
    user_id SERIAL PRIMARY KEY, 
    username VARCHAR(50) NOT NULL UNIQUE, 
    email VARCHAR(255) NOT NULL UNIQUE,  
    role_id INT NOT NULL
);