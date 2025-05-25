CREATE TABLE `game` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `platform` VARCHAR(100) NOT NULL,
  `jaar` YEAR NOT NULL,
  `uitgebracht` BOOLEAN NOT NULL,
  `prijs` DECIMAL(6,2) NOT NULL,
  `genre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `game` (`platform`, `jaar`, `uitgebracht`, `prijs`, `genre`) VALUES
('PC', 2022, TRUE, 49.99, 'RPG'),
('PlayStation', 2023, FALSE, 59.99, 'Shooter'),
('Xbox', 2021, TRUE, 39.99, 'Adventure'),
('Switch', 2024, FALSE, 59.99, 'Platform'),
('PC', 2020, TRUE, 29.99, 'Indie'),
('PlayStation', 2023, TRUE, 59.99, 'RPG'),
('Switch', 2022, TRUE, 19.99, 'Puzzle');


SELECT * FROM game
WHERE platform = 'PC' AND prijs < 50.00;


SELECT * FROM game
WHERE genre IN ('RPG', 'Shooter') AND uitgebracht = TRUE;



SELECT * FROM game
WHERE prijs = 59.99 AND genre = 'Shooter' AND uitgebracht = FALSE;
