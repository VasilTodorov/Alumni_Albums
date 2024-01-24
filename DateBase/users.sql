-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 07:56 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL,
  `email` varchar(320) NOT NULL,
  `first  name` varchar(99) NOT NULL,
  `last name` varchar(99) NOT NULL,
  `major` varchar(99) NOT NULL,
  `faculty number` varchar(10) NOT NULL,
  `graduation` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `first  name`, `last name`, `major`, `faculty number`, `graduation`) VALUES
(1, 'tsanko84', 'tsanko82084', 'tsanko82084@gmail.com', 'Tsanko', 'Angelov', 'Computer Science', '82084', '2019'),
(2, 'stefani15', 'stefani82115', 'stefani82115@gmail.com', 'Stefani', 'Stefanova', 'Computer Science', '82115', '2019'),
(3, 'vasil29', 'vasil82129', 'vasil82129@gmail.com', 'Vasil', 'Todorov', 'Computer Science', '82129', '2020'),
(4, 'vasil4', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82133', '2020'),
(5, 'vasil5', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82134', '2020'),
(6, 'vasil6', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82135', '2020'),
(7, 'vasil7', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82136', '2020'),
(8, 'vasil8', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82137', '2020'),
(10, 'vasil9', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82138', '2020'),
(11, 'vasil10', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82139', '2020'),
(12, 'vasil11', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82140', '2020'),
(13, 'vasil12', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82141', '2020'),
(14, 'vasil13', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82142', '2020'),
(15, 'vasil14', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82143', '2020'),
(16, 'vasil15', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82144', '2020'),
(17, 'vasil16', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82145', '2020'),
(18, 'vasil17', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82146', '2020'),
(19, 'vasil18', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82147', '2020'),
(20, 'vasil19', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82148', '2020'),
(21, 'vasil20', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82149', '2020'),
(22, 'vasil21', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82150', '2020'),
(23, 'vasil22', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82151', '2020'),
(24, 'vasil23', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82152', '2020'),
(25, 'vasil3', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82132', '2020'),
(26, 'vasil2', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82131', '2020'),
(27, 'vasil1', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82130', '2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculty number` (`faculty number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
