-- QUERY 1--
 
SELECT user_id, COUNT(post_id) AS post_count
FROM posts
GROUP BY user_id
HAVING COUNT(post_id) >= 1;

-- QUERY 2 (PARTIALLY) --
SELECT country,COUNT(user_id)
FROM USERS
GROUP BY country
ORDER BY count(user_id) DESC
LIMIT 2;

-- QUERY 4 --
SELECT u.username,c.content AS post_content,p.content AS comment_content
FROM `comments` c
INNER JOIN `posts` p ON c.post_id = p.post_id
INNER JOIN `social_media`.`users` u ON c.user_id = u.user_id
WHERE c.user_id = p.user_id;

