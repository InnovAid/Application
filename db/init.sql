-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2019 at 09:13 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innovaid`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `quantity`) VALUES
(1, 'neque', 1),
(2, 'autem', 1),
(3, 'expedita', 2),
(4, 'et', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mappings`
--

CREATE TABLE `mappings` (
  `item_id` int(11) NOT NULL,
  `detected_text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mappings`
--

INSERT INTO `mappings` (`item_id`, `detected_text`) VALUES
(1, 'Test'),
(2, 'Test2'),
(3, 'Test3'),
(4, 'Test4'),
(1, 'Consectetur sunt dolores aut assumenda accusamus et. Aut sunt sint dolorem qui. Voluptas quasi sit iusto accusantium omnis nisi.'),
(2, 'Consequatur ipsa quasi sit at sit alias ad quae. Provident eos ex nihil atque molestiae est eos.'),
(3, 'Dicta aut aspernatur id id. Quod et ut quasi occaecati incidunt illum corporis molestiae. Et quam nobis quisquam quia. Consequatur quos amet ut dolores eum eveniet sed.'),
(4, 'Modi voluptas et ratione nobis. Molestiae rem cupiditate quis pariatur qui sunt eius. Ad velit alias omnis.'),
(1, 'Unde ullam animi ut rerum aut recusandae voluptatum doloribus. Culpa est dolor ad sed. Et quidem qui repellendus quia maxime architecto. Et eius fugiat quia sapiente eaque voluptas.'),
(2, 'Voluptatem autem facilis eaque libero ut voluptas vitae. Vero recusandae ut similique cupiditate repudiandae. Labore qui necessitatibus nostrum eos porro quo officiis.'),
(3, 'Deleniti aperiam pariatur et facere nemo. Reiciendis veniam esse eius illum quis quasi porro. Consequuntur suscipit cumque eligendi eveniet magnam magnam rerum nulla.'),
(4, 'Error quae impedit eligendi. In ab est rerum sunt quaerat nobis. Nobis et culpa ex cum corrupti incidunt illo exercitationem. Quibusdam rerum quos ea in.'),
(1, 'Nostrum non impedit suscipit et. Quos ut optio explicabo. Deserunt repudiandae dolore dolor nihil aut optio sint consequatur.'),
(2, 'Voluptatem dolores labore laborum ipsum ut reiciendis molestias. Ut autem quis quo et et earum ducimus. Et perspiciatis aut assumenda et quo ut.'),
(3, 'Quaerat nam ut labore aut eligendi aperiam doloribus. Aut atque soluta consequatur libero dicta aut expedita.'),
(4, 'Illum libero omnis molestiae est cupiditate in. Quaerat dignissimos natus quidem sit sunt sunt in. Et beatae dignissimos sint laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `nric` varchar(9) NOT NULL,
  `rank` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`nric`, `rank`, `name`) VALUES
('ecunumbqz', 'Mis', 'enim'),
('gdghlmdqq', 'Mis', 'et'),
('hcfpzmviv', 'Mis', 'quas'),
('mzemykapl', 'Mr.', 'fugit'),
('otczcqcma', 'Mr.', 'commodi'),
('ozyrcjujw', 'Mrs', 'est'),
('S9712345A', 'Mrs', 'neque'),
('sqvkoaqjk', 'Mis', 'ut'),
('vjaqetmml', 'Dr.', 'impedit'),
('yphmjngkr', 'Dr.', 'esse');

-- --------------------------------------------------------

--
-- Table structure for table `routine_checks`
--

CREATE TABLE `routine_checks` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `checked_by` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine_checks`
--

INSERT INTO `routine_checks` (`id`, `date`, `checked_by`) VALUES
(161, '1981-11-17', 'S9712345A'),
(162, '1998-07-31', 'ecunumbqz'),
(163, '1995-07-03', 'gdghlmdqq'),
(164, '2014-12-07', 'hcfpzmviv'),
(165, '1987-05-22', 'mzemykapl'),
(166, '2000-07-17', 'otczcqcma'),
(167, '1983-12-08', 'ozyrcjujw'),
(168, '1989-04-22', 'sqvkoaqjk'),
(169, '1981-04-21', 'vjaqetmml'),
(170, '1986-05-13', 'yphmjngkr'),
(171, '0000-00-00', 'S9712345A');

-- --------------------------------------------------------

--
-- Table structure for table `scans`
--

CREATE TABLE `scans` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `check_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scans`
--

INSERT INTO `scans` (`id`, `item_id`, `expiry_date`, `check_id`) VALUES
(1, 1, '2000-01-08', 161),
(2, 2, '1988-10-14', 162),
(3, 3, '1992-11-02', 163),
(4, 4, '2006-10-17', 164),
(11, 1, '1982-02-21', 161),
(12, 2, '1997-11-09', 162),
(13, 3, '1988-06-18', 163),
(14, 4, '1996-06-15', 164),
(21, 1, '2009-05-09', 161),
(22, 2, '1981-07-07', 162),
(23, 3, '2000-07-18', 163),
(24, 4, '1999-07-10', 164);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mappings`
--
ALTER TABLE `mappings`
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`nric`);

--
-- Indexes for table `routine_checks`
--
ALTER TABLE `routine_checks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checked_by` (`checked_by`);

--
-- Indexes for table `scans`
--
ALTER TABLE `scans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `check_id` (`check_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `routine_checks`
--
ALTER TABLE `routine_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `scans`
--
ALTER TABLE `scans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mappings`
--
ALTER TABLE `mappings`
  ADD CONSTRAINT `mappings_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `routine_checks`
--
ALTER TABLE `routine_checks`
  ADD CONSTRAINT `routine_checks_ibfk_1` FOREIGN KEY (`checked_by`) REFERENCES `people` (`nric`) ON UPDATE CASCADE;

--
-- Constraints for table `scans`
--
ALTER TABLE `scans`
  ADD CONSTRAINT `scans_ibfk_1` FOREIGN KEY (`check_id`) REFERENCES `routine_checks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `scans_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
