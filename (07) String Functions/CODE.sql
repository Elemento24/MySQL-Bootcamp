-- Pre-requisites
SHOW DATABASES;
CREATE DATABASE books_db;
USE books_db;
SHOW TABLES;

-- Creating a new table
CREATE TABLE books (
	book_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100),
	author_fname VARCHAR(100),
	author_lname VARCHAR(100),
	released_year INT,
	stock_quantity INT,
	pages INT
);

-- Inserting data into the table
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
	('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
	('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
	('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
	('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
	('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
	('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
	('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
	('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
	('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
	('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
	('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
	("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
	('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
	('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
	('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
	('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

DESC books;
SELECT * FROM books;

-- Using `CONCAT`
SELECT CONCAT('Hello', ' World');

-- Using `CONCAT` on columns
SELECT CONCAT(author_fname, ' ', author_lname) AS author_name FROM books;

-- Using `CONCAT` with Separator
SELECT CONCAT_WS('-', author_fname, author_lname) AS author_name FROM books;

-- Using `SUBSTRING`
SELECT SUBSTRING('Hello World', 1, 4);
SELECT SUBSTRING('Hello World', 7);
SELECT SUBSTRING('Hello World', 3);

-- Using `SUBSTRING` on columns
SELECT SUBSTRING(title, 1, 10) AS 'Short Title' FROM books;
SELECT SUBSTR(title, 1, 10) AS 	'Short Title' FROM books;

-- Concatenating String Functions
SELECT CONCAT (
	SUBSTRING(title, 1, 10), 
	'...'
) AS 'Short Title' FROM books;

-- Using `REPLACE`
SELECT REPLACE('Hello World', 'Hell', '*)!(');
SELECT REPLACE('Hello World', 'l', 7);
SELECT REPLACE('Hello World', 'o', '0');
SELECT REPLACE('Hello World', 'o', '*');
SELECT REPLACE('Cheese Bread Coffee Milk', ' ', ' and ');

-- Using `REPLACE` on columns
SELECT REPLACE(title, 'e', '3') FROM books;
SELECT REPLACE(title, ' ', '-') FROM books;

-- Using `REVERSE`
SELECT REVERSE('Hello World');
SELECT REVERSE('Meow Meow');

-- Using `REVERSE` on columns
SELECT REVERSE(author_fname) FROM books;

-- Concatenating String Functions
SELECT CONCAT('Woof', REVERSE('Woof'));

-- Concatenating String Functions on columns
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

-- Using `CHAR_LENGTH`
SELECT CHAR_LENGTH('Hello World');

-- Using `CHAR_LENGTH` on columns
SELECT CHAR_LENGTH(title) AS 'length', title FROM books;
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;

-- Concatenating String Functions on columns
SELECT CONCAT(
    author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long' 
) FROM books;

-- Using `UPPER` & `LOWER`
SELECT UPPER('Hello World');
SELECT LOWER('Hello World');

-- Using `UPPER` & `LOWER` on columns
SELECT UPPER(title) FROM books;

-- Concatenating String Functions on columns
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;

-- Some Miscellaneous String Functions
-- The second argument represents the index to add in the new string, and the third ...
-- ... argument represents the number of characters to replace (can be 0)
SELECT INSERT('Hello Bobby', 6, 0, 'There');
SELECT INSERT('Hello Bobby', 6, 4, 'There');

SELECT LEFT('Omghahalol!', 3);
SELECT RIGHT('Omghahalol!', 3);
SELECT REPEAT('ha', 4);
SELECT TRIM('  pickle  ');

-- ---------------------------------
-- EXERCISE: String Functions
-- ---------------------------------

SELECT REVERSE(
    UPPER('Why does my cat look at me with such hatred?')
);

SELECT 
    REPLACE(title, ' ', '->') AS 'title' 
FROM books;

SELECT 
    author_lname AS 'forwards',
    REVERSE(author_lname) AS 'backwards'
FROM books;

SELECT CONCAT(
    UPPER(author_fname), ' ', UPPER(author_lname)
) AS 'full name in caps' FROM books;

SELECT CONCAT(
    title, ' was released in ', released_year
) AS 'blurb' FROM books;

SELECT 
    title,
    CHAR_LENGTH(title) AS 'character count'
FROM books;

SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS `quantity`
FROM books;