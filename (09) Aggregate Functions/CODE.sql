-- One can find an exhaustive list of Aggregate functions offered by MySQL here ...
-- ... https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html

-- Pre-requisites
SHOW DATABASES;
USE books_db;
SELECT * FROM books;

-- Using `COUNT` to get the number of rows
SELECT COUNT(*) FROM books;

-- Doesn't play well with every other function
SELECT title, author_fname, COUNT(*) FROM books;

-- Number of author first names (Won't count a `NULL` value)
SELECT COUNT(author_fname) FROM books;

-- Counting the distinct values of a particular field
SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT title FROM books
WHERE title LIKE '%the%';

SELECT COUNT(*) FROM books
WHERE title LIKE '%the%';

-- Using `GROUP BY` 
SELECT author_lname FROM books
GROUP BY author_lname;

-- Count the number of books written by each author
SELECT author_lname, COUNT(*) FROM books
GROUP BY author_lname;

-- Sorting the authors based on books written
SELECT 
    author_lname, 
    COUNT(*) AS count_books
FROM books
GROUP BY author_lname ORDER BY count_books DESC;

-- Grouping by released years
SELECT released_year, COUNT(*) AS count_books FROM books
GROUP BY released_year 
ORDER BY count_books DESC, released_year DESC;

-- Using `MIN` and `MAX`
SELECT MIN(released_year) FROM books;
SELECT MAX(released_year) FROM books;
SELECT MAX(pages) FROM books;
SELECT MIN(author_lname) FROM books;
SELECT MIN(author_lname), MAX(author_lname) FROM books;

-- Extracing the title of the longest book
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

-- Using Subqueries (Extracing information corresponding to aggregated groups)
SELECT title, pages FROM books
WHERE pages  = (
    SELECT MAX(pages) FROM books
);

-- Inserting a query
INSERT INTO books (title, pages)
VALUES ('My life in words', 634);

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

SELECT title, pages FROM books
WHERE pages  = (
    SELECT MAX(pages) FROM books
);

-- Title of the book that was released earliest
SELECT title, released_year FROM books 
WHERE released_year = (
    SELECT MIN(released_year) FROM books
);

-- Grouping by multiple columns
SELECT author_fname, author_lname FROM books
ORDER by author_lname;

SELECT author_lname, COUNT(*) FROM books
GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*) FROM books
GROUP BY author_fname, author_lname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, COUNT(*) AS count_books FROM books
GROUP BY author ORDER BY count_books DESC;

-- Using `MIN/MAX` with `GROUP BY`
-- Finding the year each author published their first book
SELECT author_lname, MIN(released_year), MAX(released_year) FROM books
GROUP BY author_lname;

SELECT 
    author_lname, 
    MIN(released_year) AS earliest_release, 
    MAX(released_year) AS latest_release, 
    COUNT(*) AS books_written, 
    MAX(pages) AS longest_page_count
FROM books
GROUP BY author_lname;

SELECT 
    author_lname, 
    author_fname,
    MIN(released_year) AS earliest_release, 
    MAX(released_year) AS latest_release, 
    COUNT(*) AS books_written, 
    MAX(pages) AS longest_page_count
FROM books
GROUP BY author_lname, author_fname;

-- Using `SUM`
SELECT SUM(pages) FROM books;

-- Using `SUM` with `GROUP BY`
SELECT author_lname, SUM(pages) AS sum_pages FROM books
GROUP BY author_lname ORDER BY sum_pages DESC;

-- In this case, we won't get the concatenation of strings
SELECT sum(author_lname) FROM books;

-- Using `AVG`
SELECT AVG(released_year) FROM books;
SELECT AVG(pages) FROM books;
SELECT AVG(stock_quantity) FROM books;

-- Using `AVG` with `GROUP BY`
SELECT released_year, AVG(stock_quantity), COUNT(*) FROM books
GROUP BY released_year ORDER BY released_year DESC;

-- ---------------------------------
-- EXERCISE: String Functions
-- ---------------------------------

SELECT * FROM books 
WHERE released_year IS NULL;

DELETE FROM books
WHERE released_year IS NULL;

SELECT COUNT(*) FROM books;

SELECT released_year, COUNT(*) FROM books
GROUP BY released_year ORDER BY released_year DESC;

SELECT SUM(stock_quantity) FROM books;

SELECT author_fname, author_lname, AVG(released_year) FROM books
GROUP BY author_fname, author_lname;

SELECT CONCAT(author_fname, ' ', author_lname), pages FROM books
WHERE pages = (
    SELECT MAX(pages) FROM books
);

SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year ORDER BY released_year;

-- ---------------------------------
-- END OF EXERCISE
-- ---------------------------------