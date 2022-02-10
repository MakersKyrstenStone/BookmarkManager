# in migrations/01_create_bookmarks_table.sql
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
-- Insert Into bookmarks (url) Values ('http://www.google.com');
