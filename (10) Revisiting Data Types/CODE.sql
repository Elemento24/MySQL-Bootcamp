-- One can find an exhaustive list of Data Types offered by MySQL here ...
-- ... https://dev.mysql.com/doc/refman/8.0/en/data-types.html

-- Pre-requisites
SHOW DATABASES;
USE books_db;
SHOW TABLES;

-- Using `VARCHAR`
CREATE TABLE friends (
    name VARCHAR(10)
);

INSERT INTO friends (name)
VALUES ('Tom'),
    ('Juan Pablo'),
    ('James');

-- It will produce an error, and won't store any data corresponding to this
INSERT INTO friends (name)
VALUES ('Helena Charles');

SELECT * FROM friends;

-- Using `CHAR`
CREATE TABLE states (
    abbr CHAR(2)
);

INSERT INTO states (abbr)
VALUES ('CA'), ('NY');

-- It will produce an error, and won't store any data corresponding to this
INSERT INTO states (abbr)
VALUES ('XYZ');

SELECT * FROM states;

/*
-> Both CHAR & VARCHAR are defined with a fixed length, which is the maximum length of the strings ...
... that they allow to store. 
-> If we try to store strings larger than the pre-defined length, then the normal SQL standard ...
... will produce an error, and won't store any corresponding data.
-> `VARCHAR` is optimized to store variable length strings, & `CHAR` is optimized to store similar ...
... length strings, for instance, postal codes, yes/no flags, state codes, etc.
-> When we store a string as `CHAR` having length less than the pre-defined length, SQL right-pads ...
... the string to the maximum length and then stores it. On retrieval, the string is trimmed.
-> Note that if we use `CHAR_LENGTH`, it will still show the original length of the string, despite ...
... the fact that it stored after padding to the maximum length. 
*/

-- Using different types of `INTEGER` types; `SIGNED` and `UNSIGNED`
CREATE TABLE parent (
    children TINYINT UNSIGNED
);

DESC parent;

INSERT INTO parent (children)
VALUES (4), (-3);

/*
-> There are different integer types, `TINYINT`, `SMALLINT`, `MEDIUMINT`, `INT`, and `BIGINT`.
-> They differ in terms of their storage capabilities & consumption. Larger the storage capability, ...
... larger the storage consumption.
-> Storing numbers exceeding the limits will produce an error.
-> We also have `SIGNED` and `UNSIGNED`. In the case of `UNSIGNED`, the minimum value is 0, and the ...
... maximum value is doubled than what we have in `SIGNED`.
*/

/*
-> To store fractions, we have different data-types such as `DECIMAL`, `FLOAT`, `DOUBLE`, etc.
-> `DECIMAL` is used to store precise numbers, and to do precise calculations. As a result, `DECIMAL` ...
... ends up consuming more storage than `FLOAT` and `DOUBLE` for storing the same range of values.
-> `DECIMAL` is defined as follows: `DECIMAL(5, 2)`, which means that we can store up to `5-2 = 3` ...
... digits before the decimal, and 2 digits after.
-> In this case, if we try to store more than 3 digits before the decimal, we will get an error. 
-> On the other hand, if we try to store more than 2 digits before the decimal, SQL will round off ...
... the decimal part up to 2 places, with a warning. We can see the warning using `SHOW WARNINGS;`
*/

/*
-> `FLOAT` and `DOUBLE` store larger numbers using less space, at the cost of precision.
-> `FLOAT` takes around 4 bytes, and experiences precision issues at around 7 digits. `DOUBLE` takes ...
... around 8 bytes, and experiences precision issues at around 15 digits.
*/

CREATE TABLE nums (
    x FLOAT,
    y DOUBLE
);

INSERT INTO nums (x, y)
VALUES (1.123, 1.123),
    (1.12345678, 1.12345678),
    (1.123456789123456789, 1.123456789123456789);

SELECT * FROM nums;

/*
-> For storing dates and time, we can use data-types such as `DATE`, `TIME` and `DATETIME`.
-> With `DATE`, we can store any date in the following format: `YYYY-MM-DD`.
-> With `TIME`, we can store any time of the day, or any amount of time or time-interval in the ...
... following format: `HH:MM:SS`. 
-> `DATETIME` stores both date and time in the following format: `YYYY-MM-DD HH:MM:SS`. 
*/

CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES 
    ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00'),
    ('Lulu', '1985-04-11', '9:00:00', '1985-04-11 9:00:00'), 
    ('Juan', '2020-08-15', '23:00:00', '2020-05-15 23:00:00');

SELECT CURTIME();
SELECT CURDATE();
SELECT NOW();
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM people;
 
SELECT 
    birthdate,
    MONTHNAME(birthdate),
    YEAR(birthdate)
FROM people;

SELECT 
    birthtime,
    HOUR(birthtime),
    MINUTE(birthtime)
FROM people;
 
SELECT 
    birthdt,
    MONTH(birthdt),
    DAY(birthdt),
    HOUR(birthdt),
    MINUTE(birthdt)
FROM people;

/*
-> https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-formatD
-> In the above URL, one can find the various string specifiers using which a date can be formatted
*/

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;

SELECT CURDATE();
SELECT DATEDIFF(CURDATE(), birthdate) FROM people;
SELECT DATE_ADD(birthdate, INTERVAL 18 YEAR) FROM people;
SELECT DATE_SUB(birthdate, INTERVAL 1 DAY) FROM people;

SELECT CURTIME();
SELECT TIMEDIFF(CURTIME(), '07:00:00');

SELECT NOW() - INTERVAL 18 YEAR;

SELECT 
    name, birthdate, YEAR(birthdate + INTERVAL 21 YEAR) AS will_be_21
FROM people;

/*
-> TIMESTAMP is a data-type similar to DATETIME, however TIMESTAMP has a smaller range.
-> Due to having a smaller range, TIMESTAMP takes up less memory in storage.
-> So, if we are storing things like birthdays of users, DATETIME makes more sense, but if we are ...
... storing things like last updated time, we can use TIMESTAMP
*/

CREATE TABLE captions (
    text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP
);

INSERT INTO captions (text)
VALUES ('Just me and the girls chilling!');

INSERT INTO captions (text)
VALUES ('Beautiful Sunset!');

/*
-> If we use `ON UPDATE` for any column, say `updated_at`, then whenever any other column is updated ...
... in a row, `updated_at` will have a new value for that row. 
*/

CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO captions2 (text)
VALUES ('I love life!');
UPDATE captions2 SET text = 'I love life again!';
UPDATE captions2 SET text = 'I love life again!!!';

-- ---------------------------------
-- EXERCISE: Data Types
-- ---------------------------------

SELECT CURTIME();
SELECT CURDATE();
SELECT DAYOFWEEK(CURDATE());
SELECT DAYNAME(CURDATE());
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

CREATE TABLE tweets (
    content VARCHAR(150),
    username VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tweets (content, username)
VALUES ('Hello World', 'Elon');

-- ---------------------------------
-- END OF EXERCISE
-- ---------------------------------