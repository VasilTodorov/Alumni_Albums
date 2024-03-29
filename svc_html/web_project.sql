-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 10:25 PM
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
-- Database: `web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `connection_id` int(11) NOT NULL,
  `user_id_1` int(11) NOT NULL,
  `user_id_2` int(11) NOT NULL,
  `connection_type` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`connection_id`, `user_id_1`, `user_id_2`, `connection_type`) VALUES
(1, 2, 1, 'colleague');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(99) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(99) NOT NULL,
  `organizer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `description`, `date`, `time`, `location`, `organizer_id`) VALUES
(1, 'Meet 2019', 'This is a meeting for students form major Computer Science, which graduate in 2019.', '2024-02-15', '19:00:00', 'NDK', 2);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `meeting_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meeting_type` varchar(99) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meeting_id`, `event_id`, `user_id`, `meeting_type`, `timestamp`) VALUES
(1, 1, 2, 'coffee', '2024-01-23 18:00:02');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL,
  `email` varchar(320) NOT NULL,
  `first_name` varchar(99) NOT NULL,
  `last_name` varchar(99) NOT NULL,
  `major` varchar(99) NOT NULL,
  `faculty_number` varchar(10) NOT NULL,
  `graduation` year(4) NOT NULL,
  `stream` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `first_name`, `last_name`, `major`, `faculty_number`, `graduation`, `stream`) VALUES
(1, 'tsanko84', 'tsanko82084', 'tsanko82084@gmail.com', 'Tsanko', 'Angelov', 'Computer Science', '82084', '2019', 0),
(2, 'stefani15', 'stefani82115', 'stefani82115@gmail.com', 'Stefani', 'Stefanova', 'Computer Science', '82115', '2019', 0),
(3, 'vasil29', 'vasil82129', 'vasil82129@gmail.com', 'Vasil', 'Todorov', 'Computer Science', '82129', '2020', 0),
(4, 'vasil4', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82133', '2020', 0),
(5, 'vasil5', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82134', '2020', 0),
(6, 'vasil6', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82135', '2020', 0),
(7, 'vasil7', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82136', '2020', 0),
(8, 'vasil8', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82137', '2020', 0),
(10, 'vasil9', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82138', '2020', 0),
(11, 'vasil10', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82139', '2020', 0),
(12, 'vasil11', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82140', '2020', 0),
(13, 'vasil12', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82141', '2020', 0),
(14, 'vasil13', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82142', '2020', 0),
(15, 'vasil14', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82143', '2020', 0),
(16, 'vasil15', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82144', '2020', 0),
(17, 'vasil16', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82145', '2020', 0),
(18, 'vasil17', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82146', '2020', 0),
(19, 'vasil18', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82147', '2020', 0),
(20, 'vasil19', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82148', '2020', 0),
(21, 'vasil20', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82149', '2020', 0),
(22, 'vasil21', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82150', '2020', 0),
(23, 'vasil22', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82151', '2020', 0),
(24, 'vasil23', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82152', '2020', 0),
(25, 'vasil3', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82132', '2020', 0),
(26, 'vasil2', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82131', '2020', 0),
(27, 'vasil1', 'todorov', 'vn@ko.com', 'Vasil', 'Todorov', 'Computer Science', '82130', '2020', 0),
(28, '???nono', '$2y$10$YIhz1X.gw8gtIAYDsTTK2.x9q2Ztoe/r3eEgCZr9PbRKXPkDt6SJC', 'jhhj@gf.com', 'Koko', 'Todo', 'kn', '1111', '2019', 1),
(30, 'Bob', '$2y$10$akJ2fdiB86ADAFJ5iSJQn.2Foqq4LmS8rGTyOtEmw6j/4O2SAdI86', 'jhhj@gf.com', 'Koko', 'Todo', 'kn', '11111', '2019', 1),
(31, 'Patric', '$2y$10$V5Wl/IrYo4kGfBZ5e4yRn.uPgPsXfm8fzI87hezWu9YDYTgMkLR3i', 'jhhj@gf.com', 'Koko', 'Todo', 'kn', '65311', '2019', 1),
(32, 'Tito', '$2y$10$cZsrzlvMaiODHmpyoenuE.LtbplI6jTstglNd7uhd5mtqGRgQeKdW', 'jhhj@gf.com', 'Koko', 'Todo', 'kn', '2222', '2019', 1),
(33, 'Popi', 'Tt1111', 'jhhj@gf.com', 'Koko', 'Todo', 'kn', '89385', '2019', 1),
(34, 'fgfhh', '12KJgfd4', 'jhhj@gf.com', 'Stfi', 'Todo', 'kn', '54543', '2019', 1),
(35, 'ighjklk', 'kidhLL90', 'koko@dd.com', 'Lolo', 'Pani', 'kn', '86345678', '2019', 1),
(36, 'gvgbigc', 'kidhLL90', 'koko@dd.com', 'Lolo', 'Pani', 'kn', '97290845', '2019', 1),
(37, 'username12', 'kidhLL90', 'koko@dd.com', 'Lolo', 'Pani', 'kn', '666', '2019', 1),
(38, '???', 'kidhLL90', 'koko@dd.com', 'Lolo', 'Pani', 'kn', '2321', '2019', 1),
(39, 'superman', 'kidhLL90', 'super@dd.com', 'Zman', 'Superhero', 'pm', '784220', '2021', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`connection_id`),
  ADD KEY `user id 1` (`user_id_1`),
  ADD KEY `user id 2` (`user_id_2`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `organizer id` (`organizer_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`meeting_id`),
  ADD KEY `event id` (`event_id`),
  ADD KEY `user id` (`user_id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`statistic_id`),
  ADD KEY `user stat id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculty number` (`faculty_number`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `user id 1` FOREIGN KEY (`user_id_1`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user id 2` FOREIGN KEY (`user_id_2`) REFERENCES `users` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `organizer id` FOREIGN KEY (`organizer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `event id` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  ADD CONSTRAINT `user id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `statistics`
--
ALTER TABLE `statistics`
  ADD CONSTRAINT `user stat id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
