-- Host: localhost:3306
-- Generation Time: May 09, 2022 at 10:04 AM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
CREATE DATABASE `website`;
USE `website`;
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id_register` int(10) UNSIGNED NOT NULL,
  `name` tinytext NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) UNSIGNED ZEROFILL NOT NULL,
  `cpf` bigint(11) UNSIGNED ZEROFILL NOT NULL,
  `dtm_register` datetime NOT NULL DEFAULT current_timestamp(),
  UNIQUE (`email`),
  UNIQUE (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

ALTER TABLE `register` ADD PRIMARY KEY(`id_register`);
ALTER TABLE `register` CHANGE `id_register` `id_register` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;


--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id_register`, `name`, `email`, `phone`, `cpf`, `dtm_register`) VALUES
(1, 'Paulo Silva', 'paulo@gmail.com', 1187654321, 12345678912, '2022-05-12 10:12:37'),
(2, 'José Aparecido', 'jose@gmail.com', 1187654321, 98765432198, '2022-05-12 10:16:08'),
(3, 'Manoel', 'manoel@hotmail.com', 1231231231, 12312321123, '2022-05-12 20:39:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id_register`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id_register` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
