-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 07:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `statistic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_count` int(2) NOT NULL,
  `meetings_count` int(2) NOT NULL,
  `seminars_count` int(2) NOT NULL,
  `companies_count` int(2) NOT NULL,
  `workgroups_count` int(2) NOT NULL,
  `courses_count` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`statistic_id`, `user_id`, `contact_count`, `meetings_count`, `seminars_count`, `companies_count`, `workgroups_count`, `courses_count`) VALUES
(1, 2, 1, 1, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`statistic_id`),
  ADD KEY `user stat id` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `statistics`
--
ALTER TABLE `statistics`
  ADD CONSTRAINT `user stat id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
