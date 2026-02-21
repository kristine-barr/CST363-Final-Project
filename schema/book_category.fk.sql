-- Author: Armando Sarza
-- Adds PK + FKs for book_category

ALTER TABLE book_category
    DROP CONSTRAINT IF EXISTS pk_book_category;

ALTER TABLE book_category
    ADD CONSTRAINT pk_book_category
    PRIMARY KEY (book_id, category_id);

ALTER TABLE book_category
    DROP CONSTRAINT IF EXISTS fk_book_category_book;

ALTER TABLE book_category
    ADD CONSTRAINT fk_book_category_book
    FOREIGN KEY (book_id)
    REFERENCES book(book_id);

ALTER TABLE book_category
    DROP CONSTRAINT IF EXISTS fk_book_category_category;

ALTER TABLE book_category
    ADD CONSTRAINT fk_book_category_category
    FOREIGN KEY (category_id)
    REFERENCES category(category_id);
