-- INSERT INTO users(username)
-- VALUES ('BluetheCat'),
--   ('CharlieBrown'),
--   ('Colt Steele');

-- =======================================

-- INSERT INTO photos(image_url, user_id)
-- VALUES ('/ajskbasjb', 1),
--   ('/ajskbasjb', 2),
--   ('/ajskbasjb', 2);

-- =======================================

-- INSERT INTO likes(user_id, photo_id) 
-- VALUES (1, 1), (2, 1), (1, 2);

-- Won't work because of PRIMARY KEY constraints
-- INSERT INTO likes(user_id, photo_id) 
-- VALUES (1, 1);

-- =======================================

-- INSERT INTO follows(follower_id, followee_id)
-- VALUES (1, 2),
--   (1, 3),
--   (3, 1),
--   (2, 3);

-- Won't work due to PRIMARY KEY constraints
-- INSERT INTO follows(follower_id, followee_id)
-- VALUES (1, 2);

-- =======================================

-- INSERT INTO tags(tag_name)
-- VALUES ('adorable'),
--   ('cute'),
--   ('sunrise');

-- INSERT INTO photo_tags(photo_id, tag_id)
-- VALUES (1, 1), (1, 2), (2, 3), (3, 2);

-- Won't work due to PRIMARY KEY constraints
-- INSERT INTO photo_tags(photo_id, tag_id)
-- VALUES (1, 1);