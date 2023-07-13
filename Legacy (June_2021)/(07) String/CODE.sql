-- SELECT author_fname, author_lname FROM books;
-- SELECT CONCAT('Hello', 'World');
-- SELECT CONCAT('Hello', '...', 'World');

-- SELECT CONCAT(author_fname, " ", author_lname) AS 'full name'
-- FROM books;

-- SELECT author_fname as first, author_lname as last,
--   CONCAT(author_fname, ' ', author_lname) AS full
-- FROM books;

-- Concat with Separator
-- SELECT 
--   CONCAT_WS(' - ', title, author_fname, author_lname)
-- FROM books;

-- =============================================================

-- SELECT SUBSTRING('Hello World', 1, 4);
-- SELECT SUBSTRING('Hello World', 7);
-- SELECT SUBSTRING('Hello World', -3);

-- SELECT title FROM books;

-- The below 2 functions serve the same purpose
-- SELECT SUBSTRING(title, 1, 10) AS 'short-title' FROM books;
-- SELECT SUBSTR(title, 1, 10) AS 'short-title' FROM books;

-- SELECT 
--   CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title'
-- FROM books;

-- =============================================================

-- SELECT REPLACE('Hello World', 'Hell', '$%^&');
-- SELECT REPLACE('Hello World', 'l', '7');
-- SELECT REPLACE('Hello World', 'o', '8');
-- SELECT REPLACE('HellO World', 'o', '*');
-- SELECT REPLACE('Cheese Bread Coffee Milk', ' ', ' and ');

-- SELECT
--   REPLACE(title, 'e', 3)
-- FROM books;

-- SELECT
--   SUBSTRING(REPLACE(title, 'e', 3), 1, 10) as 'Weird String'
-- FROM books;

-- =============================================================

-- SELECT REVERSE('Hello World');
-- SELECT REVERSE('meow meow');

-- SELECT 
--   REVERSE(author_fname)
-- FROM books;

-- We can easily convert any string into a Palindrome by concatenating it with it's reverse.
-- SELECT CONCAT('woof', REVERSE('woof'));

-- SELECT 
--   CONCAT(author_fname, REVERSE(author_fname))
-- FROM books;

-- =============================================================

-- SELECT CHAR_LENGTH('Hello World');
-- SELECT 
--   author_lname, CHAR_LENGTH(author_lname) AS 'length' 
-- FROM books;

-- SELECT 
--   CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') as 'Abstract'
-- FROM books;

-- =============================================================

-- SELECT UPPER('Hello World');
-- SELECT LOWER('Hello World');

-- SELECT
--   UPPER(title)
-- FROM books;

-- SELECT 
--   UPPER(CONCAT('my favorite book is the ', title)) as 'Abstract'
-- FROM books;

-- =============================================================

-- SELECT REVERSE(UPPER('Why does my cat loop at me with such hatred?'));
-- SELECT REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'),' ','-');

-- SELECT 
--   REPLACE(title, ' ', '->') AS 'title'
-- FROM books;

-- SELECT 
--   author_lname AS 'forwards', REVERSE(author_lname) AS 'backwards'
-- FROM books;

-- SELECT
--   UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
-- FROM books;

-- SELECT
--   CONCAT(title, ' was released in ', released_year) AS 'blurb'
-- FROM books;

-- SELECT
--   title, CHAR_LENGTH(title) AS 'character count'
-- FROM books;

-- SELECT
--   CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
--   CONCAT(author_lname, ',', author_fname) AS author,
--   CONCAT(stock_quantity, ' in stock') AS quantity
-- FROM books;