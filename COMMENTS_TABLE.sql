CREATE TABLE `social_media`.`comments` (
  `comment_id` VARCHAR(6) NOT NULL,
  `post_id` VARCHAR(6) NOT NULL,
  `user_id` VARCHAR(6) NOT NULL,
  `content` TEXT NOT NULL,
  `timestamp` DATETIME NOT NULL,
  PRIMARY KEY (`comment_id`),
  FOREIGN KEY (`post_id`) REFERENCES `social_media`.`posts`(`post_id`),
  FOREIGN KEY (`user_id`) REFERENCES `social_media`.`users`(`user_id`)
);

INSERT INTO `social_media`.`comments` (`comment_id`, `post_id`, `user_id`, `content`, `timestamp`) 
VALUES 
  ('C0001', 'P0001', 'U002', 'Looks amazing!', '2024-07-14 15:35:00'),
  ('C0002', 'P0002', 'U003', 'Congrats on the launch!', '2024-07-14 16:50:00'),
  ('C0003', 'P0003', 'U001', 'Great workout today!', '2024-07-15 09:05:00');
SELECT * FROM social_media.comments;