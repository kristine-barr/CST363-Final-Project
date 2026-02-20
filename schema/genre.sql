create table genre(
    genre_id serial primary key,
    genre_name varchar(255) not null unique
);