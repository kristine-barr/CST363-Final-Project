create table category (
    category_id serial primary key,
    category_name varchar(255),
    user_id int not null
);