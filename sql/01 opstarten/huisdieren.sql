-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: May 13, 2025 at 08:04 AM
-- Server version: 11.7.2-MariaDB-ubu2404
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m4prog`
--

-- --------------------------------------------------------

--
-- Table structure for table `huisdieren`
--

CREATE TABLE `huisdieren` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `eigenaar` int(150) NOT NULL,
  `typedier` int(80) NOT NULL,
  `leeftijd` int(11) NOT NULL,
  `geboortedatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `huisdieren`
--
ALTER TABLE `huisdieren`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `huisdieren`
--
ALTER TABLE `huisdieren`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




INSERT INTO `huisdieren` (`id`, `naam`, `eigenaar`, `typedier`, `leeftijd`, `geboortedatum`) 
VALUES 
(NULL, 'koning hamster', 'joep', 'hamster', '1', '2024-02-01'),
(NULL, 'miss fluffy', 'marije', 'hamster', '2', '2024-02-01'),
(NULL, 'knager', 'joep', 'hamster', '2', '2021-02-21'),
(NULL, 'minizebra', 'marije', 'hamster', '1', '2014-02-21');

select * from huisdieren where leeftijd >= 1;

select * from huisdieren where leeftijd <= 1;

select * from huisdieren where leeftijd = 1;

select * from huisdieren where eigenaar = joep;

select * from huisdieren where eigenaar = marije;


select * from huisdieren where leeftijd = 1 AND 2;

select * from huisdieren where eigenaar = marije AND joep;
