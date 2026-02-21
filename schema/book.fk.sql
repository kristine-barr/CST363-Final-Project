-- Author: Armando Sarza
-- Adds foreign keys for book : author, publisher

ALTER TABLE book
  DROP CONSTRAINT IF EXISTS fk_book_author;

ALTER TABLE book
  ADD CONSTRAINT fk_book_author
  FOREIGN KEY (author_id)
  REFERENCES author(author_id);

ALTER TABLE book
  DROP CONSTRAINT IF EXISTS fk_book_publisher;

ALTER TABLE book
  ADD CONSTRAINT fk_book_publisher
  FOREIGN KEY (publisher_id)
  REFERENCES publisher(publisher_id);