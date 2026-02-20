create table publisher(
    publisher_id serial primary key,
    publisher_name varchar(255) not null unique
);