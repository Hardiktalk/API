-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 06:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `version up`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `fees` int(11) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`c_id`, `c_name`, `description`, `fees`, `duration`, `created_at`, `updated_at`) VALUES
(2, 'Java Training', 'Version Up IT Institute provides the best java training in ahmedabad with live project training. Java training course include 100% Job', 25000, '3', '2022-09-09 07:01:25', '2022-09-09 07:01:25'),
(3, 'Digital Marketing', 'Digital Marketing Course in Ahmedabad – Looking to learn the best digital marketing course in Ahmedabad from the best Online marketing training institute? If yes then you are at the right place', 20000, '3', '2022-09-09 07:01:25', '2022-09-09 07:01:25'),
(4, 'Software Testing', 'Best Software Testing Training Classes in Ahmedabad and 100% Placement. We are providing Real Time Software Testing, Manual Testing, Latest QTP 12 version, UFT, LoadRunner, QC, Selenium Training, ETL Testing Course with Real Time scenarios', 18000, '3', '2022-09-09 07:01:25', '2022-09-09 07:01:25'),
(6, 'Hardik prajapati', '', 0, '', '2022-09-12 06:44:06', '2022-09-12 06:44:06'),
(7, 'Hardik prajapati', 'hello hardik', 5000, '5 month', '2022-09-12 06:45:46', '2022-09-12 06:45:46'),
(8, 'Hardik prajapati', 'hello hardik', 5000, '5 month', '2022-09-12 06:48:27', '2022-09-12 06:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `i_id` int(11) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`i_id`, `i_name`, `date`, `remark`, `phone`, `created_at`, `updated_at`, `course_id`) VALUES
(2, 'kishan patel', '2022-07-16', 'im intrested in java', '8866858446', '2022-09-09 07:11:37', '2022-09-09 07:11:37', 2),
(4, 'rishabh shah', '2022-03-15', 'im intrested ', '8866858498', '2022-09-09 07:11:37', '2022-09-09 07:11:37', 4);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adress` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `adharcard` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`r_id`, `r_name`, `email`, `adress`, `phone`, `adharcard`, `created_at`, `updated_at`) VALUES
(1, 'Hardik', 'hardik@gmai.com', 'ahmedabad', '8866858449', '1.jpg', '2022-09-09 07:19:13', '2022-09-09 07:19:13'),
(2, 'Nishan', 'nishan@gmai.com', 'mumbai', '8866858448', '2.jpg', '2022-09-09 07:19:13', '2022-09-09 07:19:13'),
(4, 'jignesh', 'jignesh@gmail.com', 'ahmedabad', '8866858448', '1.jpg', '2022-09-12 11:46:36', '2022-09-12 11:46:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`i_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `inquiry_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
