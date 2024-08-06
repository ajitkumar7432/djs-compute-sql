CREATE SCHEMA `social_media` ;

CREATE TABLE `social_media`.`users` (
  `user_id` VARCHAR(6) NOT NULL,
  `username` VARCHAR(30) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `join_date` DATE NOT NULL,
  `country` VARCHAR(10) NOT NULL,
  `bio` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`user_id`));

INSERT INTO `social_media`.`users` (`user_id`, `username`, `email`, `join_date`, `country`, `bio`) VALUES ('U001', 'social_butterfly', 'user001@gmail.com', '2023-01-15', 'USA', 'Love to travel and meet new people');
INSERT INTO `social_media`.`users` (`user_id`, `username`, `email`, `join_date`, `country`, `bio`) VALUES ('U002', 'tech_guru', 'techie@gmail.com', '2022-11-30', 'India', 'Tech enthusiast and coder');
INSERT INTO `social_media`.`users` (`user_id`, `username`, `email`, `join_date`, `country`, `bio`) VALUES ('U003', 'fitness_fantic', 'fitnessgmail.com', '2024-03-22', 'Brazil', 'Fintness lover and gym buddy');



SELECT * FROM social_media.users;