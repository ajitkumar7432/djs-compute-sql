CREATE TABLE `social_media`.`friendships` (
  `friendship_id` VARCHAR(6) NOT NULL,
  `user_id1` VARCHAR(6) NOT NULL,
  `user_id2` VARCHAR(6) NOT NULL,
  `status` ENUM('accepted', 'pending', 'rejected') NOT NULL,
  `created_at` DATE NOT NULL,
  PRIMARY KEY (`friendship_id`),
  FOREIGN KEY (`user_id1`) REFERENCES `social_media`.`users`(`user_id`),
  FOREIGN KEY (`user_id2`) REFERENCES `social_media`.`users`(`user_id`)
);

INSERT INTO `social_media`.`friendships` (`friendship_id`, `user_id1`, `user_id2`, `status`, `created_at`) 
VALUES 
  ('F0001', 'U001', 'U002', 'accepted', '2024-05-20'),
  ('F0002', 'U002', 'U003', 'pending', '2024-06-15'),
  ('F0003', 'U003', 'U001', 'rejected', '2024-07-01');
SELECT * FROM social_media.friendships;