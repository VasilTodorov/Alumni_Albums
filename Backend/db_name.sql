-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 06:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_name`
--

-- --------------------------------------------------------

--
-- Table structure for table `myexample`
--

CREATE TABLE `myexample` (
  `id` int(10) UNSIGNED NOT NULL,
  `Serial-number` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `species` varchar(99) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `myexample`
--

INSERT INTO `myexample` (`id`, `Serial-number`, `name`, `species`, `description`) VALUES
(1, 177343, 'Sisi Marksin', 'Ultra-Cat', 'My beloved pet. Number 1!!!'),
(2, 433, 'Katarin', 'Bear', 'The capricious!!!'),
(3, 11111, 'Hunk', 'Dog', 'The lovely!!!'),
(4, 433, 'Katarin', 'Bear', 'The capricious!!!'),
(5, 11111, 'Hunk', 'Dog', 'The lovely!!!');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `username`, `password`) VALUES
(1, 'first', 'secreat'),
(2, 'second', 'ssec'),
(3, 'third', 't1234'),
(4, 'ettrrt', 'ggHY54'),
(5, 'gggg', 'fNON78'),
(6, 'fffff1', 'ddddH43'),
(7, 'FFF', 'ffhyB5'),
(8, 'ttrrtH', 'lkq23bL'),
(9, 'dfff', 'LOLh783'),
(12, 'dfffrr', 'LOLh783'),
(13, 'Vasil', 'pohhO98'),
(14, 'nkjbk', '  h LL09'),
(15, 'jjllkkl', 'LLOyy87'),
(16, 'dfdfdf', 'ggJJ54'),
(17, 'rtyryr', '12yYt5'),
(18, 'jjjjkk', 'ljTT99'),
(19, 'ccccc', 'Gew109df'),
(20, 'vvvJH', 'ggUN762'),
(21, 'dddod', '5120kK'),
(22, 'dddbvd', 'H5fe1y'),
(23, 'scsc', 'sscHH65'),
(24, 'frrf4', 'GFrj41'),
(25, 'kkk00', 'nnLojbbvO0'),
(26, 'dddkn', 'e9812Hy'),
(27, 'dddNS', '123kI8'),
(28, 'xxxx', 'kkFE32'),
(29, 'dddffvd2', 'rrrLOL78'),
(30, 'cccdf', 'ddLkop3'),
(31, '1234e66', 'rrjj8iI'),
(32, 'Galin', 'joojK77'),
(33, 'bnnd', 'ddOP09');

-- --------------------------------------------------------

--
-- Table structure for table `reg_new`
--

CREATE TABLE `reg_new` (
  `id` int(11) NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `family_name` varchar(50) NOT NULL,
  `email` varchar(320) NOT NULL,
  `username` varchar(20) NOT NULL,
  `group_class` int(12) NOT NULL,
  `stream` int(11) NOT NULL,
  `faculty_number` int(11) NOT NULL,
  `speciality` enum('kn','i','is','m','stat','pm','si') NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reg_new`
--

INSERT INTO `reg_new` (`id`, `real_name`, `family_name`, `email`, `username`, `group_class`, `stream`, `faculty_number`, `speciality`, `password`) VALUES
(1, 'vasil', 'todorov', 'vn@ko.com', 'theOne', 1, 0, 0, 'kn', 'tttrJJ5'),
(2, 'fdfvvgr', '1234', 'edr@vv.com', 'ccfx', 1, 0, 0, 'kn', 'rrTT10'),
(3, 'fdfddf', 'gdgk dgln', 'gdgdm@vv.com', 'ffflfdgm', 2, 2, 9993, 'i', 'ggLL753'),
(4, 'fddgdg', 'fdffdfd', 'fdf@vvv.com', 'dddmg', 3, 6, 4355, 'stat', 'HHoj655'),
(5, 'ggih', '6778', 'hh@ss.com', 'dddfdsc', 1, 2, 82129, 'pm', 'hhfjrLL877'),
(6, 'fdffdfd', '12345', 'fff@rr.cm', 'ffgd', 4, 1, 5554, 'i', 'gghGT54'),
(7, 'Jordan', 'Popov', 'conq@moma.com', 'koki', 3, 2, 9999, 'si', 'MKjh76'),
(8, 'Ivan', 'Mihailov', 'dodt@bg.com', 'ForYou', 2, 2, 6757, 'kn', 'klSe45'),
(9, 'jjnnirw', 'Kobh', 'dd@dds.com', 'hiwa', 3, 3, 5555, 'stat', 'fdLL290'),
(10, 'ffff', 'gjbn', 'fg@yh.com', 'jojog', 2, 2, 213, 'kn', 'huyLO9'),
(11, 'hhh', 'gyggyum', 'gh@dg.com', 'hjouyt', 4, 3, 5678, 'kn', 'ghyLL0'),
(12, 'uuii', 'num', 'tt@hh.com', 'yyuLO', 2, 1, 9812, 'i', 'tgLL87'),
(13, 'Koko', 'Todo', 'jhhj@gf.com', 'gfgfj', 1, 1, 1, 'kn', '12KJgfd4'),
(14, 'Koko', 'Todo', 'jhhj@gf.com', '??hh', 1, 1, 1, 'kn', '12KJgfd4'),
(15, 'Koko', 'Todo', 'jhhj@gf.com', 'tt9', 1, 1, 1, 'kn', '12KJgfd4'),
(16, 'Koko', 'Todo', 'jhhj@gf.com', 'edc', 1, 1, 1, 'kn', '12KJgfd4'),
(17, 'Koko', 'Todo', 'jhhj@gf.com', 'rfv', 1, 1, 1, 'kn', '12KJgfd4'),
(18, 'Koko', 'Todo', 'jhhj@gf.com', '???', 1, 1, 1, 'kn', '12KJgfd4'),
(19, 'Koko', 'Todo', 'jhhj@gf.com', 'yyhn', 1, 1, 1, 'kn', '12KJgfd4'),
(20, 'Koko', 'Todo', 'jhhj@gf.com', 'hgkgk', 1, 1, 1, 'kn', '12KJgfd4'),
(21, 'Koko', 'Todo', 'jhhj@gf.com', '???gfg', 1, 1, 1, 'kn', '12KJgfd4'),
(22, 'Koko', 'Todo', 'jhhj@gf.com', '?vggh?', 1, 1, 1, 'kn', '12KJgfd4'),
(23, 'Koko', 'Todo', 'jhhj@gf.com', '???fdfd', 1, 1, 1, 'kn', '12KJgfd4'),
(24, 'K', 'Tdo', 'jhhj@gf.com', 'ruler23', 1, 1, 1, 'si', '12KJgfd4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myexample`
--
ALTER TABLE `myexample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `reg_new`
--
ALTER TABLE `reg_new`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myexample`
--
ALTER TABLE `myexample`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `reg_new`
--
ALTER TABLE `reg_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
