-- CREATE DATABASE cat_app;
-- SHOW DATABASES;
-- USE cat_app;

-- CREATE TABLE cats
-- (
--   cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   name VARCHAR(100),
--   breed VARCHAR(100),
--   age INT
-- );
-- DESC cats;

-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--   ('Cindy', 'Maine Coon', 10),
--   ('Dumbledore', 'Maine Coon', 11),
--   ('Egg', 'Persian', 4),
--   ('Misty', 'Tabby', 13),
--   ('George Michael', 'Ragdoll', 9),
--   ('Jackson', 'Sphynx', 7);

-- SELECT * FROM cats;

-- SELECT name FROM cats;
-- SELECT age FROM cats;
-- SELECT cat_id FROM cats;

-- SELECT name, age FROM cats;
-- SELECT cat_id, age, name FROM cats;

-- =======================================================

-- SELECT * FROM cats WHERE age=4;

-- From the below lines of SQL, we can see that the WHERE function is Case-Insensitive
-- SELECT * FROM cats WHERE name='Egg';
-- SELECT * FROM cats WHERE name='eGg';

-- =======================================================        

-- SELECT cat_id FROM cats;
-- SELECT name, breed FROM cats;
-- SELECT name, age FROM cats WHERE breed='Tabby';
-- SELECT cat_id, age FROM cats WHERE cat_id=age;

-- =======================================================        

-- SELECT cat_id AS id, name FROM cats;
-- SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;
-- DESC cats;

-- =======================================================   

-- SELECT * FROM cats;
-- UPDATE cats SET breed='Shorthair'
-- WHERE breed='Tabby';
-- SELECT * FROM cats

-- UPDATE cats SET age=14
-- WHERE name='Misty';
-- SELECT * FROM cats;

-- =======================================================   

-- UPDATE cats SET name="Jack"
-- WHERE name="Jackson";

-- UPDATE cats SET breed="British Shorthair"
-- WHERE name="Ringo";

-- UPDATE cats SET age=12
-- WHERE breed="Maine Coon";

-- SELECT * FROM cats;

-- =======================================================   

-- SELECT * FROM cats WHERE name='Egg';
-- DELETE FROM cats WHERE name='Egg';
-- SELECT * FROM cats;
-- DELETE FROM cats;

-- =======================================================   

-- SELECT * FROM cats WHERE age=4;
-- DELETE FROM cats WHERE age=4;

-- SELECT * FROM cats WHERE age=cat_id;
-- DELETE FROM cats WHERE age=cat_id;

-- DELETE FROM cats;
-- SELECT * FROM cats;