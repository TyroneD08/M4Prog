

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `huisdieren` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `eigenaar` int(150) NOT NULL,
  `typedier` int(80) NOT NULL,
  `leeftijd` int(11) NOT NULL,
  `geboortedatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


ALTER TABLE `huisdieren`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `huisdieren`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


SELECT * FROM dieren LIMIT 2;


SELECT * FROM dieren LIMIT 3 OFFSET 0;


