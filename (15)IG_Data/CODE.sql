-- Finding the 5 oldest users
-- SELECT * FROM users
-- ORDER BY created_at LIMIT 5;

-- =====================================

-- Most popular registration day of the week
-- SELECT 
--   COUNT(*) as Count,
--   DAYNAME(created_at) AS Day
-- FROM users
-- GROUP BY Day ORDER BY Count DESC;

-- =====================================

-- Identify Inactive Users (Users with no photos)
-- SELECT 
--   users.id,
--   username
-- FROM users
-- LEFT JOIN photos
--   ON photos.user_id = users.id
-- WHERE photos.id IS NULL
-- ORDER BY users.id;

-- =====================================

-- Identiy most popular photo (and the corresponding user)
-- SELECT
--   users.id AS UserID,
--   username,
--   photos.id AS PhotoID,
--   photos.image_url AS ImageURL,
--   COUNT(*) AS Count
-- FROM photos
-- INNER JOIN likes
--   ON likes.photo_id = photos.id
-- INNER JOIN users
--   ON photos.user_id = users.id
-- GROUP BY photos.id ORDER BY Count DESC LIMIT 3;

-- =====================================

-- Calculate average number of photos per user
-- (Total number of photos / Total number of users)
-- SELECT COUNT(*) FROM photos;
-- SELECT COUNT(*) FROM users;

-- SELECT 
--   (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)
-- AS Average;

-- =====================================

-- Top 5 most commonly used hashtags
-- SELECT 
--   tags.id AS TagID,
--   tags.tag_name AS Tag,
--   COUNT(*) AS Count
-- FROM tags
-- INNER JOIN photo_tags
--   ON photo_tags.tag_id = tags.id
-- GROUP BY tags.id ORDER BY Count DESC LIMIT 5;

-- =====================================

-- Finding bots (Users who have liked every single photo)
-- SELECT 
--   users.id AS UserID,
--   users.username as Username,
--   COUNT(*) AS Count
-- FROM likes
-- INNER JOIN users
--   ON users.id = likes.user_id
-- GROUP BY users.id
-- HAVING Count = (
--   SELECT COUNT(*) FROM photos
-- );

-- =====================================