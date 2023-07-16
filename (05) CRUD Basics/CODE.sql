-- Pre-requisites
SHOW DATABASES;
USE cat_shop;
SHOW TABLES;

CREATE TABLE cats (
	cat_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	breed VARCHAR(100),
	age INT
);

DESC cats;

INSERT INTO cats (name, breed, age)
VALUES 
	('Ringo', 'Tabby', 4),
	('Cindy', 'Maine Coon', 10),
	('Dumbledore', 'Maine Coon', 11),
	('Egg', 'Persian', 4),
	('Misty', 'Tabby', 13),
	('George Michael', 'Ragdoll', 9),
	('Jackson', 'Sphynx', 7);

SELECT * FROM cats;

-- To get all the columns
SELECT * FROM cats;

-- To get a single column
SELECT age FROM cats;

-- To get multiple columns
SELECT name, breed FROM cats;

-- Using `WHERE` to specify a condition
SELECT * FROM cats
WHERE age = 4;

SELECT * FROM cats
WHERE name = 'Egg';

-- ---------------------------------
-- EXERCISE: Rapid Fire
-- ---------------------------------

SELECT cat_id FROM cats;
SELECT name, breed FROM cats;

SELECT name, age FROM cats
WHERE breed = 'Tabby';

SELECT cat_id, age FROM cats
WHERE cat_id = age;

-- ---------------------------------
-- END OF EXERCISE
-- ---------------------------------

-- Using aliases for column-names. Note that it is only for output purposes, and not ...
-- ... any permanent fixes.
SELECT cat_id AS ID, name FROM cats;
SELECT name AS kitty_name FROM cats;

-- Using `UPDATE`
SELECT * FROM cats;

UPDATE cats SET breed = 'Shorthair'
WHERE breed = 'Tabby';

UPDATE cats SET age = 14
WHERE name = 'Misty';

SELECT * FROM cats;

-- A good rule of thumb is that before updating any rows using the `UPDATE` clause, we should ...
-- ... try out our `WHERE` clause, just to ensure that we are updating the correct rows.

-- ---------------------------------
-- EXERCISE: Update
-- ---------------------------------

SELECT * FROM cats;

UPDATE cats SET name = 'Jack'
WHERE name = 'Jackson';

UPDATE cats SET breed = 'British Shorthair'
WHERE name = 'Ringo';

UPDATE cats SET age = 12
WHERE breed = 'Maine Coon';

SELECT * FROM cats;

-- ---------------------------------
-- END OF EXERCISE
-- ---------------------------------

-- Using `DELETE`
SELECT * FROM cats;

DELETE FROM cats 
WHERE name = 'Egg';

DELETE FROM cats;

SELECT * FROM cats;

-- ---------------------------------
-- EXERCISE: Delete
-- ---------------------------------

SELECT * FROM cats;

DELETE FROM cats
WHERE age = 4;

DELETE FROM cats
WHERE age = cat_id;

DELETE FROM cats;

SELECT * FROM cats;