-- DELIMITER $$

-- CREATE TRIGGER must_be_adult
--   BEFORE INSERT ON users FOR EACH ROW
--   BEGIN
--     IF NEW.age < 18
--     THEN
--       SIGNAL SQLSTATE '45000'
--         SET MESSAGE_TEXT = 'Must be an adult!';
--     END IF;
--   END;
-- $$

-- DELIMITER ;

-- INSERT INTO users(username, age)
-- VALUES("Yang", 17);
-- SELECT * FROM users;

-- =================================================

-- INSERT INTO follows(follower_id, followee_id)
-- VALUES (4, 4);

-- DELIMITER $$

-- CREATE TRIGGER prevent_self_follows
--   BEFORE INSERT ON follows FOR EACH ROW
--   BEGIN
--     IF NEW.follower_id = NEW.followee_id
--     THEN 
--       SIGNAL SQLSTATE '45000'
--       SET MESSAGE_TEXT = 'You cannot follow yourself!';
--     END IF;
--   END;
-- $$  

-- DELIMITER ;

-- INSERT INTO follows(follower_id, followee_id)
-- VALUES (7, 2);

-- =================================================

-- DELIMITER $$

-- CREATE TRIGGER capture_unfollow
--   AFTER DELETE ON follows FOR EACH ROW
--   BEGIN
--     INSERT INTO unfollows(follower_id, followee_id)
--     VALUES (OLD.follower_id, OLD.followee_id);
--   END;
-- $$

-- DELIMITER ;

-- DELIMITER $$

-- CREATE TRIGGER capture_unfollow
--   AFTER DELETE ON follows FOR EACH ROW
--   BEGIN
--     INSERT INTO unfollows SET 
--     follower_id = OLD.follower_id,
--     followee_id = OLD.followee_id;
--   END;
-- $$

-- DELIMITER ;

-- SELECT * FROM unfollows;
-- SELECT * FROM follows LIMIT 5;

-- DELETE FROM follows
-- WHERE follower_id = 2 AND followee_id = 1;
-- SELECT * FROM unfollows;
-- SELECT * FROM follows LIMIT 5;

-- DELETE FROM follows
-- WHERE follower_id = 3;
-- SELECT * FROM unfollows;

-- =================================================

-- SHOW TRIGGERS;

-- DROP TRIGGER prevent_self_follows;
-- INSERT INTO follows(follower_id, followee_id)
-- VALUES (7, 7);