-- Set publish date as a varhcar because the OpenLibrary api returns the year or month and
-- year format. For example, publish date = 2006 or publish date = June 2025.

create table book(
    book_id serial primary key,
    title varchar(255),
    publish_date varchar(50),
    author_id int not null,
    publisher_id int not null
);