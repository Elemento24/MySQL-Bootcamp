-- Pre-requisites
SHOW DATABASES;
USE books_db;

-- Adding some new books
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

SELECT * FROM books;

-- Using `DISTINCT`
SELECT author_lname FROM books;
SELECT DISTINCT(author_lname) FROM books;

-- Using `DISTINCT` on a combination of columns (using `CONCAT`)
SELECT author_fname, author_lname FROM books;
SELECT DISTINCT(CONCAT(author_fname, ' ', author_lname)) FROM books;

-- Using `DISTINCT` on columns together: This query will return all the distinct combinations ...
-- ... of author's first name & author's last name
SELECT DISTINCT 
    author_fname, author_lname
FROM books;

SELECT DISTINCT 
    author_fname, author_lname, released_year
FROM books;

-- Using `ORDER BY` (it comes towards the end of the query): Ascending Order
SELECT book_id, author_fname, author_lname FROM books
ORDER BY author_lname;

-- Using `ORDER BY`: Descending Order
SELECT book_id, author_fname, author_lname FROM books
ORDER BY author_lname DESC;

SELECT title, pages FROM books
ORDER BY pages;

-- If we order by a column which is not selected, the query will still work
SELECT title, pages FROM books
ORDER BY released_year;

SELECT title, pages, released_year FROM books
ORDER BY released_year;

-- Using `ORDER BY` based on the column index
SELECT book_id, author_fname, author_lname, pages FROM books
ORDER BY pages;

SELECT book_id, author_fname, author_lname, pages FROM books
ORDER BY 4;

SELECT book_id, author_fname, author_lname, pages FROM books
ORDER BY 2;

-- Using `ORDER BY` on multiple columns: The query will sort first by the first column, and ...
-- ... then, will sort by the second column.

SELECT author_lname, released_year, title FROM books
ORDER BY author_lname;

SELECT author_lname, released_year, title FROM books
ORDER BY 
    author_lname, 
    released_year DESC;

SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books
ORDER BY author;

-- Using `LIMIT`
SELECT book_id, title, released_year FROM books
LIMIT 5;

-- Using `LIMIT` in conjunction with `ORDER BY`
SELECT book_id, title, released_year FROM books
ORDER BY released_year LIMIT 5;

-- Using `LIMIT` for selecting a particular range of queries: The first argument of `LIMIT` ...
-- ... indicates the starting index, and the second argument indicates the number of rows.
SELECT book_id, title, released_year FROM books
ORDER BY released_year LIMIT 0, 5;

SELECT book_id, title, released_year FROM books
ORDER BY released_year LIMIT 1, 2;

-- In `WHERE`, it needs to be an exact match to extract information
SELECT title, author_fname, author_lname FROM books
WHERE author_fname = 'David';

-- In `LIKE`, we can do pattern-based searching: `%` is a wild-card, it represents ...
-- ... "0 or more characters"
SELECT title, author_fname, author_lname FROM books
WHERE author_fname LIKE '%da%';

SELECT title, author_fname, author_lname FROM books
WHERE author_fname LIKE 'da%';

SELECT title, author_fname, author_lname FROM books
WHERE author_fname LIKE '%da';

SELECT * FROM books
WHERE title LIKE '%:%';

-- `_` can also be used in `LIKE`, it represents exactly one character
-- The following query returns the books whose author's last name is exactly 4 characters long.
SELECT title, author_fname, author_lname FROM books
WHERE author_fname LIKE '____';

SELECT * FROM books
WHERE author_fname LIKE '%n';

-- Escaping Wildcards: How to select any column if that contains wildcards
-- We can escape wildcards using `\`
SELECT title, author_fname, author_lname FROM books
WHERE title LIKE '%';

SELECT title, author_fname, author_lname FROM books
WHERE title LIKE '%\%%';

SELECT title, author_fname, author_lname FROM books
WHERE title LIKE '%\_%';

-- ---------------------------------
-- EXERCISE: String Functions
-- ---------------------------------

SELECT title FROM books
WHERE title LIKE '%stories%';

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

SELECT CONCAT(title, ' - ', released_year) AS summary FROM books
ORDER BY released_year DESC LIMIT 3;

SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %';

SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity, released_year DESC LIMIT 3;

SELECT title, author_lname FROM books
ORDER BY author_lname, title;

SELECT UPPER(
    CONCAT('My favorite author is ', author_fname, ' ', author_lname, '!')
) AS yell FROM books
ORDER BY author_lname;