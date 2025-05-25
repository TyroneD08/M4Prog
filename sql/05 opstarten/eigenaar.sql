CREATE TABLE `huisdiereigenaar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `voornaam` VARCHAR(120) NOT NULL,
  `achternaam` VARCHAR(120) NOT NULL,
  `leeftijd` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
