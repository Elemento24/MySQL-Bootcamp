-- -- Pre-requisites
-- CREATE DATABASE cat_shop;
-- USE cat_shop;

-- CREATE TABLE cats (
-- 	name VARCHAR(50),
-- 	age INT
-- );

-- -- Inserting rows one at a time
-- INSERT INTO cats (name, age)
-- VALUES ('Blue Steele', 5);

-- INSERT INTO cats(name, age)
-- VALUES('Jenkins', 7);

-- -- To view all the rows and columns in a table;
-- SELECT * FROM cats;

-- -- Inserting rows one at a time (switching the order of columns)
-- INSERT INTO cats (age, name)
-- VALUES (2, 'Beth');

-- -- Inserting multiple rows at a time 
-- INSERT INTO cats (name, age)
-- VALUES
-- 	('Meatball', 5),
-- 	('Turkey', 1),
-- 	('Potato Face', 15);

-- -- Sanity Checks
-- DESC cats;
-- SELECT * FROM cats;

-- -- ---------------------------------
-- -- EXERCISE: Insert
-- -- ---------------------------------

-- CREATE TABLE people (
-- 	first_name VARCHAR(20),
-- 	last_name VARCHAR(20),
-- 	age INT
-- );

-- INSERT INTO people (first_name, last_name, age)
-- VALUES 
-- 	('Linda', 'Belcher', 45),
-- 	('Philip', 'Frond', 38),
-- 	('Calvin', 'Fischoeder', 70);

-- SHOW TABLES;
-- DESC people;
-- SELECT * FROM people;

-- -- ---------------------------------
-- -- END OF EXERCISE
-- -- ---------------------------------

-- -- Ensuring that a column doesn't have null values
-- CREATE TABLE cats2 (
-- 	name VARCHAR(100) NOT NULL,
-- 	age int NOT NULL
-- );

-- DESC cats2;

-- -- In some relational DBs, we can use either single quotes or double quotes to enter text
-- -- However, in some, only single quotes are allowed, so, as a best practice, always stick ...
-- -- ... with single quotes

-- -- In order to insert strings with quotes, we can use the "\" to escape the quote
-- -- We can easily use double quotes when using single quotes to enclose the strings

-- CREATE TABLE shop (
-- 	name VARCHAR(50)
-- );

-- INSERT INTO shop
-- VALUES 
-- 	('Pet Food'),
-- 	('Dog\'s Food');

-- SELECT * FROM shop;

-- -- Specifying the default value
-- CREATE TABLE cats3 (
-- 	name VARCHAR(20) DEFAULT 'No name provided',
-- 	age INT DEFAULT 99
-- );

-- -- Inserting a cat without a name
-- INSERT INTO cats3 (age)
-- VALUES (13);

-- -- Inserting a cat without name or age
-- INSERT INTO cats3 ()
-- VALUES ();

-- DESC cats3;
-- SELECT * FROM cats3;

-- -- Combining NOT NULL and DEFAULT
-- CREATE TABLE cats4 (
-- 	name VARCHAR(20) NOT NULL DEFAULT 'Unnamed',
-- 	age INT NOT NULL DEFAULT 20
-- );

-- DESC cats4;

-- -- Defining Primary Key (Unique Identifier)
-- -- Note that a column defined as PRIMARY KEY, is by default NOT NULL

-- CREATE TABLE unique_cats (
-- 	cat_id INT NOT NULL PRIMARY KEY, 
-- 	name VARCHAR(100),
-- 	age INT
-- );

-- DESC unique_cats;

-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES (1, 'Bingo', 2);

-- -- Inserting an entry with the same primary key will give an error
-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES (1, 'Bingo', 3);

-- -- There is no constraint as to how to increase (or decrease) the primary key
-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES (2, 'Bingo', 3);

-- SELECT * FROM unique_cats;

-- -- Another way of defining Primary Key
-- CREATE TABLE unique_cats2 (
-- 	cat_id INT,
-- 	name VARCHAR(20) NOT NULL,
-- 	age INT NOT NULL,
-- 	PRIMARY KEY (cat_id)
-- );

-- DESC unique_cats2;

-- -- Using auto-increment for primary key(s)
-- CREATE TABLE unique_cats3 (
-- 	cat_id INT PRIMARY KEY AUTO_INCREMENT,
-- 	name VARCHAR(20),
-- 	age INT
-- );

-- DESC unique_cats3;

-- INSERT INTO unique_cats3 (name, age)
-- VALUES ('Bingo', 1);

-- INSERT INTO unique_cats3 (name, age)
-- VALUES ('Bingo', 1);

-- -- If we insert an entry with a random `cat_id` (not used yet), then AUTO_INCREMENT will ...
-- -- ... continue increasing the ID from the random ID.

-- INSERT INTO unique_cats3 (cat_id, name, age)
-- VALUES (5, 'Bingo', 1);

-- INSERT INTO unique_cats3 (name, age)
-- VALUES ('Bingo', 1);

-- SELECT * FROM unique_cats3;

-- -- ---------------------------------
-- -- EXERCISE: Create Table / Insert
-- -- ---------------------------------

-- CREATE TABLE Employees (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	first_name VARCHAR(100) NOT NULL,
-- 	middle_name VARCHAR(100),
-- 	last_name VARCHAR(100) NOT NULL,
-- 	age INT NOT NULL,
-- 	current_status VARCHAR(25) NOT NULL DEFAULT 'Employed'
-- );

-- DESC Employees;

-- INSERT INTO Employees (first_name, last_name, age)
-- VALUES ('Thomas', 'Chickenman', 87);

-- SELECT * FROM Employees;