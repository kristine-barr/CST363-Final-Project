--Author: Bryan Cairo
--Adds PK and FK for the book_genre tables 


ALTER TABLE book_genre DROP CONSTRAINT IF EXISTS book_genre_pkey;
ALTER TABLE book_genre DROP CONSTRAINT IF EXISTS fk_book_genre_book_id;
ALTER TABLE book_genre DROP CONSTRAINT IF EXISTS fk_book_genre_genre_id;

ALTER TABLE book_genre
  ADD PRIMARY KEY (book_id, genre_id), --Adding Primary Key

ADD CONSTRAINT fk_book_genre_book_id --Foreign key for the Book ID
  FOREIGN KEY (book_id)
  REFERENCES book(book_id),

ADD CONSTRAINT fk_book_genre_genre_id --Foreign key for the Genre ID
  FOREIGN KEY (genre_id)
  REFERENCES genre(genre_id);
