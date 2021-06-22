-- USE book_shop;
-- SELECT DATABASE();

-- SELECT title, released_year FROM books 
-- WHERE released_year = 2017;

-- SELECT title, released_year FROM books 
-- WHERE released_year != 2017;

-- SELECT title, author_lname FROM books;
-- SELECT title, author_lname FROM books WHERE author_lname = 'Harris';
-- SELECT title, author_lname FROM books WHERE author_lname != 'Harris';

-- ======================================================================

-- SELECT title FROM books
-- WHERE title LIKE '%W%';

-- SELECT title FROM books
-- WHERE title NOT LIKE '%W%';

-- ======================================================================

-- SELECT title, released_year FROM books
-- WHERE released_year > 2000 ORDER BY released_year;

-- SELECT title, released_year FROM books
-- WHERE released_year >= 2000 ORDER BY released_year;

-- SELECT title, stock_quantity FROM books
-- WHERE stock_quantity >= 100;

-- SELECT 99 > 1; -- Returns TRUE(1)
-- SELECT 99 < 1; -- Returns FALSE(0)
-- SELECT 'a' > 'b'; -- Returns FALSE(0)
-- SELECT 'A' > 'a'; -- Returns FALSE(0)
-- SELECT 'A' = 'a'; -- Returns TRUE(1)

-- ======================================================================

-- SELECT title, released_year FROM books
-- WHERE released_year < 2000 ORDER BY released_year;

-- SELECT title, released_year FROM books
-- WHERE released_year <= 2000 ORDER BY released_year;

-- ======================================================================

-- SELECT title, author_lname, released_year FROM books
-- WHERE author_lname = 'Eggers' && released_year > 2010 ORDER BY released_year;

-- SELECT title, author_lname, released_year FROM books
-- WHERE author_lname = 'Eggers' AND released_year > 2010 ORDER BY released_year;

-- SELECT 1 < 5 && 7 = 9; -- FALSE(0)
-- SELECT 54 <= 54 && 'a' = 'A'; -- TRUE(1)

-- SELECT title, author_lname, released_year FROM books
-- WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel%';

-- ======================================================================

-- SELECT title, released_year, author_lname FROM books
-- WHERE author_lname = 'Eggers' || released_year > 2010 ORDER BY released_year;

-- SELECT title, released_year, author_lname FROM books
-- WHERE author_lname = 'Eggers' OR released_year > 2010 ORDER BY released_year;

-- SELECT title, author_lname, released_year, stock_quantity FROM books
-- WHERE author_lname = 'Eggers' || released_year > 2010 || stock_quantity > 100;

-- ======================================================================

-- SELECT title, released_year FROM books
-- WHERE released_year >= 2004 AND released_year <= 2015 ORDER BY released_year;

-- Both the end points are INCLUSIVE
-- SELECT title, released_year FROM books
-- WHERE released_year BETWEEN 2004 AND 2015 ORDER BY released_year;

-- SELECT title, released_year FROM books
-- WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

-- SELECT CAST('2017-05-02' AS DATETIME);

-- USE test_db;
-- SELECT DATABASE();
-- SELECT * FROM people;

-- SELECT name, birthdt FROM people 
-- WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';

-- Though, it will produce results without CAST, but it's always better to 
-- use CAST function when comparing different data-types.
-- SELECT name, birthdt FROM people WHERE birthdt BETWEEN 
-- CAST('1980-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME);

-- ======================================================================

-- USE book_shop;
-- SELECT DATABASE();

-- SELECT title, author_lname FROM books
-- WHERE author_lname = 'Carver' OR author_lname = 'Lahiri' OR author_lname='Smith';

-- SELECT title, author_lname FROM books
-- WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

-- SELECT title, released_year FROM books
-- WHERE released_year IN (2017, 1985) ORDER BY released_year;

-- SELECT title, released_year FROM books
-- WHERE released_year NOT IN (2017, 1985) ORDER BY released_year;

-- SELECT title, released_year FROM books
-- WHERE 
--   released_year >= 2000 AND 
--   released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016) 
-- ORDER BY released_year;

-- SELECT title, released_year FROM books
-- WHERE 
--   released_year % 2 = 1 AND released_year >= 2000
-- ORDER BY released_year;

-- ======================================================================

-- SELECT title, released_year,
--   CASE
--     WHEN released_year >= 2000 THEN 'Modern Lit'
--     ELSE '20th Century Lit'
--   END AS genre
-- FROM books;

-- SELECT title, stock_quantity,
--   CASE
--     WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
--     WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
--     ELSE '***'
--   END AS stock
-- FROM books;

-- SELECT title, stock_quantity,
--   CASE
--     WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
--     WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
--     WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
--     ELSE '****'
--   END AS stock
-- FROM books;

-- SELECT title, stock_quantity,
--   CASE
--     WHEN stock_quantity <= 50 THEN '*'
--     WHEN stock_quantity <= 100 THEN '**'
--     ELSE '***'
--   END AS stock
-- FROM books ORDER BY stock_quantity;

-- ======================================================================

-- SELECT title, released_year FROM books
-- WHERE released_year < 1980 ORDER BY released_year;

-- SELECT title, author_lname FROM books
-- WHERE author_lname IN ('Eggers', 'Chabon');

-- SELECT title, author_lname, released_year FROM books
-- WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- SELECT title, pages FROM books
-- WHERE pages BETWEEN 100 AND 200 ORDER By pages;

-- SELECT title, author_lname FROM books
-- WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- SELECT title, author_lname FROM books
-- WHERE SUBSTR(author_lname, 1, 1) = 'C' OR SUBSTR(author_lname, 1, 1) = 'S';

-- SELECT title, author_lname FROM books
-- WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');

-- SELECT title, author_lname, 
--   CASE
--     WHEN title LIKE '%stories%' THEN 'Short Stories'
--     WHEN title LIKE '%just kids%' OR title LIKE '%a heartbreaking work%' THEN 'Memoir'
--     ELSE 'Novel'
--   END as type
-- FROM books;

-- SELECT author_fname, author_lname,
--   CASE
--     WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*), ' books')
--     ELSE '1 book'
--   END AS count 
-- FROM books GROUP BY author_lname, author_fname;