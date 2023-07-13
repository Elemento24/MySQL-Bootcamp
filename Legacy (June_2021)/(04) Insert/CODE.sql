-- CREATE DATABASE cat_app;
-- SHOW DATABASES;
-- USE cat_app;

-- CREATE TABLE cats
-- (
--   name VARCHAR(50),
--   age INT
-- );
-- SHOW TABLES;

-- -- Column names can be written in any order
-- -- But we need to make sure that the values are provided in that very order
-- INSERT INTO cats(name, age)
-- VALUES('Blue', 1);

-- INSERT INTO cats(age, name) 
-- VALUES(11, 'Draco');

-- INSERT INTO cats(name, age)
-- VALUES ('Charlie', 10)
--       ,('Sadie', 3)
--       ,('Peanut', 2)

-- =========================================================

-- CREATE TABLE people
-- (
--   first_name VARCHAR(20),
--   last_name VARCHAR(20),
--   age INT
-- );
-- DESC people;

-- INSERT INTO people(first_name, last_name, age)
-- VALUES ('Tina', 'Belcher', 13);

-- INSERT INTO people(last_name, first_name, age)
-- VALUES ('Belcher', 'Bob', 42);

-- INSERT INTO people(first_name, last_name, age)
-- VALUES ('Linda', 'Belcher', 45)
--       ,('Philip', 'Frond', 38)
--       ,('Calvin', 'Fischoeder', 70);

-- SELECT * FROM people;
-- DROP TABLE people;
-- SHOW TABLES;

-- =========================================================

-- INSERT INTO cats(name, age)
-- VALUES("This cat is named Charlie which is also a human name. In fact I know a couple of Charlies. Fun fact'", 10);
-- SHOW WARNINGS;

-- INSERT INTO cats(name, age)
-- VALUES('Lima', 'Random Text');
-- SHOW WARNINGS;

-- =========================================================

-- DESC cats;

-- INSERT INTO cats(name)
-- VALUES ('Alabama');
-- SELECT * FROM cats;

-- INSERT INTO cats()
-- VALUES ();
-- SELECT * FROM cats;

-- CREATE TABLE cats2
-- (
--   name VARCHAR(100) NOT NULL,
--   age INT NOT NULL
-- );

-- DESC cats2;

-- INSERT INTO cats2(name)
-- VALUES ('Texas');
-- SHOW WARNINGS;
-- SELECT * FROM cats2;

-- INSERT INTO cats2(age)
-- VALUES (7);
-- SHOW WARNINGS;
-- SELECT * FROM cats2;

-- =========================================================

-- CREATE TABLE cats3
-- (
--   name VARCHAR(20) DEFAULT 'No name provided',
--   age INT DEFAULT 99EFAULT 'No name provided',
--   age INT NOT NULL DEFAULT 99
-- );
-- DESC cats4;

-- INSERT INTO cats4(name, age)
-- VALUES('Cali', NULL);

-- =========================================================

-- INSERT INTO cats(name, age)
-- VALUES ('Helena', 6);

-- INSERT INTO cats(name, age)
-- VALUES ('Helena', 6);

-- SELECT * FROM cats;NULL' argument, then we can manually specify a value as NULL,
-- as can be seen from the below code. The default value will only be used, when no value is specified.
-- So, if we want to make sure that our table doesn't contain NULL at all, then we must specify the 'NOT NULL' arg.
-- INSERT INTO cats3(name, age)
-- VALUES('Montana', NULL);
-- SELECT * FROM cats3;

-- CREATE TABLE cats4
-- (
--   name VARCHAR(20) NOT NULL DEFAULT 'No name provided',
--   age INT NOT NULL DEFAULT 99
-- );
-- DESC cats4;

-- INSERT INTO cats4(name, age)
-- VALUES('Cali', NULL);

-- =========================================================

-- INSERT INTO cats(name, age)
-- VALUES ('Helena', 6);

-- INSERT INTO cats(name, age)
-- VALUES ('Helena', 6);

-- SELECT * FROM cats;

-- CREATE TABLE unique_cats
-- (
--   cat_id INT NOT NULL,
--   name VARCHAR(100),
--   age INT,
--   PRIMARY KEY (cat_id)
-- );
-- DESC unique_cats;

-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES(1, 'Fred', 23);
-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES(2, 'Louise', 3);
-- SELECT * FROM unique_cats;

-- INSERT INTO unique_cats(cat_id, name, age)
-- VALUES(1, 'James', 4);

-- CREATE TABLE unique_cats2
-- (
--   cat_id INT NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100),
--   age INT,
--   PRIMARY KEY (cat_id)
-- );
-- DESC unique_cats2;

-- INSERT INTO unique_cats2(name, age)
-- VALUES('Skippy', 4);
-- SELECT * FROM unique_cats2;

-- INSERT INTO unique_cats2(name, age)
-- VALUES('Jiff', 4);
-- SELECT * FROM unique_cats2;

-- =========================================================

-- CREATE TABLE employees
-- (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   last_name VARCHAR(50) NOT NULL,
--   first_name VARCHAR(50) NOT NULL,
--   middle_name VARCHAR(50),
--   age INT NOT NULL,
--   current_status VARCHAR(50) NOT NULL DEFAULT 'employed',
-- );
-- DESC employees;

-- INSERT INTO employees (first_name, last_name, age)
-- VALUES ('Bob', 'Bletcher', 25);

-- INSERT INTO employees (first_name, middle_name, last_name, age)
-- VALUES ('Linda', 'Lovely', 'Bletcher', 24);

-- INSERT INTO employees (first_name, last_name, age, current_status)
-- VALUES ('Harlene', 'Robster', 29, 'terminated');

-- SELECT * FROM employees;

-- =========================================================
