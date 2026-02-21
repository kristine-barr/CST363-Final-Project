--Author: Bryan Cairo
--Adds PK and FK for the book_genre tables 

ALTER TABLE book_genre
ADD PRIMARY KEY (book_id, genre_id); --Adding Primary Key

ADD CONSTRAINT fk_book --Foreign key for the Book ID
FOREIGN KEY (book_id)
REFERENCES book(book_id),

ADD CONSTRAINT fk_genre --Foreign key for the Genre ID
FOREIGN KEY (genre_id)
REFERENCES genre(genre_id);
