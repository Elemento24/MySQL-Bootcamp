-- SELECT title, rating FROM series
-- INNER JOIN reviews
--   ON reviews.series_id = series.id;

-- =================================================

-- SELECT 
--   title,
--   AVG(rating) AS avg_rating
-- FROM series
-- INNER JOIN reviews
--   ON reviews.series_id = series.id
-- GROUP BY series.id ORDER BY avg_rating;

-- =================================================

-- SELECT first_name, last_name, rating FROM reviewers
-- INNER JOIN reviews ON reviews.reviewer_id = reviewers.id;

-- =================================================

-- SELECT 
--   title as unreviewed_series
-- FROM series
-- LEFT JOIN reviews
--   ON reviews.series_id = series.id
-- WHERE rating IS NULL;

-- =================================================

-- SELECT
--   genre,
--   AVG(rating) AS avg_rating
-- FROM series
-- INNER JOIN reviews
--   ON reviews.series_id = series.id
-- GROUP BY genre ORDER BY avg_rating;

-- SELECT
--   genre,
--   ROUND(AVG(rating), 2) AS avg_rating
-- FROM series
-- INNER JOIN reviews
--   ON reviews.series_id = series.id
-- GROUP BY genre ORDER BY avg_rating;

-- =================================================

-- SELECT
--   first_name, 
--   last_name,
--   COUNT(rating) AS 'COUNT',
--   IFNULL(MIN(rating), 0) AS MIN,
--   IFNULL(MAX(rating), 0) AS MAX,
--   IFNULL(AVG(rating), 0) AS AVG,
--   CASE 
--     WHEN COUNT(rating) = 0 THEN 'INACTIVE'
--     ELSE 'ACTIVE'
--   END AS 'STATUS'
-- FROM reviewers
-- LEFT JOIN reviews
--   ON reviews.reviewer_id = reviewers.id
-- GROUP BY reviewers.id ORDER BY AVG DESC;

-- SELECT
--   first_name, 
--   last_name,
--   COUNT(rating) AS 'COUNT',
--   IFNULL(MIN(rating), 0) AS MIN,
--   IFNULL(MAX(rating), 0) AS MAX,
--   ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
--   IF(COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS 'STATUS'
-- FROM reviewers
-- LEFT JOIN reviews
--   ON reviews.reviewer_id = reviewers.id
-- GROUP BY reviewers.id ORDER BY AVG DESC;

-- =================================================

-- SELECT 
--   title,
--   rating,
--   CONCAT(first_name, ' ', last_name) AS 'reviewer'
-- FROM reviews
-- INNER JOIN reviewers
--   ON reviews.reviewer_id = reviewers.id
-- INNER JOIN series
--   ON reviews.series_id = series.id
-- ORDER BY title;

-- SELECT
--   title,
--   rating,
--   CONCAT(first_name, ' ', last_name) AS 'reviewer'
-- FROM reviewers
-- INNER JOIN reviews 
--   ON reviewers.id = reviews.reviewer_id
-- INNER JOIN series
--   ON series.id = reviews.series_id
-- ORDER BY title;

-- =================================================