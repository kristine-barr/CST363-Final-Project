-- book_genre PK -> (book_id, genre_id)

create table book_genre(
    book_id int not null,
    genre_id int not null
);