-- Author: Armando Sarza
-- Indexes to accelerate joins / filters on FK columns

CREATE INDEX IF NOT EXISTS idx_book_category_book_id
ON book_category (book_id);

CREATE INDEX IF NOT EXISTS idx_book_category_category_id
ON book_category (category_id);