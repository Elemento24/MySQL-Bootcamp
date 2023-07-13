-- SELECT author_lname FROM books;
-- SELECT DISTINCT author_lname FROM books;

-- SELECT released_year FROM books;
-- SELECT DISTINCT released_year FROM books;

-- SELECT author_fname, author_lname FROM books;
-- SELECT DISTINCT author_lname FROM books;

-- SELECT DISTINCT
--   CONCAT(author_fname, " ", author_lname)
-- FROM books;

-- SELECT DISTINCT author_fname, author_lname FROM books;

-- ======================================================

-- SELECT author_lname FROM books;
-- SELECT author_lname FROM books
-- ORDER BY author_lname;

-- SELECT title FROM books;
-- SELECT title FROM books
-- ORDER BY title;

-- SELECT author_lname FROM books
-- ORDER BY author_lname DESC;

-- SELECT title FROM books
-- ORDER BY title DESC;

-- SELECT released_year FROM books
-- ORDER BY released_year;

-- SELECT released_year FROM books
-- ORDER BY released_year ASC;

-- SELECT title, released_year, pages FROM books
-- ORDER BY released_year;

-- SELECT title, pages FROM books
-- ORDER BY released_year;

-- SELECT title, author_fname, author_lname
-- FROM books ORDER BY 2;

-- SELECT title, author_fname, author_lname
-- FROM books ORDER BY 3;

-- SELECT title, author_fname, author_lname
-- FROM books ORDER BY 1 DESC;

-- SELECT author_fname, author_lname FROM books
-- ORDER BY author_lname, author_fname;

-- ======================================================

-- SELECT title FROM books;
-- SELECT title FROM books
-- LIMIT 3;

-- SELECT title, released_year FROM books
-- ORDER BY released_year DESC LIMIT 5;

-- In SQL, rows start with 0 index. The 1st integer denotes the starting row, and the 2nd integer...
-- denotes the number of rows to consider.
-- SELECT title, released_year FROM books
-- ORDER BY released_year DESC LIMIT 0, 5;

-- In order to select all the rows, use a gigantic number as the second argument
-- SELECT title FROM books
-- LIMIT 5, 18271;

-- ======================================================

-- SELECT title, author_fname FROM books
-- WHERE author_fname LIKE '%da%';

-- SELECT title, author_fname FROM books
-- WHERE author_fname LIKE 'da%';

-- SELECT title FROM books
-- WHERE title LIKE '%the%';

-- ======================================================

-- SELECT title, stock_quantity FROM books
-- WHERE stock_quantity LIKE '___';

-- SELECT title, stock_quantity FROM books
-- WHERE stock_quantity LIKE '____';

-- SELECT title FROM books
-- WHERE title LIKE '%\%%';

-- SELECT title FROM books
-- WHERE title LIKE '%\_%';

-- ======================================================

-- SELECT title FROM books
-- WHERE title LIKE '%stories%';

-- SELECT title, pages FROM books
-- ORDER BY pages DESC LIMIT 1;

-- SELECT 
--   CONCAT(title, ' - ', released_year) AS summary
-- FROM books ORDER BY released_year DESC LIMIT 3;

-- SELECT title, author_lname FROM books
-- WHERE author_lname LIKE '% %';

-- SELECT title, released_year, stock_quantity FROM books
-- ORDER BY stock_quantity, title LIMIT 3;

-- SELECT title, author_lname FROM books
-- ORDER BY author_lname, title;

-- SELECT 
--   UPPER(CONCAT('my favorite author is ', author_fname, ' ', author_lname, '!')) as yell
-- FROM books ORDER BY author_lname;