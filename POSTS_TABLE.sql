CREATE TABLE `social_media`.`posts` (
  `post_id` VARCHAR(6) NOT NULL,
  `user_id` VARCHAR(6) NOT NULL,
  `content` TEXT NOT NULL,
  `timestamp` DATETIME NOT NULL,
  `likes_count` INT NOT NULL,
  `comments_count` INT NOT NULL,
  PRIMARY KEY (`post_id`),
  FOREIGN KEY (`user_id`) REFERENCES `social_media`.`users`(`user_id`)
);

INSERT INTO `social_media`.`posts` (`post_id`, `user_id`, `content`, `timestamp`, `likes_count`, `comments_count`) 
VALUES 
  ('P0001', 'U001', 'Having a great time at the beach!', '2024-07-14 15:30:00', 42, 5),
  ('P0002', 'U002', 'Just launched my new app!', '2024-07-14 16:45:00', 78, 12),
  ('P0003', 'U003', 'Fitness session was amazing today!', '2024-07-15 09:00:00', 15, 3);
  
SELECT * FROM social_media.posts;
