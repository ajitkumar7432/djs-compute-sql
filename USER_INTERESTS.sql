CREATE TABLE `social_media`.`user_interests` (
  `interest_id` VARCHAR(6) NOT NULL,
  `user_id` VARCHAR(6) NOT NULL,
  `interest` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`interest_id`),
  FOREIGN KEY (`user_id`) REFERENCES `social_media`.`users`(`user_id`)
);

INSERT INTO `social_media`.`user_interests` (`interest_id`, `user_id`, `interest`) 
VALUES 
  ('I0001', 'U001', 'Travel'),
  ('I0002', 'U002', 'Technology'),
  ('I0003', 'U003', 'Fitness');
  SELECT * FROM social_media.user_interests;
