-- Author: Kristine Barruzo
-- Creates index on author_name column in author table to improve query performance when searching by author name

CREATE INDEX IF NOT EXISTS idx_author_author_name
ON author (author_name);