-- USE book_shop;
-- SELECT DATABASE();

-- SELECT COUNT(*) FROM books;
-- SELECT COUNT(DISTINCT author_fname) FROM books;

-- SELECT COUNT(author_lname) FROM books;
-- SELECT COUNT(DISTINCT author_lname) FROM books;

-- SELECT 
--   COUNT(DISTINCT author_lname, author_fname) 
-- FROM books;

-- SELECT COUNT(*) FROM books 
-- WHERE title LIKE '%the%';

-- ===========================================================

-- SELECT author_lname, COUNT(*)
-- FROM books GROUP BY author_lname;

-- SELECT author_fname, author_lname, COUNT(*) FROM books 
-- GROUP BY author_lname, author_fname;

-- SELECT 
--   CONCAT('In ', released_year, ', ', COUNT(*), 'book(s) released') AS year
-- FROM books GROUP BY released_year;

-- ===========================================================

-- SELECT MIN(released_year) FROM books;
-- SELECT MAX(released_year) FROM books;

-- SELECT MIN(pages) FROM books;
-- SELECT MAX(pages) FROM books;

-- ===========================================================

-- SELECT title, pages FROM books
-- WHERE pages = (SELECT MIN(pages) FROM books);

-- SELECT title, pages FROM books
-- WHERE pages = (SELECT MAX(pages) FROM books);

-- SELECT title, pages FROM books
-- ORDER BY pages ASC LIMIT 1;

-- SELECT title, pages FROM books
-- ORDER BY pages DESC LIMIT 1;

-- ===========================================================

-- SELECT author_fname, author_lname, MIN(released_year) FROM books
-- GROUP BY author_lname, author_fname;

-- SELECT author_lname, author_fname, MAX(pages) FROM books
-- GROUP BY author_lname, author_fname;

-- SELECT
--   CONCAT(author_fname, ' ', author_lname) AS full_name,
--   MAX(pages) AS longest_book
-- FROM books GROUP BY author_lname, author_fname;

-- ===========================================================

-- SELECT SUM(pages) FROM books;

-- SELECT author_lname, author_fname, SUM(pages) FROM books
-- GROUP BY author_lname, author_fname;

-- ===========================================================

-- SELECT AVG(released_year) FROM books;
-- SELECT AVG(pages) FROM books;

-- SELECT released_year, AVG(stock_quantity) FROM books
-- GROUP BY released_year;

-- SELECT author_fname, author_lname, AVG(pages) FROM books
-- GROUP BY author_lname, author_fname;

-- ===========================================================

-- SELECT COUNT(*) FROM books;

-- SELECT released_year, COUNT(*) FROM books
-- GROUP BY released_year;

-- SELECT SUM(stock_quantity) FROM books;

-- SELECT author_fname, author_lname, AVG(released_year) FROM books
-- GROUP BY author_lname, author_fname;

-- SELECT 
--   CONCAT(author_fname, ' ', author_lname) AS full_name,
--   pages
-- FROM books ORDER BY pages DESC LIMIT 1;

-- SELECT 
--   released_year AS year, 
--   COUNT(*) AS '# books',
--   AVG(pages) AS 'avg pages'
-- FROM books GROUP BY released_year ORDER BY released_year;