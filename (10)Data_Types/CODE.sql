-- CREATE DATABASE test_db;
-- USE test_db;
-- SELECT DATABASE();

-- CREATE TABLE dogs
-- (
--   name CHAR(5),
--   breed VARCHAR(10)
-- );
-- DESC dogs;

-- INSERT INTO dogs(name, breed)
-- VALUES ('Bob', 'Beagle'),
--   ('Robby', 'Corgi'),
--   ('Princess Jane', 'Retriever');

-- SHOW WARNINGS;
-- SELECT * FROM dogs;

-- INSERT INTO dogs(name, breed)
-- VALUES ('Bob', 'Beagle Golden');
-- SELECT * FROM dogs;

-- =======================================================

-- CREATE TABLE items(price DECIMAL(5, 2));
-- DESC items;

-- INSERT INTO items(price)
-- VALUES (7),
--   (9876543),
--   (34.88),
--   (298.99999),
--   (1.9999);

-- SHOW WARNINGS;
-- SELECT * FROM items;

-- =======================================================

-- CREATE TABLE thingies(price FLOAT);
-- DESC thingies;

-- INSERT INTO thingies(price)
-- VALUES (88.45),
--   (8877.45),
--   (8877665544.45);

-- SELECT * FROM thingies;

-- =======================================================

-- CREATE TABLE people(
--   name VARCHAR(100),
--   birthdate DATE,
--   birthtime TIME,
--   birthdt DATETIME
-- );
-- DESC people;

-- INSERT INTO people(name, birthdate, birthtime, birthdt)
-- VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35'),
--   ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

-- SELECT * FROM people;

-- =======================================================

-- SELECT CURDATE();
-- SELECT CURTIME();
-- SELECT NOW();

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Microwave', CURDATE(), CURTIME(), NOW());
-- SELECT * FROM people;

-- UPDATE people SET name='Toaster'
-- WHERE name='Microwave';
-- SELECT * FROM people;

-- =======================================================

-- SELECT name, birthdate from people;
-- SELECT name, birthdate, DAY(birthdate) from people;
-- SELECT name, birthdate, DAYNAME(birthdate) from people;
-- SELECT name, birthdate, DAYOFWEEK(birthdate) from people;
-- SELECT name, birthdate, DAYOFYEAR(birthdate) from people;

-- SELECT name, birthdt, DAYOFYEAR(birthdt) from people;
-- SELECT name, birthdt, MONTH(birthdt) from people;
-- SELECT name, birthdt, MONTHNAME(birthdt) from people;

-- SELECT name, birthtime, HOUR(birthtime) from people;
-- SELECT name, birthtime, MINUTE(birthtime) from people;

-- SELECT
--   CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate))
-- FROM people;

-- SELECT 
--   DATE_FORMAT(birthdt, '%m/%d/%Y')
-- FROM people;

-- SELECT 
--   DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i')
-- FROM people;

-- =======================================================

-- SELECT
--   name, birthdate, DATEDIFF(NOW(), birthdate)
-- FROM people;

-- SELECT
--   birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH)
-- FROM people;

-- SELECT
--   birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER)
-- FROM people;

-- SELECT
--   birthdt, birthdt + INTERVAL 1 MONTH
-- FROM people;

-- SELECT
--   birthdt, birthdt - INTERVAL 5 MONTH
-- FROM people;

-- SELECT
--   birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR
-- FROM people;

-- =======================================================

-- CREATE TABLE comments
-- (
--   content VARCHAR(100),
--   created_at TIMESTAMP DEFAULT NOW()
-- );
-- DESC comments;

-- INSERT INTO comments (content)
-- VALUES ('Lol, what a funny article!');

-- INSERT INTO comments (content)
-- VALUES ('I found this offensive!');

-- SELECT * FROM comments;
-- SELECT * FROM comments ORDER BY created_at DESC;

-- CREATE TABLE comments2
-- (
--   content VARCHAR(100),
--   changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
-- );
-- CREATE TABLE comments2
-- (
--   content VARCHAR(100),
--   changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
-- );
-- DESC comments2;

-- INSERT INTO comments2 (content)
-- VALUES ('Lol, what a funny article!');

-- INSERT INTO comments2 (content)
-- VALUES ('I found this offensive!');

-- INSERT INTO comments2 (content)
-- VALUES ('KKKKKKKKKKKKKKKKKKKK');

-- SELECT * FROM comments2;

-- UPDATE comments2 SET content='This is not gibberish'
-- WHERE content='KKKKKKKKKKKKKKKKKKKK';

-- SELECT * FROM comments2;
-- SELECT * FROM comments2 ORDER BY changed_at DESC;

-- =======================================================

-- SELECT CURTIME();
-- SELECT CURDATE();

-- SELECT DAYOFWEEK(NOW());
-- SELECT DATE_FORMAT(NOW(), '%w');

-- SELECT DAYNAME(NOW());
-- SELECT DATE_FORMAT(NOW(), '%W');

-- SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%m/%d/%Y');
-- SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%M %D at %h:%i');

-- CREATE TABLE tweets
-- (
--   content VARCHAR(140),
--   username VARCHAR(20),
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );
-- DESC tweets;

-- INSERT INTO tweets(content, username)
-- VALUES('Heya fellas! Seems like Twitter is gonna rock!', 'Elemento');

-- SELECT * FROM tweets;