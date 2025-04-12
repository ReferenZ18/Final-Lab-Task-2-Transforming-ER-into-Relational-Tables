-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 03:13 PM
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
-- Database: `submission_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignmenttbl`
--

CREATE TABLE `assignmenttbl` (
  `shortname` varchar(50) NOT NULL,
  `due_date` date NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studenttbl`
--

CREATE TABLE `studenttbl` (
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submissiontbl`
--

CREATE TABLE `submissiontbl` (
  `username` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `submit_date` date NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignmenttbl`
--
ALTER TABLE `assignmenttbl`
  ADD PRIMARY KEY (`shortname`);

--
-- Indexes for table `studenttbl`
--
ALTER TABLE `studenttbl`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `submissiontbl`
--
ALTER TABLE `submissiontbl`
  ADD KEY `username` (`username`),
  ADD KEY `shortname` (`shortname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `submissiontbl`
--
ALTER TABLE `submissiontbl`
  ADD CONSTRAINT `submissiontbl_ibfk_1` FOREIGN KEY (`username`) REFERENCES `studenttbl` (`username`),
  ADD CONSTRAINT `submissiontbl_ibfk_2` FOREIGN KEY (`shortname`) REFERENCES `assignmenttbl` (`shortname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
